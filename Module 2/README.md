# Module 2 - Quantum Compilation

## Overview
While we used [Module 1](../Module%201/) as a beginner's introduction to some ideas which are fundamental to compilation (and if you feel shaky about topics like lexical analysis, syntax trees, or LLVM IR we highly recommend checking it out), the truth is that quantum computing poses many unique challenges which a discussion of classical computing is unable to shed much light on. Now that we're all acquainted with what a standard compilation pipeline looks like, which steps comprise it, and some of the challenges which motivate it, we will move on to explore how these can differ in the quantum space. 

## Contents
The Module 2 directory contains tutorials, explanations, and analyses centered around Intermediate Representation (IR) for fairly simple quantum programs. As a step towards understanding what would enable a Practical IR for Quantum, we experiment with current approaches and tools to see what works well and what is lacking. This module broken into five sections, which should be explored roughly in order:

### 1. Intro: Quantum Parsers and ASTs

In this [first set of walkthroughs](1_Intro_Quantum_Parsers_and_ASTs), we work through simple examples written using perhaps the most widely used quantum computing framework - [Qiskit](https://qiskit.org/). We use [OpenQASM 3](https://github.com/openqasm/openqasm), a popular and recently revamped Quantum Assembly Language, in tandem with a [qcor](https://qcor.ornl.gov/) tool in order to obtain LLVM and MLIR representations of a simple quantum circuit. We also give a brief tutorial on the use of [ANTLR4](https://www.antlr.org/), a helpful tool for general purpose parsing which can be easily adapted to build quantum parsers and ASTs.

### 2. Transpilation and Optimization

Next, we discuss a key element of compilation which is exacerbated by quantum's unique limitations - optimization. In [this set of tutorials](2_Transpilation_and_Optimization), we focus heavily on Qiskit's transpiler and its built in optimization passes, with an eye towards showing how the transpiler can be customized for any use case. We also delve into the optimizations offered by qcor's MLIR tool, and compare them in detail with those Qiskit is able to perform. 

> (In the future, we hope to investigate the optimizations qcor's quantum C++ compiler can perform, as well as add experimentation and tutorials on optimizations offered by pytket and the Q# compiler, and perhaps others)

### 3. IR Analysis

[Here](3_IR_Analysis), we investigate whether [QIR](https://devblogs.microsoft.com/qsharp/introducing-quantum-intermediate-representation-qir/) and the recently released OpenQASM 3 can be considered to be equally viable candidates for quantum IR, with a detailed analysis of their respective roles and capabilities in a compilation ecosystem. We generate QIR from Q#, and hope in the future to enable a Q# --> OpenQASM 3 exporter in order to directly compare results.

> (Idea: Qiskit --> OpenQASM 3 vs. Qiskit --> Q# --> QIR using pytket?)

### 4. Other Architectures

Because many of the most accessible tools and frameworks are implicitly built with an affinity for superconducting backends, our work up until now has displayed a distinct bias in that direction. In [this section](4_Other_Architectures), we aim to balance the scale by generating QIR (as we did in the last tutorial) which is specifically targeted to an ion trap based backend, as well as using a Qiskit backend configured like an ion trap architecture. Finally, we have a tutorial for [Pennylane](https://pennylane.ai/), which runs on [Xanadu's photonic chips](https://xanadu.ai/photonics).

### 5. QHAL (Quantum Hardware Abstraction Layer)

As a first foray into the backend of compilation, in [this tutorial](5_QHAL_HAD_Backend) we configure our own simple hardware simulator with a specific geometry and basis gate set, and use the Qiskit transpiler in order to succesfully execute code on it.

> (WIP: Hopefully write our own layout designer - very simple, and very specialized for B-V on the front and HAD on the back)

### WIP Section

This repository contains only a small fraction of the many interesting things we researched and experimented with. Some of the tools which may merit further exploration if we have more time to devote to them in the future include:

+ The [Amazon Braket](https://aws.amazon.com/braket/) framework
+ [Nvidia Cuda cuQuantum](https://docs.nvidia.com/cuda/cuquantum/index.html)
+ Sandia's [Jaqal](https://www.sandia.gov/quantum/quantum-information-sciences/projects/qscout-jaqal/) and [QSCOUT](https://www.sandia.gov/quantum/quantum-information-sciences/projects/qscout/)
+ Julia, with [YaoCompiler.jl](https://docs.juliahub.com/YaoCompiler/sOP81/0.2.0/)

### Contributors

The HAD team:

+ Hakan Ayaz
+ Adin Gitig
+ Daniel Mendez