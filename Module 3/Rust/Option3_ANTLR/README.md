# Using ANTLR to extend the Rust Parser
The idea is to add new tokens to the Rust lexical analyzer. Then add new productions to support rust functions that act as quantum kernels. 
Using ANTLR we can obtain the Parsing Syntax Tree. The next step would be to figure out how to process the Parsing Syntax Tree to compile our custom quantum kernel separately from the rest of the classical code. Processing the Parsing Syntax Tree to have separate compilation is still a work in progress. 

### Prerequisites
This tutorial assumes you followed the ANTLR4 setup mentioned in Module 2. 

## Rust No Quantum
Command 1: `antlr4  RustLexer.g4`

Command 2: `antlr4  RustParser.g4`

Command 3: `javac Rust*.java`

Command 4: `grun Rust program -tokens`

After this command the terminal will be awaiting input.
1. You must copy and paste your rust source code here. For example, copy this hello world program onto the terminal.
    ```Rust
    fn main(){
        print!("Hello world!");
    }
    ```
2. Then press `ENTER`. 
3. Then press `CTRL + Z`. 
4. Lastly press `ENTER` again.
    ```Rust
    [@0,0:1='fn',<'fn'>,1:0]
    [@1,2:2=' ',<WHITESPACE>,channel=1,1:2]
    [@2,3:6='main',<NON_KEYWORD_IDENTIFIER>,1:3]
    [@3,7:7='(',<'('>,1:7]
    [@4,8:8=')',<')'>,1:8]
    [@5,9:9='{',<'{'>,1:9]
    [@6,10:11='\r\n',<NEWLINE>,channel=1,1:10]
    [@7,12:12=' ',<WHITESPACE>,channel=1,2:0]
    [@8,13:13=' ',<WHITESPACE>,channel=1,2:1]
    [@9,14:14=' ',<WHITESPACE>,channel=1,2:2]
    [@10,15:15=' ',<WHITESPACE>,channel=1,2:3]
    [@11,16:20='print',<NON_KEYWORD_IDENTIFIER>,2:4]
    [@12,21:21='!',<'!'>,2:9]
    [@13,22:22='(',<'('>,2:10]
    [@14,23:36='"Hello world!"',<STRING_LITERAL>,2:11]
    [@15,37:37=')',<')'>,2:25]
    [@16,38:38=';',<';'>,2:26]
    [@17,39:40='\r\n',<NEWLINE>,channel=1,2:27]
    [@18,41:41='}',<'}'>,3:0]
    [@19,42:43='\r\n',<NEWLINE>,channel=1,3:1]
    [@20,44:43='<EOF>',<EOF>,4:0]
    ```
Command 5: `grun Rust program -gui`

### **Work in progress to get Parser Syntax Tree.**


## Rust With Quantum
The general idea to support quantum kernels is to extend the Rust Parser. 
First we need to change the function production in the **RustParser.g4** file from this:
```Rust
function_
   : functionQualifiers 'fn' identifier genericParams? '(' 
     functionParameters? ')' functionReturnType? whereClause?
     (blockExpression | ';')
   ;
```

to something like this:
```Rust
function_
   : functionQualifiers 'fn' identifier genericParams? '(' 
     functionParameters? ')' functionReturnType? whereClause?
     (blockExpression | ';')
   | 'quantum_kernel' 'fn' '(' 
     functionParameters? ')' functionReturnType? whereClause?
     (blockExpression | ';')
   ;
```
Furthermore, we would need to add the `quantum_kernel` token in the **RustLexer.g4** file 
```Rust
KW_QK: 'quantum_kernel';
```

### **Work in progress to figure out how to process Parser Syntax Tree for split compilation. . .**

## Resources
1. [Rust Grammar for ANTLR Processing](https://github.com/antlr/grammars-v4/tree/master/rust)
2. [AST to LLVM](https://llvm.org/docs/tutorial/MyFirstLanguageFrontend/LangImpl03.html)