# Using Rust Macros for Split Compilation of Hybrid Quantum-Classical Algorithms

## General Ideas
Extend Rust Language with function-like quantum kernel support. The quantum kernels are lowered separately from the classical code( i.e. split compilation ). In this case, the **quantum kernels are made using rust declarative macros** ( i.e. There are also procedural macros which are called rust compiler plugins. These are mentioned in option 1 ).

**WORK IN PROGRESS . . .**

## Running Code
The rust source file is located at **/src/main.rs**

We are using the Rust Cargo ecosystem. For more information please click **[HERE](https://doc.rust-lang.org/cargo/getting-started/first-steps.html)**.


Compile Command: `cargo build`

Run Executable: `./target/debug/quantum_kernel_macr`

Compile and Run: `cargo run`

To get LLVM file you must be using the rust nightly compiler (i.e. as mentioned in moduel 1). 

`rustc --emit=llvm-ir src/main.rs`

Note: See if you can find our user defined macro, `quantum_kernel_circuit` in the llvm file at `src/main.ll`

## Resources
1. [Rust Macros - Declarative Macros and Procedural Macros](https://doc.rust-lang.org/book/ch19-06-macros.html) 
2. [Rust Macros - General Information](https://www.cs.brandeis.edu/~cs146a/rust/doc-02-21-2015/book/macros.html)
3. [Rust Macros - Advanced](https://www.cs.brandeis.edu/~cs146a/rust/doc-02-21-2015/book/advanced-macros.html) 
4. [Rust Macros - Syntax Extensions Section 4](https://www.cs.brandeis.edu/~cs146a/rust/doc-02-21-2015/reference.html#macros)
5. [Public Questions](https://umod.org/community/rust/31489-guide-to-create-a-plugin)