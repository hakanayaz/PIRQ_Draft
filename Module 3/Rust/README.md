# Goal: Demonstrate Quantum-Classical Hybrid compilation using Rust

## How?
Extend classical languages for function-like quantum kernel support
Rust: Extend Rust with a library based extension which allows for split compilation. The split takes function-like quantum kernels from the classical code and is lowered separately from the classical code. The classical code is rewritten to invoke some external function that can be generated.

1. Extend the parser.
2. Get the tokens for the quantum kernel you’ve written in rust. If it is openqasm3 then can pass to QCOR MLIR tool. This would give object code or QIR code.
3. Compile phase redirects the function to not call what it was going to call, but instead call this quantum kernel function.

These are two potential options to allow for split compilation of a hybrid Quantum-Classical algorithm written in Rust.

1. **Option1_ANTLR**
2. **Option2_RustPlugins**

