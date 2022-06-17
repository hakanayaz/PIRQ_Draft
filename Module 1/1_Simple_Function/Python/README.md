# Simple Function: Python to IR

In this tutorial, we examine the compiler architecture used to run python code. While looking at each stage, we will use different tools; extra materials and resources for these tools can be found below. While the C (if you've already seen it) tutorial was fairly straightforward, simply using different `clang` commands, python will be a bit more involved.

Python is an interpreted, high level, general purpose programming languages, which is dynamically typed and garbage collected. Because is is an _interpreted_, rather than a compiled language, we cannot go about things as we did in the C example. Python doesn't get compiled straight to machine code; instead, it is first translated into _bytecode_, a different sort of intermediate representation. Bytecode is a low level set of instructions which can be executed line-by-line with an interpreter.

## Bytecode

By now, we are familiar with the simple function we're dealing with in these first tutorials. It's implementation in python is given below.

```Python
def f(a,b):
    x = a
    if a > b:
        x += 20
    else:
        x += b
    return x
```

To see what this looks like in bytecode, we first need to install the `dis` module. The ByteCodes are also know as a set of instructions for the virtual machine. Now instal our `dis` module.

```Python
# Install the "dis" module
pip install dis
```

Once `dis` has been installed and imported, we use this line of code to dump the bytecode:

```Python
dis.dis(f)

# Output will be:

  2           0 LOAD_FAST                0 (a)
              2 STORE_FAST               2 (x)

  3           4 LOAD_FAST                0 (a)
              6 LOAD_FAST                1 (b)
              8 COMPARE_OP               4 (>)
             10 POP_JUMP_IF_FALSE       22

  4          12 LOAD_FAST                2 (x)
             14 LOAD_CONST               1 (20)
             16 INPLACE_ADD
             18 STORE_FAST               2 (x)
             20 JUMP_FORWARD             8 (to 30)

  6     >>   22 LOAD_FAST                2 (x)
             24 LOAD_FAST                1 (b)
             26 INPLACE_ADD
             28 STORE_FAST               2 (x)

  7     >>   30 LOAD_FAST                2 (x)
             32 RETURN_VALUE
```

As seen in the output, 7 lines of python source code are translated into 17 byte instructions. Let's examine the various instructions which appear in the output:

```Python
LOAD_FAST var_num

# This line pushes a reference to the object whose reference is co_varnames[var_num] onto the stack, loading a specific variable for easy access.
```

```Python
STORE_FAST var_num

# This pops an object off the top of the stack and stores it. It's reference is stored in co_varnames[var_num].
```

```Python
COMPARE_OP oparg

# This performs a Boolean operation. In our case, it's >
```

```Python
POP_JUMP_IF_FALSE target

# This performs a conditional jump, allowing for control flow.
```

```Python
LOAD_CONST consti

# This line pushes the value of co_consts[consti] onto the stack.
```

Once the basics are explained, bytecode is quite intuitive to read. It is stored as a .pyc file, and in python3 you can find this file under the `__pycache__` subdirectory.

For more detailed resources explaining bytecode and the `dis` disassambler:

+ [Intro to Bytecode](https://opensource.com/article/18/4/introduction-python-bytecode)
+ [dis Disassembler](https://docs.python.org/3/library/dis.html)

## Generating Abstract Syntax Tree (AST)

Even though python has the added capability of being interpreted as bytecode, it can also be compiled in a more standard manner, just like any other language we've seen. A key step in this process is the generation of the Abstract Syntax Tree.

There are many ways to create an AST in python. The simplest is to use the `ast` module. First we need to install it:

```Python
pip install ast
# To install ast module in Python
```

Then we can use this code to dump the AST of our function.

```Python
print(ast.dump(ast.parse("""
def f(a,b):
    x = a
    if (a > b):
        x += 20
    else:
        x += b
    return x"""), indent=4))
```

This will output a fully formed AST:

```Python
Module(
    body=[
        FunctionDef(
            name='f',
            args=arguments(
                posonlyargs=[],
                args=[
                    arg(arg='a'),
                    arg(arg='b')],
                kwonlyargs=[],
                kw_defaults=[],
                defaults=[]),
            body=[
                Assign(
                    targets=[
                        Name(id='x', ctx=Store())],
                    value=Name(id='a', ctx=Load())),
                If(
                    test=Compare(
                        left=Name(id='a', ctx=Load()),
                        ops=[
                            Gt()],
                        comparators=[
                            Name(id='b', ctx=Load())]),
                    body=[
                        AugAssign(
                            target=Name(id='x', ctx=Store()),
                            op=Add(),
                            value=Constant(value=20))],
                    orelse=[
                        AugAssign(
                            target=Name(id='x', ctx=Store()),
                            op=Add(),
                            value=Name(id='b', ctx=Load()))]),
                Return(
                    value=Name(id='x', ctx=Load()))],
            decorator_list=[])],
    type_ignores=[])
```

For more resources dedicated to exploring ASTs for python, feel free to check out:

+ The [documentation](https://docs.python.org/3/library/ast.html) for the `ast` module.

+ A [web-based AST viewer](https://python-ast-explorer.com/), which can be helpful for experimentation. Just paste in some python source code to see the resultant AST.

+ An [IPython extension](<https://github.com/hchasestevens/show_ast>) for AST support in Jupyter notebooks.

+ There's even an [IDE](https://thonny.org/) for python with a built-in AST explorer!

+ Finally, you can use AST tools to assess code coverage with instrumenting, [here](http://www.dalkescientific.com/writings/diary/archive/2010/02/22/instrumenting_the_ast.html).

## NUMBA IR

As stated at the beginning, python is an interpreted language. While its first step is translation to bytecode which can be run by an interpreter, it can still be compiled into machine code as well. Numba performs this for us. To use it, of course we first have to install it:

```Python
pip install numba
# To install numba module in Python
```

To view its IR, we must set the `NUMBA_DUMP_IR` environmental variable to 1. Then, using the Just-In-Time (JIT) compiler from Numba, we can see the Numba IR dump for our code. Note that this is an internal IR, and not yet the standardized LLVM we've been examining:

```Python
label 0:
    a = arg(0, name=a)                       ['a']
    b = arg(1, name=b)                       ['b']
    x = a                                    ['a', 'x']
    $10compare_op.3 = a > b                  ['$10compare_op.3', 'a', 'b']
    bool12 = global(bool: <class 'bool'>)    ['bool12']
    $12pred = call bool12($10compare_op.3, func=bool12, args=(Var($10compare_op.3, main.py:6),), kws=(), vararg=None, target=None) ['$10compare_op.3', '$12pred', 'bool12']
    branch $12pred, 14, 24                   ['$12pred']
label 14:
    $const16.1 = const(int, 20)              ['$const16.1']
    $18inplace_add.2 = inplace_binop(fn=<built-in function iadd>, immutable_fn=<built-in function add>, lhs=x, rhs=$const16.1, static_lhs=Undefined, static_rhs=Undefined) ['$18inplace_add.2', '$const16.1', 'x']
    x = $18inplace_add.2                     ['$18inplace_add.2', 'x']
    jump 32                                  []
label 24:
    $28inplace_add.2 = inplace_binop(fn=<built-in function iadd>, immutable_fn=<built-in function add>, lhs=x, rhs=b, static_lhs=Undefined, static_rhs=Undefined) ['$28inplace_add.2', 'b', 'x']
    x = $28inplace_add.2                     ['$28inplace_add.2', 'x']
    jump 32                                  []
label 32:
    $34return_value.1 = cast(value=x)        ['$34return_value.1', 'x']
    return $34return_value.1                 ['$34return_value.1']
```

While this may look like a lot, it is actually pretty clear. The parameters and variables are first defined in the first few lines, the boolean used in the if statement is evaluated and stored as `bool12`, and a conditional jump is executed. You can also see how the IR is clearly built out from an AST, as it has `lhs` and `rhs` pointers in its `inplace_binop` nodes (which instruct it to perform addition). These give away its tree-like structure.

## NUMBA IR to LLVM IR

The final step is to get the end product; a .ll file containing the LLVM IR of our original function. It's just as easy as the last step - we just set `NUMBA_DUMP_LLVM = 1` and we can sit back to watch the show.

``` Python
; ModuleID = "f$1"
target triple = "x86_64-pc-windows-msvc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"

@"_ZN08NumbaEnv8__main__5f_241B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dExx" = common global i8* null
define i32 @"_ZN8__main__5f_241B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dExx"(i64* noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo", i64 %"arg.a", i64 %"arg.b") 
{
entry:
  %"b" = alloca i64
  store i64 0, i64* %"b"
  %"x" = alloca i64
  store i64 0, i64* %"x"
  %"x.3" = alloca i64
  store i64 0, i64* %"x.3"
  br label %"B0"
B0:
  store i64 %"arg.b", i64* %"b"
  %".9" = load i64, i64* %"x"
  store i64 %"arg.a", i64* %"x"
  %".11" = load i64, i64* %"b"
  %".12" = icmp sgt i64 %"arg.a", %".11"
  br i1 %".12", label %"B14", label %"B24"
B14:
  %".14" = load i64, i64* %"b"
  store i64 0, i64* %"b"
  %".16" = load i64, i64* %"x"
  %".17" = add nsw i64 %".16", 20
  %".18" = load i64, i64* %"x"
  store i64 0, i64* %"x"
  %".21" = load i64, i64* %"x.3"
  store i64 %".17", i64* %"x.3"
  br label %"B32"
B24:
  %".24" = load i64, i64* %"x"
  %".25" = load i64, i64* %"b"
  %".26" = add nsw i64 %".24", %".25"
  %".27" = load i64, i64* %"x"
  store i64 0, i64* %"x"
  %".29" = load i64, i64* %"b"
  store i64 0, i64* %"b"
  %".31" = load i64, i64* %"x.3"
  store i64 %".26", i64* %"x.3"
  br label %"B32"
B32:
  %".34" = load i64, i64* %"x.3"
  %".35" = load i64, i64* %"x.3"
  store i64 0, i64* %"x.3"
  store i64 %".34", i64* %"retptr"
  ret i32 0
}
```

While this is a bit less readable than the Numba IR, we can see pretty clearly how it has been translated. The same chunks exist, and conveniently even the same label numbers are used, which make for very easy identification.
