# Module 1 - Classical Compilation

Module 1 walks through the compilation process for classical computers, and demonstrates how high-level programming languages (in particular C/C++, Rust, Julia, and Python) can be translated into LLVM intermediate representation (IR). We chose these languages because they are prevalent in the quantum computing space. On the other hand, due to the interoperable nature of LLVM, we can widen the scope of these examples with nearly any given programming languages.

We give a series of tutorials, intended to explore various high level constructs and the steps involved in lowering them to IR.

1. Our first [tutorial set](1_Simple_Function), `1_Simple_Function` gives an introduction to the frontend of the compilation process, starting from a very simple function and ending with the LLVM IR corresponding to it.
2. In the `More_Examples` directory, our [second set of tutorials](More_Examples/2_Newton_Raphson/) takes a more in depth look at how IR expresses high-level constructs such as conditionals, loops, and function calls in `2_Newton_Raphson`. We also introduce alternative ways of visualizing dense IR files.
3. finally, our [third tutorial set](More_Examples/3_Object_Oriented_Example/) `3_Object_Oriented_Example` (also located in `More_Examples` demonstrates the ability of IR to strip away layers of abstraction such as classes and methods and express them at a low level.

## Intermediate Representation - What is it?

Any compilers goal, at the most basic level, is to take a program written in a _source_ language A (often a high-level language, such as C/C++ or Javascript) and translate it into a _target_ language B (often code which is executable by a computer, and completely non-readable for humans).

_Intermediate Representation_ (IR) is a representation compilers often use between the source and target languages. IR can be thought of as the internal data structure used by compilers or virtual machines to represent source code. There are many forms of IR - in fact, compilation can be thought of as a series of steps which translate from one form of IR to another. However, when we refer to "IR", in most contexts we refer to the ubiquitous LLVM IR, a standard form which nearly all compilers and languages have support for. It is part of the widely used [LLVM compiler toolchain](https://llvm.org/). 

The benefits of IR are that it:
- Provides a standardized platform to bridge diverse targets and sources, and allows re-use in compiler machinery (by allowing mix-and-matching of front and back ends).
- Allows for efficient code transformation, analysis, and optimization, regardless of the original language it was written in.
- Captures high level programming constructs in low level expressions. These are human-readable while also giving a clear idea of how a machine would actually go about executing a code snippet.

## Compilation Frontend

Drawing on the notorious "Dragon Book", any compiler has some general phases by which source code is translated into the target language. These phases can be broadly grouped into _analysis_, known as the frontend of a compiler, and _synthesis_, or the backend. Analysis extracts meaningful metadata and imposes structure on input code. Then, synthesis uses the information gathered in order to output an equivalent program written in the target language. Here, we will only trace compilation steps up until the generation of IR, which occurs at the very end of the analysis phase.

These steps are:

### Lexical (Scanning) Analysis

Lexical analysis is the first phase of the compiler. It reads the input code as a raw character stream and creates a sequence of meaningful units, called _tokens_ or _lexemes_. For example, it would separate `int num = 7;` into the tokens `int` (a type token), `num` (an _identifier_, usually a user defined string which is a variable or function name), `=` (an operator token), `7` (a number or digit token), and `;` (a punctuation token).
Its output is a token stream, which is used in the next step:

### Syntax (Parsing) Analysis

Syntax analysis makes a tree-like IR known as an _Abstract Syntax Tree_ (AST) from the tokens it receives. It imposes structure on these tokens according to the _grammar_, or linguistic rules and formulations, allowed by the source language, and ensures it is syntactically sound. The AST is utilized in:

### Semantic (Syntax tree) Analysis

This part of the analysis uses the previous step's syntax tree information to gather all the information helpful during IR generation. Rather than grammatical structure, it is concerned with the actual content (semantics) of the code. Finally, analysis wraps up and synthesis can be said to begin, with:

### Intermediate Code Generator (IR representation)

Before translating into the final target language, compilers will generate a low-level machine-like IR, such as LLVM IR. This IR is then used in several steps of synthesis, such as:

+ Machine-Independent Code Optimization (IR representation)
+ Code Generation (target-machine code)
+ Machine-Dependent Code Optimization (target-machine code)

Our goal in Module 1 is to write programs in several different high-level languages and create equivalent LLVM IR representations, while providing insight into how these representations are reached.
