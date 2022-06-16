# Newton-Raphson: C++ to IR

In this tutorial, we will focus on the Newton-Raphson algorithm written in C++ and create IR for the algorithm.

The sample code for the Newton-Raphson algorithm, written in C++, is given below:

```c++
#include<stdlib.h>
#include<iostream>
#include<vector>
#include<string>
#include<algorithm>
#define EPSILON 0.001

// Newton-Raphson Method for extended example of creation IR:
// The function is : (4/3)x^3 - (3/2)x^2 + 8
double function(double x)
{
    return (4/3)*x*x*x - (3/2)*x*x + 8;
}

// Derivative of the function
double derivedFunction(double x)
{
    return 4*x*x - 3*x;
}

// Root finding via Newton-Raphson
void newtonRaphson(double x)
{
    double h = function(x) / derivedFunction(x);
    while (abs(h) >= EPSILON)
    {
        h = function(x)/derivedFunction(x);
        // Iteration
        // x(i+1) = x(i) - f(x) / f'(x)
        x = x - h;
    }
    std::cout << "The value of the root is : " << x;
}

int main()
{
    double x0 = 5; // Initial value
    newtonRaphson(x0);
    return 0;
}
```

The [lexical analysis](newton_raphson_lexical_analysis.rst) and [AST](newton_raphson_ast.rst) generation steps should be fairly familiar by now, so we will jump into the IR. One thing to note is that `clang` will inline and then try to lexically analyze and parse the included libraries, leading to extremely long and uninstructive outputs. So, if you'd like to try this for yourself, we recommend commenting those libraries out (you unfortunately won't be able to write to `cout` or use `abs` while you're doing this, either).

Next, we create the LLVM IR with `clang` and link it[here](newton_raphson.ll), as it is too long to put here. This is mostly due to the included libraries.

## IR Result

The LLVM IR code version is too long, too cluttered, takes too much time to read, and is generally uninstructive. We will use `opt` to optimize this LLVM IR and attempt to solve these problems, while demonstrating one of the main uses of IR.

## Middle End "opt"

In compiler infrastructure, `opt` is a _middle-end_ phase, and it transforms LLVM IR according to numerous settings. `opt` is a command-line tool used for visualization, analysis, and optimization, and it can represent programs as `.dot` files. For more information on `opt`, check its [documentation](https://llvm.org/docs/CommandGuide/opt.html). We optimized the LLVM file using the command below:

```C
opt -S -mem2reg -instnamer newton_raphson.ll -o newton_raphson_opt.ll
```

*-S* tells `opt` to write its output in LLVM IR, rather than going straight to bitcode.

*-mem2reg* specifies a particular set of optimizations

After this optimization, the file size was reduced from 72kB to 22kB: you can see the results in the [newton_raphson_opt.ll](newton_raphson_opt.ll) file.

Now we will try to visualize this reduced IR. To visualize LLVM IR we will use these steps:

1. Create the _control flow graph_, which traces things such as function calls and conditionals

```c
opt -dot-cfg newton_raphson.ll
```

This code creates .dot files Some of these may be hidden: use `ls -la` in order to make sure you haven't missed any. 

2. We will convert the .dot files to .pdf files. To make this we will use this code

```c
dot -Tpdf .().dot -o newton_raphson.pdf
```

The tricky part of this process is after the `opt -dot-cfg` command produces many `(name).dot` file, so it may take a bit of experimentation before you find the highest level diagram. For our complete Newton Raphson program, the control flow graph is:

![Newton Raphson cfg result in C](newton_raphson_c.png)

This succeeds in giving as a clear high level grasp of the internal execution patterns without miring us down in complicated LLVM code. For example, the large T/F split clearly indicates a conditional, and the single upwards arrow shows us where the loop is and the elements of the cycle.

For more detailed explanations about LLVM's analysis and transformation passes you can use this link: [Analysis Passes - LLVM](https://releases.llvm.org/4.0.0/docs/Passes.html#introduction)
