# Qiskit Tutorials

We give two tutorials in Qiskit. We leverage different tools and consider algorithms of different complexity, so both are worthwhile.

## 1. Generating Bell States

The [first example](1_Bell_States/README.md) reviews a simple Bell State entangler. We use the ANTLR4 tool and treat the Qiskit code as raw Python (i.e. we parse with a `Python3.g4` file). Then, we generate LLVM with Numba. While this **does** work, it uses classical tools (such as ANTLR and Numba) on quantum code, meaning some details are inadequately captured.

## 2. Bernstein Vazirani

Next, we move onto the slightly more complex algorithm we'll be returning to through the rest of this Module - Bernstein Vazirani. Over the course of [a Jupyter notebook](2_Bernstein_Vazirani/Qiskit_to_LLVM.ipynb), we explore a different pipeline for lowering Qiskit code to LLVM. This time, we use quantum-specific tools, namely Qiskit's built in dumping mechanism to OpenQASM3 and qcor's MLIR tool.