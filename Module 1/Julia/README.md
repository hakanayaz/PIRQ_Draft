# Julia Tutorial

In this tutorial, we will start with a code sample written in `Julia` and translate it into LLVM IR. We will end up with a human readable LLVM IR (.ll) file which is equivalent to our original code. To begin, we first discuss how to install and run Julia

## How to Run Julia Program

You can run Julia many ways. We will be integrating Julia into a Jupyter notebook.

First, download and install Julia. Use this link to download according to your operation system. [Julia](https://julialang.org/downloads/)

Next, open the Julia command line and add a Jupyter notebook with:

```julia
using Pkg
```

and then use this command to add Julia to Jupyter notebook:

```julia
Pkg.add("IJulia")
```

You will also need Anaconda which can be downloaded here. [Anaconda](https://www.anaconda.com/products/distribution)

Now, we are able to add Julia into Jupyter notebook.

## Example Code

Our sample code will be the same Newton Iteration algorithm we've used in the other examples. In Julia, this algorithm will be:

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
