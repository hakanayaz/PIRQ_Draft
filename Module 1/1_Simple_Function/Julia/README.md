# Julia Tutorial

In this tutorial, we will start with a code sample written in `Julia` and translate it into LLVM IR. We will end up with a human readable LLVM IR (.ll) file which is equivalent to our original code. To begin, we first discuss how to install and run Julia

## How to Run Julia Program

You can run Julia many ways. We will be integrating Julia into a Jupyter notebook.

First, download and install Julia. Use [this link](https://julialang.org/downloads/) to download according to your operation system.

Next, open the Julia command line and add a Jupyter notebook with:

```julia
using Pkg
```

and then use this command to add Julia to Jupyter notebook:

```julia
Pkg.add("IJulia")
```

You will also need Anaconda which can be downloaded [here](https://www.anaconda.com/products/distribution).

Now, we are able to add Julia into Jupyter notebook.

## Example Code

Our sample code will be the same algorithm we've used in the other examples. In Julia, this algorithm will be:

```julia
function f(a,b)
    x = a
    if a>b
        x+=20
    else
        x+=b
    end
    return x
end
```

As always, the first step of compilation is Lexical Analysis.

## Lexical Analysis

We will use the `Tokenize` package to analyze our code. We can install this package like so:

```julia
using Pkg
Pkg.add("tokenize")
```

Then we can use this code to see the token stream outputted by lexical analysis.

```julia
collect(tokenize("function f(a,b)
    x = a
    if a>b
        x+=20
    else
        x+=b
    end
    return x
end"))
```

This outputs the following token stream:

```julia
39-element Vector{Tokenize.Tokens.Token}:
 1,1-1,8          KEYWORD        "function"
 1,9-1,9          WHITESPACE     " "
 1,10-1,10        IDENTIFIER     "f"
 1,11-1,11        LPAREN         "("
 1,12-1,12        IDENTIFIER     "a"
 1,13-1,13        COMMA          ","
 1,14-1,14        IDENTIFIER     "b"
 1,15-1,15        RPAREN         ")"
 1,16-2,4         WHITESPACE     "\n    "
 2,5-2,5          IDENTIFIER     "x"
 2,6-2,6          WHITESPACE     " "
 2,7-2,7          OP             "="
 2,8-2,8          WHITESPACE     " "
 ⋮
 6,9-6,9          IDENTIFIER     "x"
 6,10-6,11        OP             "+="
 6,12-6,12        IDENTIFIER     "b"
 6,13-7,4         WHITESPACE     "\n    "
 7,5-7,7          KEYWORD        "end"
 7,8-8,4          WHITESPACE     "\n    "
 8,5-8,10         KEYWORD        "return"
 8,11-8,11        WHITESPACE     " "
 8,12-8,12        IDENTIFIER     "x"
 8,13-9,0         WHITESPACE     "\n"
 9,1-9,3          KEYWORD        "end"
 9,4-9,3          ENDMARKER      ""
 ```

All of these tokens are easily visible in our original code.

## Abstract Syntax Tree (AST)

To create AST we will use dump function give below:

```julia
dump(:(function f(a,b)
    x = a
    if a>b
        x+=20
    else
        x+=b
    end
    return x
end))
```

As a result of this comment we will get the AST representation of the example code which is shown below.

```julia
Expr
  head: Symbol function
  args: Array{Any}((2,))
    1: Expr
      head: Symbol call
      args: Array{Any}((3,))
        1: Symbol f
        2: Symbol a
        3: Symbol b
    2: Expr
      head: Symbol block
      args: Array{Any}((7,))
        1: LineNumberNode
          line: Int64 1
          file: Symbol In[20]
        2: LineNumberNode
          line: Int64 2
          file: Symbol In[20]
        3: Expr
          head: Symbol =
          args: Array{Any}((2,))
            1: Symbol x
            2: Symbol a
        4: LineNumberNode
          line: Int64 3
          file: Symbol In[20]
        5: Expr
          head: Symbol if
          args: Array{Any}((3,))
            1: Expr
              head: Symbol call
              args: Array{Any}((3,))
                1: Symbol >
                2: Symbol a
                3: Symbol b
            2: Expr
              head: Symbol block
              args: Array{Any}((2,))
                1: LineNumberNode
                2: Expr
            3: Expr
              head: Symbol block
              args: Array{Any}((2,))
                1: LineNumberNode
                2: Expr
        6: LineNumberNode
          line: Int64 8
          file: Symbol In[20]
        7: Expr
          head: Symbol return
          args: Array{Any}((1,))
            1: Symbol x
```

As seen in the results Julia AST is long but quite intuitive to read. As a next step we will produce intermediate representation.

For the extra information you can use this link: [Julia ASTs](https://julia-doc.readthedocs.io/en/latest/devdocs/ast/)

## Intermediate Representation

Next step is the creating the LLVM IR. For creating LLVM-IR we will use this line if code that dumps the LLVM-IR version of the example code.

```Julia
@code_llvm f(3,4)
```

Only thing while using this code is you need to run the example code ones before then use some numbers to program work through. That's why we used f function with two input values. Here is the LLVM IR result:

```Julia
;  @ In[30]:1 within `f`
define i64 @julia_f_3043(i64 signext %0, i64 signext %1) #0 {
top:
;  @ In[30]:3 within `f`
; ┌ @ operators.jl:382 within `>`
; │┌ @ int.jl:83 within `<`
    %.not = icmp slt i64 %1, %0
; └└
  %value_phi.v = select i1 %.not, i64 20, i64 %1
  %value_phi = add i64 %value_phi.v, %0
;  @ In[30]:8 within `f`
  ret i64 %value_phi
}
```

As seen in the results LLVM-IR version of the Julia is a little bit more optimize and easier to read compared to the other languages LLVM IR results.

## Visualization of the IR

To visualize the IR we will use the "ShowCode" package because its easy to represent. To install the package from github you need to use this command given below:

```Julia
pkg"add https://github.com/tkf/ShowCode.jl"
```

For the LLVM IR results with ShowCode we can use these commands and create valid IR:

```julia
c = @sc_llvm f(args...)

c                  # view IR in the REPL
display(c)         # (ditto)
edit(c)            # open the IR in editor
print(c)           # print the IR
abspath(c)         # file path to the text containing the IR

c.native           # create native code explore
c.att              # (ditto)
c.intel            # create native code explore in intel syntax
eidt(c.native)
abspath(c.native)

c.cfg              # control-flow graph (CFG) visualizer
display(c.cfg)     # display CFG
edit(c.cfg.png)    # open PNG file in your editor
edit(c.cfg.svg)    # same for SVG
abspath(c.cfg.png) # file path to the PNG image
c.cfg_only
c.dom
```

Visualization is done but I couldn't find a way to export the results. Thats why it will be add soon.
