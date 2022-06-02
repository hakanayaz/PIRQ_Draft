# Module 1

Module 1 is about the classical computer compilation process and will use C/C++, Rust, and Python high-level programming languages to create LLVM intermediate representation (IR). The primary purpose of the LLVM IR is to interoperable with all other languages. We chose these three high-level languages because, in Quantum, companies are using these three languages primarily. On the other hand, we can increase the example with the different programming languages.

## Intermadiate Representation

Intermediate representation (IR) is the representation between source and target languages. Another way of saying IR is the data structure or code used by compilers or virtual machines to represent source code.

Another way of designing the IR is by creating independent source and target languages that the compiler could use to build the compiler's family.

Intermediate representation provides a customary platform to share across targets and sources and allows re-use in compiler machinery.

Phases of the compiler have some general steps according to Dragon book and until target machine code which are:

+ **Lexical (Scanning) Analysis (token stream)**

Lexical analysis is the first phase of the compilers, which reads the characters' stream and creates meaningful sequences.

+ **Syntax (Parsing) Analysis (syntax tree)**

Parsers are the first part of the token created by linguistic analysis. Syntax analysis makes tree-like IR, which covers the grammar structure of the token.

+ **Sematic (Syntax tree) Analyzer**

This part of the analysis uses the previous step's syntax tree information to gather all the information helpful during the IR generation.

+ **Intermadiate Code Generator (IR representation)**

After all the steps mentioned, this step generates a low-level machine-like IR.

+ **Machine-Independent Code Optimizer (IR representation)**
+ **Code Generator (target-machine code)**
+ **Machine-Dependent Code Optimizer (target-machine code)**

Our goal in Module 1 is to use different languages and create exact LLVM IR representations. All high-level language has their steps for the intermediate representation, and the compilation step will give more specific explanations with related programming languages.
