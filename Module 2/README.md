# Module 2 - Quantum Compilation

## Overview

While we used [Module 1](../Module%201/) as a beginner's introduction to some ideas which are fundamental to compilation (and if you feel shaky about topics like lexical analysis, syntax trees, or LLVM IR we highly recommend checking it out), the truth is that quantum computing poses many unique challenges which a discussion of classical computing is unable to shed much light on. Now that we're all acquainted with what a standard compilation pipeline looks like, which steps comprise it, and some of the challenges which motivate it, we will move on to explore how these can differ in the quantum space.

## Contents

This directory contains tutorials, explanations, and analyses centered around the Intermediate Representation (IR) for quantum programs. As a step towards understanding what would enable a Practical IR for Quantum, we experiment with current approaches and tools to see what works well and what is lacking. It is broken into four sections, which should be explored roughly in order.

## Structure

Quantum Compilation is complex in part due to the differing requirements and dependencies of each stage. Some steps are particular to certain design choices of the particular programming language and some can only be completed once information about a hardware backend is known. We impose a rough three layer structure - [Language Specific](1_Language_Specific_Phase_(LSP)), [Generic](2_Generic_Phase_(GP)), and [Target Specific Compilation](3_Target_Specific_Phase_(TSP)) - and provide examples and desired features of each.

> Important Note: The structure described in this module is an idealized one, and many of the tools which would make it a reality do not exist. Because of this, a gap exists between the high-level theoretical structure we are working towards and the practical examples and tutorials we are able to offer within this module. For example, we would hope that each phase's output would directly be inputted to the following phase, but that is not the case of our tutorials. We encourage the reader to view each example as designed to convey an idea, rather than a tutorial to be followed in the hopes of actually constructing a working compiler. Once standardized, quality tools have been built to enable each phase, they can be more easily linked together.


### 1. Language Specific Phase (LSP)

In this [first set of walkthroughs](1_Language_Specific_Phase_(LSP)), we review the earliest steps of compilation, where a program in a particular source language must be tokenized and parsed. We work through simple examples written using perhaps the most widely used quantum computing framework - [Qiskit](https://qiskit.org/). We use [OpenQASM 3](https://github.com/openqasm/openqasm), a popular and recently revamped Quantum Assembly Language, in tandem with a [qcor](https://qcor.ornl.gov/) tool in order to obtain LLVM and MLIR representations of a simple quantum circuit. We also give a brief tutorial on the use of [ANTLR4](https://www.antlr.org/), a helpful tool for general purpose parsing which can be easily adapted to build quantum parsers and ASTs.

> In our theoretical structure, some language-specific optimizations could be performed here, before or during AST-generation. For example, condensing a poorly implemented Qiskit circuit into a more efficient equivalent is very different from inlining Q# callables, but each of those is important before moving on. And, while we generate LLVM in order to provide some insight, in reality this phase would more likely output a tree-like structure more similar to what ANTLR4 produced, which would then be passed into the Generic Phase.

### 2. Generic Phase (GP)

The [next phase](2_Generic_Phase_(GP)) is *generic*, meaning the program should exist in an idealized, hardware and programming-language agnostic form. As of now, [QIR](https://devblogs.microsoft.com/qsharp/introducing-quantum-intermediate-representation-qir/) and OpenQASM 3 both have this sort of functionality. We explore what their respective capabilities are, and different areas in which they excel. We generate QIR from Q#, and hope in the future to enable a Q# --> OpenQASM 3 exporter in order to directly compare results.

> (Idea: Qiskit --> OpenQASM 3 vs. Qiskit --> Q# --> QIR using pytket?)

> This phase should accept tree-like structures from the LSP, and be able to funnel them into a standardized and agreed upon IR. In addition, optimizations can be performed on this IR, as long as they are a) desirable for ALL quantum programs, such that implementing them in the LSP would be inefficient and redundant across languages and b) independent of target data such as error rates, decoherence times, and qubit connectivity. For example, chains of single qubit gates can be combined into a single gate, or gates which cancel each other out can be removed.

### 3. Target Specific Phase (TSP)

Finally, it's inevitable that information about the quantum hardware must be taken into account during compilation. So, a final set of optimizations must be applied to the Generic IR from the phase before. In this phase, gates should be translated to a specific basis, more expensive or error prone gates may be optimized away, and physical qubit layout can be determined. As a demonstration, in [this section](3_Target_Specific_Phase_(TSP)) we focus heavily on Qiskit's transpiler and its built in optimization passes, with an eye towards showing how the transpiler can be customized for any use case. While we don't envision Qiskit being the IR of choice, its prebuilt library of transpilation passes is excellent and serves as a good testing ground.

We also delve into the optimizations offered by qcor's MLIR tool, and compare them in detail with those Qiskit is able to perform. While the qcor optimizations more properly belong in the LSP, as they seem to specifically optimize LLVM, we include them here for comparison against Qiskit.

> (In the future, we hope to investigate the optimizations qcor's quantum C++ compiler can perform, as well as add experimentation and tutorials on optimizations offered by pytket and the Q# compiler, and perhaps others)

> We envision this phase outputting either customized OpenQASM/QIR (i.e. written using a specific gate set or quantum instruction set), or otherwise lowering all the way down to the specific machine code which a backend is able to recognize.


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
