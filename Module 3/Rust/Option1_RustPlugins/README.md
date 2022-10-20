# Using Rust Plugins for Split Compilation of Hybrid Quantum-Classical Algorithms

## General Ideas

Extend Rust Language with function-like quantum kernel support. The quantum kernels are lowered separately from the classical code(i.e. split compilation). In this case, the quantum kernels are made using rust plugins which are rust procedural macros. As noted in the rust compiler plugin website:

**Plugins can extend Rust's syntax in various ways. One kind of syntax extension is the procedural macro.** These are invoked the same way as ordinary macros, but the expansion is performed by arbitrary Rust code that manipulates syntax trees at compile time.

Three kinds of procedural macros:

1. Custom #[derive] macros that specify code added with the derive attribute used on structs and enums
2. Attribute-like macros that define custom attributes usable on any item
3. Function-like macros that look like function calls but operate on the tokens specified as their argument

According to our problem we will use procedural macros. While usinf procedural macros you can run code that manipulates Rust syntax, both consuming and creating Rust syntax, at build time using procedural macros. Procedural macros can be compared to functions from one AST to another. In the folder location you can see the procedural macros example.

## Resources

1. [Rust Macros - Declarative Macros and Procedural Macros](https://doc.rust-lang.org/book/ch19-06-macros.html)
2. [Rust Compiler Plugins](https://www.cs.brandeis.edu/~cs146a/rust/doc-02-21-2015/book/plugins.html)
3. [Rust Compiler Plugins - Alternative Link](https://itfanr.gitbooks.io/rust-doc-en/content/compiler-plugins.html)

    a. [More information of Rust Plugins](https://doc.rust-lang.org/unstable-book/language-features/plugin.html)

    b. [Article of Rust Plugins](https://nullderef.com/blog/plugin-start/) 

4. [Public Questions](https://umod.org/community/rust/31489-guide-to-create-a-plugin)
