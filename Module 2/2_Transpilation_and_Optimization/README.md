# 2. Transpilation and Optimization

Optimization is always important, but in quantum computing it is downright crucial. While classical optimization might conserve memory or speed up execution, it rarely has a direct effect on the correctness of an algorithm's results. In quantum computing, however, noise, error rates, and short decoherence times mean that optimizations can make a real difference between receiving a desired output and an unintelligible mix of garbage. Because of this, it must play a central role in any quantum compilation pipeline. Here, we experiment with several tools, although there are many more which are worth spending time with. Those are Qiskit transpiler and qcor optimizations.

## Qiskit Transpiler

We leverage Qiskit's [library of prebuilt transpiler passes](https://qiskit.org/documentation/apidoc/transpiler_passes.html) in order to demonstrate the complexity and value of quantum optimization. [This Jupyter notebook](Transpilation_Process_Gate_Optimization.ipynb) gives a detailed walkthrough of the transpilers capabilities, with DAG integration and result comparisons. In the Jupyter notebook, we will deep dive into the optimizer level and how these levels affect the solution and demonstration at some mock back ends.

## qcor Optimizations

The qcor-mlir-tool which was used in [previous examples](../1_Intro_Quantum_Parsers_and_ASTs/) offers optimizations as well, although of a different sort. [Here](2_qcor_Qiskit_Optimizations), we compare the optimizations performed by Qiskit with those offered by qcor's MLIR tool, each of which is important in its own right. That is analyzed in depth in the [qcor Qiskit Optimizations](2_qcor_Qiskit_Optimizations) directory.

## Future Plans

In the future, we hope to investigate the optimizations qcor's quantum C++ compiler can perform, as well as add experimentation and tutorials on optimizations offered by pytket and the Q# compiler, and perhaps others.
