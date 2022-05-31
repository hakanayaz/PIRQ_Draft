# Module 1

Module 1 is about classical computers compilation process and will use C/C++, Rust, and Python high level programming languages to create LLVM intermediate representation (IR). Main purpose of the LLVM IR is interoperatible with the all other languages. We chose thees three high level languages becuase in Quantum are companies are using this three languages mostly. On the other hand, we can increase the example with the other programming languages.

## Intermadiate Representation

Intermediate representation (IR) is the representation between source and target languages. Another way of saying IR is the data structure or code used by compilers or virtual machines to represent source code.

Another way of designing the IR is creating independent source and target languages which could be use to build while family of compiler.

Intermadiate representation provides a customary platform to share acros target and sources and allows re-use in compiler machinery.

Phases of compiler has some general steps until target machine code which are:

+ Lexical Analysis (token stream)
+ Syntax Analysis (syntax tree)
+ Sematic Analyzer (syntax tree)
+ Intermadiate Code Generator (IR representation)
+ Machine-Independent Code Optimizer (IR representation)
+ Code Generator (target-machine code)
+ Machine-Dependent Code Optimizer (target-machine code)

Our goal in Module 1 is using different languages and creating same LLVM IR representations. More specific explanation will be given with related programming languages. All high level language has own steps for the intermediate representation.
