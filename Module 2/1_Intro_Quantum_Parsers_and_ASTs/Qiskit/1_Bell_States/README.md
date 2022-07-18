# Quantum Lexical Analysis and Parse Trees: Qiskit

Here, we will extend our investigation of quantum compilation frontends to a few examples written with Qiskit.

## Sample Code: Bell States

Just as in the OpenQASM example, our first simple program will generate an entangled Bell state.

``` Python
def BellState():
    qreg_q = QuantumRegister(2, 'q')
    creg_c = ClassicalRegister(2, 'c')
    circuit = QuantumCircuit(qreg_q, creg_c)

    circuit.h(qreg_q[0])
    circuit.cx(qreg_q[0], qreg_q[1])
    
    circuit.measure(qreg_q[0], creg_c[0])
    circuit.measure(qreg_q[1], creg_c[1])
```

## Use of ANTLR4

For the Lexical and Syntactical Analysis of this code, we will use ANTLR4. We recommend you check [this section](../OpenQASM/README.md/#antlr4) of the OpenQASM tutorial for instructions on how to get ANTLR4 installed and up and running. Below, we will assume you have done this correctly, so please take the time to read through the relevant resources!

Included with this repo is a `.g4` file detailing the grammar for `Python3`. After using either `doskey`/`alias` so that the relevant commands are easily accessible, we simply run `antlr4 Python3.g4` and then `javac Python3*.java`. Once we've done so, we're ready to use the automatically created ANTLR4 tools to analyze our Qiskit code. The only thing which remains is to figure out which parse rule we'd like to target: a quick glance into the `Python3.g4` file reveals that the highest level production is `file_input : ( NEWLINE | stmt )* EOF ;`, so that's what we will use.

### Lexical Analysis

Type `grun Python3 file_input -tokens`. Then, by copying and pasting our code from `bell.py` and remembering to terminate with an `EOF` character (`CTRL + D` on Linux, `CTRL + Z` on Windows), we receive the following output:

``` Python
[@0,0:3       = 'from',              <'from'>,            1:0]
[@1,5:10      = 'qiskit',            <NAME>,              1:5]
[@2,12:17     = 'import',            <'import'>,         1:12]
[@3,19:33     = 'QuantumRegister',   <NAME>,             1:19]
[@4,34:34     = ',',                 <','>,              1:34]
[@5,36:52     = 'ClassicalRegister', <NAME>,             1:36]
[@6,53:53     = ',',                 <','>,              1:53]
[@7,55:68     = 'QuantumCircuit',    <NAME>,             1:55]
[@8,69:70     = '\r\n',              <NEWLINE>,           2:0]
[@9,71:74     = 'from',              <'from'>,            2:0]
[@10,76:80    = 'numpy',             <NAME>,              2:5]
[@11,82:87    = 'import',            <'import'>,         2:11]
[@12,89:90    = 'pi',                <NAME>,             2:18]
[@13,93:94    =  '\r\n',             <NEWLINE>,           4:0]
[@14,95:97    = 'def',               <'def'>,             4:0]
[@15,99:107   = 'BellState',         <NAME>,              4:4]
[@16,108:108  = '(',                 <'('>,              4:13]
[@17,109:109  = ')',                 <')'>,              4:14]
[@18,110:110  = ':',                 <':'>,              4:15]
[@19,115:116  = '  ',                <NEWLINE>,           5:4]
[@20,113:116  = '    ',              <94>,                5:4]
[@21,117:122  = 'qreg_q',            <NAME>,              5:4]
[@22,124:124  = '=',                 <'='>,              5:11]
[@23,126:140  = 'QuantumRegister',   <NAME>,             5:13]
[@24,141:141  = '(',                 <'('>,              5:28]
[@25,142:142  = '2',                 <DECIMAL_INTEGER>,  5:29]
[@26,143:143  = ',',                 <','>,              5:30]
[@27,145:147  = ''q'',               <STRING_LITERAL>,   5:32]
[@28,148:148  = ')',                 <')'>,              5:35]
[@29,153:154  = '  ',                <NEWLINE>,           6:4]
[@30,155:160  = 'creg_c',            <NAME>,              6:4]
[@31,162:162  = '=',                 <'='>,              6:11]
[@32,164:180  = 'ClassicalRegister', <NAME>,             6:13]
[@33,181:181  = '(',                 <'('>,              6:30]
[@34,182:182  = '2',                 <DECIMAL_INTEGER>,  6:31]
[@35,183:183  = ',',                 <','>,              6:32]
[@36,185:187  = ''c'',               <STRING_LITERAL>,   6:34]
[@37,188:188  = ')',                 <')'>,              6:37]
[@38,193:194  = '  ',                <NEWLINE>,           7:4]
[@39,195:201  = 'circuit',           <NAME>,              7:4]
[@40,203:203  = '=',                 <'='>,              7:12]
[@41,205:218  = 'QuantumCircuit',    <NAME>,             7:14]
[@42,219:219  = '(',                 <'('>,              7:28]
[@43,220:225  = 'qreg_q',            <NAME>,             7:29]
[@44,226:226  = ',',                 <','>,              7:35]
[@45,228:233  = 'creg_c',            <NAME>,             7:37]
[@46,234:234  = ')',                 <')'>,              7:43]
[@47,241:242  = '  ',                <NEWLINE>,           9:4]
[@48,243:249  = 'circuit',           <NAME>,              9:4]
[@49,250:250  = '.',                 <'.'>,              9:11]
[@50,251:251  = 'h',                 <NAME>,             9:12]
[@51,252:252  = '(',                 <'('>,              9:13]
[@52,253:258  = 'qreg_q',            <NAME>,             9:14]
[@53,259:259  = '[',                 <'['>,              9:20]
[@54,260:260  = '0',                 <DECIMAL_INTEGER>,  9:21]
[@55,261:261  = ']',                 <']'>,              9:22]
[@56,262:262  = ')',                 <')'>,              9:23]
[@57,267:268  = '  ',                <NEWLINE>,          10:4]
[@58,269:275  = 'circuit',           <NAME>,             10:4]
[@59,276:276  = '.',                 <'.'>,             10:11]
[@60,277:278  = 'cx',                <NAME>,            10:12]
[@61,279:279  = '(',                 <'('>,             10:14]
[@62,280:285  = 'qreg_q',            <NAME>,            10:15]
[@63,286:286  = '[',                 <'['>,             10:21]
[@64,287:287  = '0',                 <DECIMAL_INTEGER>, 10:22]
[@65,288:288  = ']',                 <']'>,             10:23]
[@66,289:289  = ',',                 <','>,             10:24]
[@67,291:296  = 'qreg_q',            <NAME>,            10:26]
[@68,297:297  = '[',                 <'['>,             10:32]
[@69,298:298  = '1',                 <DECIMAL_INTEGER>, 10:33]
[@70,299:299  = ']',                 <']'>,             10:34]
[@71,300:300  = ')',                 <')'>,             10:35]
[@72,311:312  = '  ',                <NEWLINE>,          12:4]
[@73,313:319  = 'circuit',           <NAME>,             12:4]
[@74,320:320  = '.',                 <'.'>,             12:11]
[@75,321:327  = 'measure',           <NAME>,            12:12]
[@76,328:328  = '(',                 <'('>,             12:19]
[@77,329:334  = 'qreg_q',            <NAME>,            12:20]
[@78,335:335  = '[',                 <'['>,             12:26]
[@79,336:336  = '0',                 <DECIMAL_INTEGER>, 12:27]
[@80,337:337  = ']',                 <']'>,             12:28]
[@81,338:338  = ',',                 <','>,             12:29]
[@82,340:345  = 'creg_c',            <NAME>,            12:31]
[@83,346:346  = '[',                 <'['>,             12:37]
[@84,347:347  = '0',                 <DECIMAL_INTEGER>, 12:38]
[@85,348:348  = ']',                 <']'>,             12:39]
[@86,349:349  = ')',                 <')'>,             12:40]
[@87,354:355  = '  ',                <NEWLINE>,          13:4]
[@99,390:390  = '1',                 <DECIMAL_INTEGER>, 13:38]
[@100,391:391 = ']',                 <']'>,             13:39]
[@101,392:392 = ')',                 <')'>,             13:40]
[@102,397:398 = '\r\n',              <NEWLINE>,          16:0]
[@103,398:398 = '\n',                <95>,               13:0]
[@104,399:400 = 'if',                <'if'>,             16:0]
[@105,402:409 = '__name__',          <NAME>,             16:3]
[@106,412:413 = '==',                <'=='>,            16:13]
[@107,415:424 = '"__main__"',        <STRING_LITERAL>,  16:16]
[@108,425:425 = ':',                 <':'>,             16:26]
[@109,430:431 = '  ',                <NEWLINE>,          17:4]
[@110,428:431 = '    ',              <94>,               17:4]
[@111,432:440 = 'BellState',         <NAME>,             17:4]
[@112,441:441 = '(',                 <'('>,             17:13]
[@113,442:442 = ')',                 <')'>,             17:14]
[@114,443:444 = '\r\n',              <NEWLINE>,          18:0]
[@115,444:444 = '\n',                <95>,               17:0]
[@116,445:444 = '<EOF>',             <EOF>,              18:0]
```

This looks very different from the OpenQASM result, which was riddled with new, quantum-specific keywords and constructs. That's because while OpenQASM3 is its own standalone high-level language (albeit with limitations), Qiskit is simply embedded into Python as a package. So, while the quantum-specific identifiers we expect **do** show up (`qreg` vs `creg`, and operations like `cx` and `measure`), they don't get their own token types - they're just `<NAME>`s, much like our function name `BellState` or the package name `numpy`.

### Parse Tree Generation

With `grun Python3 file_input -gui`, we can generate the parse tree for this code:

![Bell ANTLR4 Parse Tree](bell_states/bell_parse_tree.png)

One thing that stands out in this is how, because of the way arguments are constructed in this specific rendition of the Python grammar, their subtrees are extremely and seemingly unnecessarily deep.

Finally, [here](bell_states/bell.ll) is the LLVM generated by Numba with the environmental variable `NUMBA_DUMP_LLVM = 1`.
