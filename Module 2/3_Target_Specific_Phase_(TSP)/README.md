# 3. Target Specific Phase (TSP)

In this section, we explore compilation steps which must be done with knowledge of the backend. First and foremost among these is hardware specific optimization, which can have a large inpact on the accuracy of results.

## Qiskit Transpiler

We leverage Qiskit's [library of prebuilt transpiler passes](https://qiskit.org/documentation/apidoc/transpiler_passes.html) and the ability to build a custom PassManager in order to demonstrate the complexity and value of this step. [This Jupyter notebook](Transpilation_Process_Gate_Optimization.ipynb) gives a detailed walkthrough of the transpilers capabilities, with DAG integration and result comparisons.

## qcor Optimizations

We also compare the optimizations performed by Qiskit with those offered by qcor's MLIR tool. That is analyzed in depth in the [qcor vs. Qiskit](qcor_vs_qiskit) directory.