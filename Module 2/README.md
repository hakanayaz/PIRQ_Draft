# Module 2 - Quantum Compilation

## Overview
While we used [Module 1](../Module%201/) as a beginner's introduction to some ideas which are fundamental to compilation, the truth is that quantum computing poses many unique challenges which a discussion of classical computing is unable to shed much light on. Now that we're all acquainted with a standard compilation pipeline, some of the steps which comprise it and some of the challenges which motivate it, we will move on to explore how these manifest themselves in the quantum space. 

## Contents

This directory contains tutorials, explanations, and analyses centered around the Intermediate Representation (IR) for quantum computers. As a step towards understanding what would make a Practical IR for Quantum, we experiment with current approaches and tools to see what works well and what is lacking.

### 1. Intro to Quantum Compilation

In this first set of walkthroughs, we work through simple examples written in perhaps the most widely used quantum computing language - Qiskit. We also use OpenQASM 3, a popular Quantum Assembly language, and use qcor to obtain LLVM and MLIR representations of each of them. We also give a brief tutorial on the use of ANTLR4, a helpful tool for general purpose parsing which can be easily adapted to build quantum parsers and ASTs.

### 2. Transpilation and Optimization

Next, we discuss a key element of any compilation pipeline which is exacerbated by quantum's unique limitations - optimization. We focus heavily on Qiskit's transpiler and its built in optimization passes, with an eye towards showing how the transpiler can be customized for any use case. To that end, we configure our own simple backend with a specific geometry and basis gate set, and use the transpiler in order to succesfully execute code on it. We also delve into the optimizations offered by qcor's MLIR tool, and compare them in detail with those Qiskit is able to perform.

(In the future, we may add experimentation and tutorials on optimizations offered by pytket and the Q# compiler, and perhaps others)

### 3. IR Analysis

Here, we investigate whether QIR and the recently released OpenQASM 3 can be considered as equally viable candidates for quantum IR, with an analysis of their roles and capabilities in a compilation ecosystem. We generate true QIR with Q# and the Q# compiler, and hope in the future to enable a Q# --> OpenQASM 3 exporter in order to directly compare results.

### 4. Other Architectures

Because many of the most accessible tools and frameworks are built around superconducting backends, our work up until now has displayed a distinct bias in that direction. We aim to balance the scale by generating QIR (as we did in the last tutorial) which is specifically targeted to an ion trap backend, as well as using a Qiskit backend configured like an ion trap architecture. Finally, we have a tutorial for Pennylane, which runs on photonic chips.

### WIP Section

This repository contains only a small fraction of the many interesting things we researched and experimented with. Some of the tools which may merit further exploration if we have more time to devote to them in the future include:

+ The Amazon Braket framework
+ Nvidia Cuda cuQuantum
+ Jaqal and Sandia's QSCOUT
+ Julia and YaoCompiler.jl

