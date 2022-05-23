# C/C++ IR Tutorials

In this tutorials we will start with an example code and create IR steps with using LLVM.

**Before start please install the LLVM on your computer.**

Our example `code` will be:

``` C
# Code is saved as a f.c
long f(long a, long b) {
  long x = a;
  if (a > b)
    x += 20;
  else
    x += b;
  return x;
}
```

First, we will show what are the phaseses until compilation. For this step we will use `clang` commend:

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

As seen in the phases, our code will start as input, pass through the steps and continue until the machine code.

As we mentioned in Module 1 phases of the compiler first phase of the compiler is the Lexical analysis.

## Lexical Analysis

First phase of a compiler is Lexical analysis. Lexical anaylsis reads the program and divide into groups and characters to create lexemes which are called tokens as an output. While using `clang` commend we can create tokens for the example code (f.c).

``` c
 % clang -c -Xclang -dump-tokens f.c

long 			'long'	 			[StartOfLine]	Loc=<f.c:1:1>
identifier 		'f'	 				[LeadingSpace]	Loc=<f.c:1:6>
l_paren 		'('									Loc=<f.c:1:7>
long 			'long'								Loc=<f.c:1:8>
identifier 		'a'	 				[LeadingSpace]	Loc=<f.c:1:13>
comma 			','									Loc=<f.c:1:14>
long 			'long'	 			[LeadingSpace]	Loc=<f.c:1:16>
identifier 		'b'	 				[LeadingSpace]	Loc=<f.c:1:21>
r_paren 		')'									Loc=<f.c:1:22>
l_brace 		'{'	 				[LeadingSpace]	Loc=<f.c:1:24>
long 			'long'[StartOfLine] [LeadingSpace]	Loc=<f.c:2:3>
identifier 		'x'	 				[LeadingSpace]	Loc=<f.c:2:8>
equal 			'='	 				[LeadingSpace]	Loc=<f.c:2:10>
identifier 		'a'	 				[LeadingSpace]	Loc=<f.c:2:12>
semi 			';'									Loc=<f.c:2:13>
if 				'if'[StartOfLine]	[LeadingSpace]	Loc=<f.c:3:3>
l_paren 		'('	 				[LeadingSpace]	Loc=<f.c:3:6>
identifier 		'a'									Loc=<f.c:3:7>
greater 		'>'	 				[LeadingSpace]	Loc=<f.c:3:9>
identifier 		'b'	 				[LeadingSpace]	Loc=<f.c:3:11>
r_paren 		')'									Loc=<f.c:3:12>
identifier 		'x'	[StartOfLine]   [LeadingSpace]	Loc=<f.c:4:5>
plusequal 		'+='	 			[LeadingSpace]	Loc=<f.c:4:7>
numeric_constant '20'	 			[LeadingSpace]	Loc=<f.c:4:10>
semi 			';'									Loc=<f.c:4:12>
else 			'else'[StartOfLine]	[LeadingSpace]	Loc=<f.c:5:3>
identifier 		'x'   [StartOfLine]	[LeadingSpace]	Loc=<f.c:6:5>
plusequal 		'+='	 			[LeadingSpace]	Loc=<f.c:6:7>
identifier 		'b'	 				[LeadingSpace]	Loc=<f.c:6:10>
semi 			';'									Loc=<f.c:6:11>
return 			'return'[StartOfLine][LeadingSpace]	Loc=<f.c:7:3>
identifier 		'x'	 				[LeadingSpace]	Loc=<f.c:7:10>
semi 			';'									Loc=<f.c:7:11>
r_brace 		'}'		[StartOfLine]				Loc=<f.c:8:1>
eof 			 ''							        Loc=<f.c:8:2>
```

As seen in the results
