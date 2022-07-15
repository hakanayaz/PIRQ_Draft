# Quantum Lexical Analysis and Parse Trees: OpenQASM

This section explains [how OpenQASM uses the ANTLR4 tool](https://github.com/openqasm/openqasm/tree/main/source/grammar) to generate a lexer and parser. We use this as an example for how quantum concepts and constructs can be supported through the compilation process, starting from the most foundational step: tokens and grammars.

## Sample OpenQASM Code

We will use the sample code (found in [bell.qasm](bell.qasm)), which generates entangled Bell states from a pair of qubits:

```c
qreg q[2];                  // create a quantum register with 2 qubits
creg c[2];                  // create a classical register with 2 bits
U(pi/2, 0, pi) q[0];        // perform Hadamard gate on one qubit
CX q[0],q[1];               // perform control-not gate on both qubits
// z q[1];
// an entangled state of the Bell-pair form has been created!
  
measure q[0] -> c[0];       //measure one qubit, and put outcome in one bit
measure q[1] -> c[1];       //measure the other qubit, and put outcome in the other bit
```

## Deviations from Classical Program

In what way is this different from a comparable classic program (besides the fact that we don't entangle bits)? To answer this question, we will look at two files which, between them, define the OpenQASM language. These are the provided `.g4` files in this repository, which contain tokens and rules called __productions__. The two of them comprise OpenQASM's __grammar__.


First we will examine the [qasm3Lexer.g4](qasm3Lexer.g4) file. Right off the bat, some things are apparent, namely that a quantum coding language will require some quantum-specific keywords. One thing to note is the two different types of variables, `qreg` and `creg`, which is analogous to the typing system we are familiar with from classical computing, and can be dealt with in the same way during compilation. Here is the relevant section from `qasm3Lexer.g4`, in which `qreg` is included amongst more familiar datatypes:

```c
/* Types. */

INPUT: 'input';
OUTPUT: 'output';
CONST: 'const';
MUTABLE: 'mutable';

QREG: 'qreg';
QUBIT: 'qubit';

CREG: 'creg';
BOOL: 'bool';
BIT: 'bit';
INT: 'int';
UINT: 'uint';
FLOAT: 'float';
ANGLE: 'angle';
COMPLEX: 'complex';
ARRAY: 'array';

DURATION:  'duration';
STRETCH: 'stretch';
```

Another noticeable difference is a whole group of operations which are useful in quantum applications (e.g. `measure`); they are reserved and given their own tokens in the same `.g4` file:

```c
/* Builtin identifiers and operations */

GPHASE: 'gphase';          // Applies a global phase
INV: 'inv';                // Modifies a gate and returns its Hermitian inverse
POW: 'pow';                // Modifies a gate U with U^k
CTRL: 'ctrl';              // Adds a classical control to a gate
NEGCTRL: 'negctrl';        // Negates the control, so that the gate triggers on 0 instead of1

DIM: '#dim';               //

DURATIONOF: 'durationof';  //

DELAY: 'delay';            // Allows for delays in circuit by applying I gate
RESET: 'reset';            // Resets a qubit to |0> state
MEASURE: 'measure';        // Measures the qubit
BARRIER: 'barrier';        // Allows for ordering constaint and disallows gate commutation

BooleanLiteral: 'true' | 'false';
```

## ANTLR4

Now that we've somewhat familiarized ourselves with OpenQASM's structure, we will perform lexical analysis and generate a parse tree for this code, using ANTLR4. If you want to follow along, these resources may be helpful: [[1](https://github.com/antlr/antlr4/blob/master/doc/getting-started.md)] [[2](http://pragprog.com/titles/tpantlr2/source_code)].

1. The first thing you will need to do is [download and install Java](https://www.java.com/en/download/help/download_options.html). Note that you may run into some compatibility issues with ANTLR: we recommend v11.0.2, which you can get through [OpenJDK](https://jdk.java.net/archive/) or [OracleJDK](https://www.oracle.com/java/technologies/downloads/archive/).
    + Make sure you set your `JAVA_HOME` environmental variable to be `path\to\location\of\JDK`.
    + Also, make sure you add this same path + `\bin` to your `PATH`

This is a good place to stop and test your installation. Type the command `java` into your command line. If it is not a recognized command, make sure your environmental variables are configured correctly. If you get usage tips - good job! Move on to the next step.

2. Once you have Java up and running, the next thing you will need is the actual ANTLR tool. You can download that [here](https://www.antlr.org/download.html). If you aim to follow along with the rest of this tutorial, download the complete binaries package for Java target, and save it into a convenient folder (if you already have one where you keep third party Java tools, that will work just fine).

3. The ANTLR tool needs to be added to the `CLASSPATH` environmental variable. Importantly, you have to add two paths: `.` and `path\to\antlr-4.10.1-complete.jar`. Note that the two commands below are only temporary, and if you want to do this permanently you should either change the variable in your `.bash_file` or in your Control Panel > System Variables.
    + For Linux: `$ export CLASSPATH=".:/usr/local/lib/antlr-4.10.1-complete.jar:$CLASSPATH"`
    + For Windows: `% SET CLASSPATH=.;C:\Javalib\antlr-4.10.1-complete.jar;%CLASSPATH%`

4. Set some convenient commands, so you don't have to type long paths over and over.

Linux:

```cmd
alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.10.1-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "/usr/local/lib/antlr-4.10.1-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'
```

Windows:

```cmd
% doskey antlr4=java org.antlr.v4.Tool $*
% doskey grun=java org.antlr.v4.gui.TestRig $*
```

Now, we're ready to make sure everything is set up correctly and use ANTLR.

The easiest way to test this is to just try the commands `antlr4` and `grun` in the command line. If you get notes on usage and flag options, you're good so far! Continue on. If your `java` command works, but either `antlr4` or `grun` either aren't recognized as commands or are throwing Java errors, turn to the [ANTLR FAQ](https://github.com/antlr/antlr4/blob/master/doc/faq/installation.md).

Once these commands are working for you, we can put them to work on the qasm3 grammar. There are two .g4 files included in this repository, which between them build out the entire grammar. We will feed them to ANTLR one at a time, but first it's important to note that order matters. Why? Well, `qasm3Lexer.g4`, the file we peeked into earlier, defines all of the keywords and symbols available in OpenQasm 3.0. `qasm3Parser.g4` then uses those symbols and arranges them into rules, or _productions_, which specify what sort of grammatical combinations are allowed. At the very top of `qasm3Parser.g4` we see that it has a dependency on the lexer file:

```cmd
options {
    tokenVocab = qasm3Lexer;
}
```

So, it is important that we first run ANTLR on the lexer, otherwise the parser will be missing a key part of its vocabulary.

We can do that by running `antlr4 qasm3Lexer.g4` and `antlr4 qasm3Parser.g4` in that order to generate all of the `.interp`, `.tokens`, and `.java` files we need. If you have any errors at this step, turn back to the [FAQ](https://github.com/antlr/antlr4/blob/master/doc/faq/installation.md). In particular, make sure your `CLASSPATH` is set completely correctly - that little `.` at the beginning is important!

Now, assuming that worked, the hard part is done. We next compile all of the `.java` files ANTLR conveniently generated for us with `javac qasm3*.java` in order to turn them all into executable `.class` files. Finally, `grun`, the test rig we will be using, expects two arguments: a `grammarName` and a `startingRuleName`. Our `grammarName` is simply `qasm3`. Since we have a complete program, rather than a sub-production such as a `breakStatement` or a `gateCallStatement`, we need to target the highest level rule in the grammar. If we look in the `qasm3Parser.g4` file, we will see that the `program: version? statement* EOF;` production is the highest tier. Now, we have everything we need to proceed.

## Lexical Analysis

First, we want to see how the lexer works. Since we've already done the hard work of generating and compiling all of the necessary files, this is pretty simple. We run the command `grun qasm3 program -tokens` and then simply copy and paste our Bell state generator as input. (Remember to end with an EOF character: `Ctrl+D` on Linux, and `Ctrl+Z` for Windows! The program will simply hang, awaiting further input, until it receives this.) The output for our program is attached below:

```c
[@0,0:7      = 'OPENQASM', <'OPENQASM'>,              1:0]
[@1,9:11     = '3.0',      <VersionSpecifier>,        1:9]
[@2,12:12    = ';',        <';'>,                    1:12]
[@3,15:21    = 'include',  <'include'>,               2:0]
[@4,23:36    = '"stdgates.inc"', <StringLiteral>,     2:8]
[@5,37:37    = ';',        <';'>,                    2:22]
[@6,224:227  = 'qreg',     <'qreg'>,                  8:0]
[@7,229:229  = 'q',        <Identifier>,              8:5]
[@8,230:230  = '[',        <'['>,                     8:6]
[@9,231:231  = '2',        <DecimalIntegerLiteral>,   8:7]
[@10,232:232 = ']',        <']'>,                     8:8]
[@11,233:233 = ';',        <';'>,                     8:9]
[@12,284:287 = 'creg',     <'creg'>,                  9:0]
[@13,289:289 = 'c',        <Identifier>,              9:5]
[@14,290:290 = '[',        <'['>,                     9:6]
[@15,291:291 = '2',        <DecimalIntegerLiteral>,   9:7]
[@16,292:292 = ']',        <']'>,                     9:8]
[@17,293:293 = ';',        <';'>,                     9:9]
[@18,345:345 = 'U',        <Identifier>,             10:0]
[@19,346:346 = '(',        <'('>,                    10:1]
[@20,347:348 = 'pi',       <Identifier>,             10:2]
[@21,349:349 = '/',        <'/'>,                    10:4]
[@22,350:350 = '2',        <DecimalIntegerLiteral>,  10:5]
[@23,351:351 = ',',        <','>,                    10:6]
[@24,353:353 = '0',        <DecimalIntegerLiteral>,  10:8]
[@25,354:354 = ',',        <','>,                    10:9]
[@26,356:357 = 'pi',       <Identifier>,            10:11]
[@27,358:358 = ')',        <')'>,                   10:13]
[@28,360:360 = 'q',        <Identifier>,            10:15]
[@29,361:361 = '[',        <'['>,                   10:16]
[@30,362:362 = '0',        <DecimalIntegerLiteral>, 10:17]
[@31,363:363 = ']',        <']'>,                   10:18]
[@32,364:364 = ';',        <';'>,                   10:19]
[@33,406:407 = 'CX',       <Identifier>,             11:0]
[@34,409:409 = 'q',        <Identifier>,             11:3]
[@35,410:410 = '[',        <'['>,                    11:4]
[@36,411:411 = '0',        <DecimalIntegerLiteral>,  11:5]
[@37,412:412 = ']',        <']'>,                    11:6]
[@38,413:413 = ',',        <','>,                    11:7]
[@39,414:414 = 'q',        <Identifier>,             11:8]
[@40,415:415 = '[',        <'['>,                    11:9]
[@41,416:416 = '1',        <DecimalIntegerLiteral>, 11:10]
[@42,417:417 = ']',        <']'>,                   11:11]
[@43,418:418 = ';',        <';'>,                   11:12]
[@44,549:555 = 'measure',  <'measure'>,              15:0]
[@57,629:629 = '[',        <'['>,                    16:9]
[@58,630:630 = '1',        <DecimalIntegerLiteral>, 16:10]
[@59,631:631 = ']',        <']'>,                   16:11]
[@60,633:634 = '->',       <'->'>,                  16:13]
[@61,636:636 = 'c',        <Identifier>,            16:16]
[@62,637:637 = '[',        <'['>,                   16:17]
[@63,638:638 = '1',        <DecimalIntegerLiteral>, 16:18]
[@64,639:639 = ']',        <']'>,                   16:19]
[@65,640:640 = ';',        <';'>,                   16:20]
[@66,703:702 = '<EOF>',    <EOF>,                    17:0]
```

Each line gives the token number (there are 66 of then) and the character numbers which comprise it (for example, `OPENQASM` is the first 8 characters, or 0-7). It gives the string representation of the token, the type of token it is (for example, Token 1 = 3.0 is a `VersionSpecifier`, and not a `FloatLiteral`), and then the location in our file where it can be found. This is all information which will be helpful throughout the rest of compilation.

## Parse Tree

We're also interested in the Parse Tree generated by this program. We can try to run `grun qasm3 program -tree`, although in text format, this tree does not look pretty - we will not attach it here, but just trust me, you don't want to see it. Luckily, ANTLR provides us with a nice GUI which makes this a bit clearer. With `grun qasm3 program -gui`, we will get the following:

![Bell Program Parse Tree](bell_parse_tree.png)

We can see how the top level `program` production is split into its `version?` specifier, a series of `statement`s, and then the EOF delimiter: exactly as specified in the `qasm3Parser.g4`. It is instructive to trace down some of the statements in order to see how arguments are structured unambigously, and which sub-productions are necessary. This Parse Tree also begins to hint at how an IR might be generated.

## IR

For the final phase, we will use qcor to generate the LLVM. 

While we ran into some rooadblocks in this process, the simplest method we found for running qcor was to use its Docker image, in order to remove dependency issues and OS-specific problems.

1. Download and Install Docker [here](https://www.docker.com/products/docker-desktop/)
2. Once its installed, go to your local terminal and run `docker pull qcor/qcor`
    + The image should show up in your Docker application
3. Run the image in Docker
4. Go to the “Containers” Tab, and launch the qcor CLI

Now, everything is already set up to use qcor! All that remains is to transfer folders in and out of the container.

We used vi, the universal text editor which comes on every unix system, to create the files we needed. Many people are unacquainted with it, so here are some basic commands.

### To create a new file or open an existing file:

`vi <filename>.<ext>`

### To edit a file:

vi initially launches in “Command Mode”, where you can type commands but not change the document. To change to “Insert mode” type the letter `i`. You should see the bottom left corner of your console change to a capital `I`. Now, you can move around with your arrow keys and edit your document like normal.

### To save the file and quit:

We need to change back to Command Mode. Press the `Esc` key to exit Insert Mode. You should see the capital `I` change to just a `-`. Now, type `:w` to save the file, and `:q` to quit. If you want to save and quit at the same time, you can just do `:wq`.


### qcor-mlir-tool

[MLIR](https://mlir.llvm.org/) is a much broader LLVM project, and mostly out of our scope. It has a multitude of uses. For our purposes, we are interested in how it can be leveraged to compile quantum code. qcor leverages MLIR as a way to lower OpenQASM code to LLVM. For information about that, see [this presentation](https://mlir.llvm.org/OpenMeetings/2021-05-27-Quantum-Classical-Compilation-with-MLIR.pdf).

Once all the necessary files are in place, we will use the `qcor-mlir-tool`. It has a flag `-emit` with three settings:

``` terminal
--emit=<value>                                       - Select the kind of output desired
    =mlir                                              -   output the MLIR dump
    =llvm                                              -   output the LLVM IR dump
    =mlir-llvm                                         -   output the MLIR LLVM Dialect dump
```
After running these on our `bell.qasm` file, we receive the following outputs:

+ [MLIR](bell.mlir)
+ [LLVM](bell.ll)
+ [MLIR-LLVM](bell-ll.mlir)
