# Module 2 - Quantum Compilation

## Overview

While we used [Module 1](../Module%201/) as a beginner's introduction to some ideas which are fundamental to compilation (and if you feel shaky about topics like lexical analysis, syntax trees, or LLVM IR we highly recommend checking it out), the truth is that quantum computing poses many unique challenges which a discussion of classical computing is unable to shed much light on. Now that we're all acquainted with what a standard compilation pipeline looks like, which steps comprise it, and some of the challenges which motivate it, we will move on to explore how these can differ in the quantum space.

## Contents

This directory contains tutorials, explanations, and analyses centered around the Intermediate Representation (IR) for quantum programs. As a step towards understanding what would enable a Practical IR for Quantum, we experiment with current approaches and tools to see what works well and what is lacking. It is broken into five sections, which should be explored roughly in order.

### 1. Intro: Quantum Parsers and ASTs

In this [first set of walkthroughs](1_Intro_Quantum_Parsers_and_ASTs), we review the earliest steps of compilation, where a program in a particular source language must be tokenized and parsed. We work through simple examples written using perhaps the most widely used quantum computing framework - [Qiskit](https://qiskit.org/). We use [OpenQASM 3](https://github.com/openqasm/openqasm), a popular and recently revamped Quantum Assembly Language, in tandem with a [qcor](https://qcor.ornl.gov/) tool in order to obtain LLVM and MLIR representations of a simple quantum circuit. We also give a brief tutorial on the use of [ANTLR4](https://www.antlr.org/), a helpful tool for general purpose parsing which can be easily adapted to build quantum parsers and ASTs.

### 2. Transpilation and Optimization

The [next set of tutorials](2_Transpilation_and_Optimization) focuses on **fill in here from old README**

we focus heavily on Qiskit's transpiler and its built in optimization passes, with an eye towards showing how the transpiler can be customized for any use case. 

We also delve into the optimizations offered by qcor's MLIR tool, and compare them in detail with those Qiskit is able to perform.

> (In the future, we hope to investigate the optimizations qcor's quantum C++ compiler can perform, as well as add experimentation and tutorials on optimizations offered by pytket and the Q# compiler, and perhaps others)


### 3. IR Analysis

**Fill**

As of now, [QIR](https://devblogs.microsoft.com/qsharp/introducing-quantum-intermediate-representation-qir/) and OpenQASM 3 both have this sort of functionality. We explore what their respective capabilities are, and different areas in which they excel. We generate QIR from Q#, and hope in the future to enable a Q# --> OpenQASM 3 exporter in order to directly compare results.

> (Idea: Qiskit --> OpenQASM 3 vs. Qiskit --> Q# --> QIR using pytket?)

### 4. QHAL (Quantum Hardware Abstraction Layer) and Other Architectural Backends

As a first foray into the backend of compilation, in [this tutorial](4_QHAL_HAD_Backend) we configure our own simple hardware simulator with a specific geometry and basis gate set, and use the Qiskit transpiler in order to succesfully execute code on it.

In addition, because many of the most accessible tools and frameworks are implicitly built with an affinity for superconducting backends, our work up until now has displayed a distinct bias in that direction. In [this directory](4_QHAL_HAD_Backend/Other_Architectures/), we aim to balance the scale by generating QIR (as we did in the last tutorial) which is specifically targeted to an ion trap based backend, as well as using a Qiskit backend configured like an ion trap architecture. Finally, we have a tutorial for [Pennylane](https://pennylane.ai/), which runs on [Xanadu's photonic chips](https://xanadu.ai/photonics).

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
