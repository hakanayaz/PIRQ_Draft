# Simple Function: Julia to IR

In this tutorial, we will start with a code sample written in `Julia` and translate it into LLVM IR. We will end up with a human readable LLVM IR (.ll) file which is equivalent to our original code. To begin, we first discuss how to install and run Julia.

## Julia: Jupyter Notebook Integration

You can run Julia many ways. We will be integrating Julia into a Jupyter notebook.

First, download and install Julia. Use [this link](https://julialang.org/downloads/) to download according to your operating system.

Next, open the Julia command line and add Jupyter notebook compatibility with:

```julia
using Pkg
Pkg.add("IJulia")
```

You will also need Anaconda which can be downloaded [here](https://www.anaconda.com/products/distribution).

Now, we are able to run Julia in a our [f.ipynb](f.ipynb) Jupyter notebook, where we will continue the tutorial.