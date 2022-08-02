# 1. Intro: Quantum Parsers and ASTs

This section has considerable overlap with the tutorials in [Module 1](../../Module%201/). It focuses primarily on the standard steps of lexical and syntactical analysis which, we explored in depth in the previous module, and serves to ease the reader in to the quantum space using these familiar phases.

## OpenQASM 3

We begin with [an example in OpenQASM](OpenQASM), which can be thought of as slightly more downstream (and therefore closer to IR) than declarative Python frameworks like Qiskit. We give a brief tutorial on the use of the [ANTLR4](https://www.antlr.org/) tool for lexical and syntactical analysis, generating a parse tree visualization. ANTLR4 tool is going to so usefull at the future modules. Finally, we use the qcor tool for LLVM lowering.

## Qiskit

Many users may be more familiar with Qiskit, the high level Python toolkit. We provide [similar tutorials using Qiskit](Qiskit), which also serve to illustrate how compilation can be extended to higher levels of abstraction. At that section there are two example to explain parsers and AST's.

## Takeaways

As might be expected, the lexical and syntactical steps, which by their very nature don't care (or even know anything about) the content of a program, are fairly unchanged between classical and quantum compilation. Besides for some new quantum operations that need designated keywords to support them, this introductory section could almost belong in Module 1. Next, we will begin looking into a topic which, while relevant in classical compilation, is exarcebated by uniquely quantum constraints: [optimization and error mitigation](../2_Transpilation_and_Optimization/).
