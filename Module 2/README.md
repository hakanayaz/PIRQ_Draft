# Module 2 - Quantum Compilation

## Overview

[Module 1](../Module%201/) served as an introduction to some ideas which are fundamental to compilation, familiarizing readers with topics like lexical analysis, syntax trees, and LLVM IR. However, quantum computing poses many unique challenges which a discussion of classical computing is unable to shed much light on. With a working familiarity of what a standard compilation pipeline looks like, which rough steps comprise it, and some of the challenges which motivate it, we now move on to explore how things differ in the quantum space.

## Contents

This directory contains tutorials, and explanations centered around the Intermediate Representation (IR) for quantum programs. As a step towards understanding what would enable a Practical IR for Quantum, we experiment with current approaches and tools to see what works well and what seems to be lacking. The module is broken into five sections, which should be explored roughly in order.

### 1. Intro: Quantum Parsers and ASTs

In this [first set of walkthroughs](1_Intro_Quantum_Parsers_and_ASTs), we review the earliest steps of compilation, where a program in a particular source language must be tokenized and parsed. We work through simple examples written using [Qiskit](https://qiskit.org/) as well as [OpenQASM 3](https://github.com/openqasm/openqasm). MLIR and LLVM representations of a simple quantum circuit are generated with a [qcor](https://qcor.ornl.gov/) tool. It also contains a brief tutorial on the use of [ANTLR4](https://www.antlr.org/), a helpful tool for general purpose parsing which can be easily adapted to build quantum parsers and ASTs.

### 2. Transpilation and Optimization

Next, we discuss a key element of compilation which is exacerbated by quantum's unique limitations - optimization. In [this set of tutorials](2_Transpilation_and_Optimization), we focus heavily on Qiskit's transpiler and its built in optimization passes. We also delve into the optimizations offered by qcor's MLIR tool and compare them in detail with those Qiskit is able to perform in the hopes of capturing two different, but both important, aspects of optimization.

> (In the future, we hope to investigate the optimizations qcor's quantum C++ compiler can perform, as well as add experimentation and tutorials on optimizations offered by pytket and the Q# compiler)

### 3. IR Analysis

In [this submodule](3_IR_Analysis), we pause to review features and design choices of two widely used quantum representations: [QIR](https://devblogs.microsoft.com/qsharp/introducing-quantum-intermediate-representation-qir/) and OpenQASM 3. We explore what their respective capabilities are, with the aim of identifying general desirable attributes in a PIRQ. We generate QIR from Q#, and hope in the future to enable a Q# --> OpenQASM 3 exporter in order to directly compare results.

> (Idea: Qiskit --> OpenQASM 3 vs. Qiskit --> Q# --> QIR using pytket?)

### 4. Other Architectures

In [the fourth section](4_Other_Architectures), a point is made to consider differing characteristics of various architectures, namely by generating QIR (as we did in the last tutorial) which is specifically targeted to an ion trap based backend, as well as using a Qiskit backend configured like an ion trap architecture and generating LLVM. Finally, we have a tutorial for [Pennylane](https://pennylane.ai/), which runs on [Xanadu's photonic chips](https://xanadu.ai/photonics).

### 5. Quantum Hardware Abstraction Layer (QHAL): HAD Backend

Finally, in [this tutorial](5_QHAL_HAD_Backend) we configure our own simple hardware simulator with a specific geometry and basis gate set, and use the Qiskit transpiler in order to succesfully execute code on it.

> (WIP: Hopefully write our own layout designer - very simple, and very specialized for B-V on the front and HAD on the back)

### 5. WIP Section

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
