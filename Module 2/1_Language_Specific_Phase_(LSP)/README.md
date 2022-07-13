# 1. Intro: Quantum Parsers and ASTs

This section has considerable overlap with the tutorials in [Module 1](../../Module%201/). It focuses primarily on the standard steps of lexical and syntactical analysis which we explored in depth in the previous module, and serves to ease the reader in to the quantum space using these familiar phases.

## OpenQASM 3

We begin with [an example in OpenQASM](OpenQASM), which can be thought of as slightly more downstream (and therefore closer to IR) than declarative Python frameworks like Qiskit. We give a brief tutorial on the use of the [ANTLR4](https://www.antlr.org/) tool for lexical and syntactical analysis, generating a nice parse tree visualization. Finally, we use the qcor tool for LLVM lowering.

## Qiskit

Many users may be more familiar with Qiskit, the high level Python toolkit. To that end, as well as to illustrate how compilation can be extended to higher and higher levels of abstraction, we provide [similar tutorials using Qiskit](Qiskit), treating it as raw Python.

## Takeaways

As might be expected, the surface level lexical and syntax steps (which by their very nature don't care  or even know anything about the content of a program) are pretty unchanged between classical and quantum compilation. Besides for some new quantum operations that need designated keywords to support them, this introductory section should feel pretty similar to Module 1. Next up, we will begin looking into a topic which is far more relevant to quantum than it is to classic computing: [optimization and error mitigation](../2_Transpilation_and_Optimization/).
