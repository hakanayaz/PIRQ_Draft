# Module 1

Module 1 walks through the classical computer compilation process and demonstrates how high-level programming languages (in particular C/C++, Rust, and Python) can be translated into LLVM intermediate representation (IR). The primary purpose of the LLVM IR is to interoperable with all other languages as well as any architectural backends. We chose these three high-level languages because they are prevalent in the quantum computing industry space. On the other hand, we can increase the example with the different programming languages.

## Intermediate Representation

Any compilers goal, at the most basic level, is to take a program written in a "source" language A (often a high-level language, such as C/C++ or Javascript) and translate it into a "target" language B (often code which is executable by a computer, and completely non-readable for humans).

Intermediate Representation (IR) is a representation compilers often use between the source and target languages. IR can be thought of as the data structure used by compilers or virtual machines to represent source code.

Another way of designing the IR is by creating independent source and target languages that the compiler could use to build the compiler's family.

The benefits of IR are that it:
- Provides a customary platform to share across targets and sources and allows re-use in compiler machinery.
- Allows for efficient code transformation, analysis, and optimization, regardless of the original language it was written in.
- Can express high level constructs in low level expressions which are human-readable while also giving a clear idea of how a machine would actually go about executing a code snippet.

Drawing on the notorious "Dragon Book", any compiler has some general steps or "phases" which allow translation from source to target. These are:

### Lexical (Scanning) Analysis

Lexical analysis is the first phase of the compilers, which reads the characters' stream and creates meaningful sequences. It's output is a token stream, which it then passes to the...

### Syntax (Parsing) Analysis

Parsers are the first part of the token created by linguistic analysis. Syntax analysis makes a tree-like IR known as an Abstract Syntax Tree (AST), which covers the grammatical structure of the source code and ensures it is syntactically sound.
 The AST is passed to the...

### Sematic (Syntax tree) Analyzer

This part of the analysis uses the previous step's syntax tree information to gather all the information helpful during the IR generation. Rather than grammatical structure, it is concerned with the actual content (semantics) of the code.

### Intermadiate Code Generator (IR representation)

All of the steps above can be broadly grouped as the "analysis" part of compilation, known as the "front-end" of a compiler. In order to complete translation to the target language, a compiler "back-end" would use the information gathered during analysis in order to perform a series of steps which are known as "synthesis", which would output a program written in the target language which is equivalent to the input program. However, before performing synthesis, compilers will generate a low-level machine-like IR, such as LLVM IR. This IR is then used in:

+ Machine-Independent Code Optimizer (IR representation)
+ Code Generator (target-machine code)
+ Machine-Dependent Code Optimizer (target-machine code)

Our goal in Module 1 is to use different high-level languages and create exact LLVM IR representations. Each high-level language has a tutorial for reaching the intermediate representation, and the compilation step will give more specific explanations with related programming languages.
