# Simple Function: C to IR

In this tutorial we will start with example code written in C and create LLVM IR using `clang`. As a final output, we will create a .ll human readable file with an exact translation of our original source code.

**Before starting, please install LLVM on your computer.**
Here is the usefull link to use it while building LLVM. [LLVM with CMake](https://llvm.org/docs/CMake.html)

Our example `code` will be a function written in C (no guarantee on code quality, just an example):

``` C
# Code is saved as f.c
long f(long a, long b) {
  long x = a;
  if (a > b)
    x += 20;
  else
    x += b;
  return x;
}
```

First, we'll take a peek at the phases of compilation this code will undergo. For this step, we use a `clang` command:

``` c
 % clang -ccc-print-phases f.c

+- 0: input, "f.c", c
+- 1: preprocessor, {0}, cpp-output
+- 2: compiler, {1}, ir
+- 3: backend, {2}, assembler
+- 4: assembler, {3}, object
+- 5: linker, {4}, image
+- 6: bind-arch, "arm64", {5}, image
```

As seen in the phases, our code will start as input, pass through the steps and emerge as machine code which can be run on a machine with an arm64 architecture.

As we mentioned in the Module 1 overview, the first phase of the compiler is Lexical Analysis.

## Lexical Analysis

Lexical analysis reads the input program character by character and divides it into groups of characters to create _tokens_, or _lexemes_. It gives information about the start of the line, the leading space in the code, and where each token is located. As output, it produces a stream of these lexemes with some helpful annotations. With another `clang` command, we can create tokens for the example code (`f.c`).

``` C
 % clang -c -Xclang -dump-tokens f.c

long            'long'      [StartOfLine]                   Loc=<f.c:1:1>
identifier      'f'                         [LeadingSpace]  Loc=<f.c:1:6>
l_paren         '('                                         Loc=<f.c:1:7>
long            'long'                                      Loc=<f.c:1:8>
identifier      'a'                         [LeadingSpace]  Loc=<f.c:1:13>
comma           ','                                         Loc=<f.c:1:14>
long            'long'                      [LeadingSpace]  Loc=<f.c:1:16>
identifier      'b'                         [LeadingSpace]  Loc=<f.c:1:21>
r_paren         ')'                                         Loc=<f.c:1:22>
l_brace         '{'                         [LeadingSpace]  Loc=<f.c:1:24>
long            'long'      [StartOfLine]   [LeadingSpace]  Loc=<f.c:2:3>
identifier      'x'                         [LeadingSpace]  Loc=<f.c:2:8>
equal           '='                         [LeadingSpace]  Loc=<f.c:2:10>
identifier      'a'                         [LeadingSpace]  Loc=<f.c:2:12>
semi            ';'                                         Loc=<f.c:2:13>
if              'if'        [StartOfLine]   [LeadingSpace]  Loc=<f.c:3:3>
l_paren         '('                         [LeadingSpace]  Loc=<f.c:3:6>
identifier      'a'                                         Loc=<f.c:3:7>
greater         '>'                         [LeadingSpace]  Loc=<f.c:3:9>
identifier      'b'                         [LeadingSpace]  Loc=<f.c:3:11>
r_paren         ')'                                         Loc=<f.c:3:12>
identifier      'x'         [StartOfLine]   [LeadingSpace]  Loc=<f.c:4:5>
plusequal       '+='                        [LeadingSpace]  Loc=<f.c:4:7>
numeric_constant'20'                        [LeadingSpace]  Loc=<f.c:4:10>
semi            ';'                                         Loc=<f.c:4:12>
else            'else'      [StartOfLine]   [LeadingSpace]  Loc=<f.c:5:3>
identifier      'x'         [StartOfLine]   [LeadingSpace]  Loc=<f.c:6:5>
plusequal       '+='                        [LeadingSpace]  Loc=<f.c:6:7>
identifier      'b'                         [LeadingSpace]  Loc=<f.c:6:10>
semi            ';'                                         Loc=<f.c:6:11>
return          'return'    [StartOfLine]   [LeadingSpace]  Loc=<f.c:7:3>
identifier      'x'                         [LeadingSpace]  Loc=<f.c:7:10>
semi            ';'                                         Loc=<f.c:7:11>
r_brace         '}'         [StartOfLine]                   Loc=<f.c:8:1>
eof             ''                                          Loc=<f.c:8:2>
```

As seen in the results, the entire input program is broken up into individual tokens and then represented as a token stream. If the lexical analyzer finds an invalid token (like a variable name which begins with a numeric digit, for example), it generates an error. Notice that no tokens contain whitespace - lexical analysis is responsible for removing any white space as well as comments, which are unnecessary for the subsequent phases. After creating the tokens, the next step of the compiler is to develop the Abstract Syntax Tree (AST).

## Creating Abstract Syntax Tree

An Abstract Syntax Tree (AST) does not include inessential punctuation like semicolons, braces, parentheses, etc. which we saw had their own tokens. Instead, these delimiters help guide the parser (the tool which builds an AST), and indicate what grammatical construct (or _production_) it should expect.

To create an AST for our sample `f.c` program, we will use `clang` once again:

``` C
 % clang -c -Xclang -ast-dump f.c

`-FunctionDecl 0x1418e2170 <f.c:1:1, line:8:1> line:1:6 f 'long (long, long)'
  |-ParmVarDecl 0x1418e2010 <col:8, col:13> col:13 used a 'long'
  |-ParmVarDecl 0x1418e2090 <col:16, col:21> col:21 used b 'long'
  `-CompoundStmt 0x1418e2550 <col:24, line:8:1>
    |-DeclStmt 0x1418e2320 <line:2:3, col:13>
    | `-VarDecl 0x1418e2280 <col:3, col:12> col:8 used x 'long' cinit
    |   `-ImplicitCastExpr 0x1418e2308 <col:12> 'long' <LValueToRValue>
    |     `-DeclRefExpr 0x1418e22e8 <col:12> 'long' lvalue ParmVar 0x1418e2010 'a' 'long'
    |-IfStmt 0x1418e24d8 <line:3:3, line:6:10> has_else
    | |-BinaryOperator 0x1418e23a8 <line:3:7, col:11> 'int' '>'
    | | |-ImplicitCastExpr 0x1418e2378 <col:7> 'long' <LValueToRValue>
    | | | `-DeclRefExpr 0x1418e2338 <col:7> 'long' lvalue ParmVar 0x1418e2010 'a' 'long'
    | | `-ImplicitCastExpr 0x1418e2390 <col:11> 'long' <LValueToRValue>
    | |   `-DeclRefExpr 0x1418e2358 <col:11> 'long' lvalue ParmVar 0x1418e2090 'b' 'long'
    | |-CompoundAssignOperator 0x1418e2420 <line:4:5, col:10> 'long' '+=' ComputeLHSTy='long' ComputeResultTy='long'
    | | |-DeclRefExpr 0x1418e23c8 <col:5> 'long' lvalue Var 0x1418e2280 'x' 'long'
    | | `-ImplicitCastExpr 0x1418e2408 <col:10> 'long' <IntegralCast>
    | |   `-IntegerLiteral 0x1418e23e8 <col:10> 'int' 20
    | `-CompoundAssignOperator 0x1418e24a8 <line:6:5, col:10> 'long' '+=' ComputeLHSTy='long' ComputeResultTy='long'
    |   |-DeclRefExpr 0x1418e2450 <col:5> 'long' lvalue Var 0x1418e2280 'x' 'long'
    |   `-ImplicitCastExpr 0x1418e2490 <col:10> 'long' <LValueToRValue>
    |     `-DeclRefExpr 0x1418e2470 <col:10> 'long' lvalue ParmVar 0x1418e2090 'b' 'long'
    `-ReturnStmt 0x1418e2540 <line:7:3, col:10>
      `-ImplicitCastExpr 0x1418e2528 <col:10> 'long' <LValueToRValue>
        `-DeclRefExpr 0x1418e2508 <col:10> 'long' lvalue Var 0x1418e2280 'x' 'long'
```

The AST results are pretty intuitive to understand. Each line of code represents a "node" in the tree, which can have different types and contain different metadata. For example, the very first line is the function declaration because we start our code by defining the function. Parameter and variable declarations follow, just as they did in our source code, and every line of code contains necessary information such as datatype, pointers to child nodes, and location of token.

## Intermediate Representation

The next step is generating the intermediate representation. As we've mentioned, an intermediate representation (IR) is the data structure or code used internally by a compiler or virtual machine to represent source code. Crucially, it is not specific to any particular machine and is independent of the source language. This step's primary goal is to create a human-readable file (.ll) in which our f.c program is captured in LLVM; through the rest of this set of tutorials, we will be generating similar .ll files for our function using different high-level languages as our starting points.

For this, once again, we will use `clang`. Clang is the only option in front-end applications in C/C++.

``` C
 % clang -S -emit-llvm f.c -o f.ll

; ModuleID = 'f.ll'
source_filename = "f.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @f(i64 %0, i64 %1) #0 {      ; %0 -> a & %1 -> b %0 define as an "a" value
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8              ; i64 -> Long
  %5 = alloca i64, align 8              ; i32 -> Int
  store i64 %0, i64* %3, align 8        ; %3 information is stored at %0
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8       ; %6 information is stored at %3
  store i64 %6, i64* %5, align 8        ; %5 information is stored at %6
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %13

10: ; if.then                           ; preds = %2
  %11 = load i64, i64* %5, align 8      ; %11 stores the %5 information
  %12 = add nsw i64 %11, 20             ; %11 -> a 
  store i64 %12, i64* %5, align 8
  br label %17

13: ; if.else                           ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add nsw i64 %15, %14
  store i64 %16, i64* %5, align 8
  br label %17

17: ; if.end                            ; preds = %13, %10
  %18 = load i64, i64* %5, align 8
  ret i64 %18
}

attributes #0 = { noinline nounwind optnone ssp uwtable 
"frame-pointer"="non-leaf" "min-legal-vector-width"="0" 
"no-trapping-math"="true" "stack-protector-buffer-size"="8" 
"target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,
+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,
+zcm,+zcz" }


!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 1}
!8 = !{!"Homebrew clang version 13.0.1"}
```

The IR module starts with a pair of strings describing the target: the target data layout and target triple.

```C
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"
```

Target datalayout starts with the "e" which is "Little Endian" then "m:o" which is ELF mangling then ABI alignment of i64 with "i64:64" then final information at the data layout is the native intiger widths "n32:64".

Target triple information starts with the architecture "arm64", then Vendor "apple", then system "macosx12.0.0".

In the IR representation semicolons ";" are using for comments, "i64" means long data type, "i32" represents the integer data type etc. Another important mechanism to note are the numbers embedded within the code. For example "10" is defined as an if.then boolean operator, "13" is defined as an "if.else" operator, and "17" defined as an "if.end" operator.

## Extra Resources

Some web pages allow you to build IR automatically, which can be helpful while learning and trying new things. Here is one example:

+ [Compiler Explorer](https://godbolt.org/)
