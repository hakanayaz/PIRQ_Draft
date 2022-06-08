# Julia Tutorials

In this tutorial we will start with an example code and create LLVM IR using `Julia`. As a final document, we will create human readable LLVM IR (.ll) file. First we will mentiond about the installation

## How to Run Julia Program

You can run Julia many way but in this tutorils we will show how to add Julia to Jupyter notebook.

As a first step you have to download and install the Julia and you can use this link to download according to your operation system. [Julia](https://julialang.org/downloads/)

Second step open Julia command line and add Jupyter notebook with using:

```julia
using Pkg
```

and then use this commend to add Julia to Jupyter notebook:

```julia
Pkg.add("IJulia")
```

After this step you have to have a anaconda, if not you can use this link to download and install the Anaconda. [Anaconda](https://www.anaconda.com/products/distribution)

Then we could be able to add Julia into Jupyter notebook.

## Example Code

As an example algorithm we will use the algorithm that we used before. For the julia this algorithm will be:

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

As a first step of the compilation we will start wiht the lexical analysis.

## Lexical Analysis

To run the Lexical analysis we will use Tokenize package. To install `Tokanize` package we need to install using this comment:

```julia
using Pkg
Pkg.add("tokenize")
```

Then we can use this code to see the lexical analysis result:

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

Output of this commend will be the results of the lexical analysis;

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

As seen in the Lexical anaylsis results we can see the tokens in our algorithm.
