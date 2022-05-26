## Module 1

Module one is about classical computers compilation process and use C/C++, Rust, and Python high level programming languages to create tutorials.

## Intermadiate Representation

Intermediate representation (IR) is the representation between source and target languages. Another way of saying IR is the data structure or code used by compilers or virtual machines to represent source code.

Another way of designing the IR is creating independent source and target languages which could be use to build while family of compiler.

Intermadiate representation provides a customary platform to share acros target and sources and allows re-use in compiler machinery.

Phases of compiler has some steps until target machine code which are:

+ Lexical Analysis (token stream)
+ Syntax Analysis (syntax tree)
+ Sematic Analyzer (syntax tree)
+ Intermadiate Code Generator (IR representation)
+ Machine-Independent Code Optimizer (IR representation)
+ Code Generator (target-machine code)
+ Machine-Dependent Code Optimizer (target-machine code)

Our goal in Module 1 is using different languages and creating same IR representation. More specific explnation will be given with related programming languages. All hig level language has own steps for the intermediate representation.

