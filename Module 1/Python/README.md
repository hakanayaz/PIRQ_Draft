# Python IR Tutorials

In this tutorials we will look for the compiler architecture of the Python. While looking all the stages we will use diffrent tools and after the tutorials, will share more extra materials. As known python is interpreted, high level, general purpose programming languages. Python is dynamically typed and garbage collected.

Because python is interpreted language not compiled one but compilation is a step and first step is bytecode. Instead of translating machine code like C/C++ and Rust, python use bytecode which is low level set on instructions that can be execute with interpreter.

## ByteCode

As an example, same function which is give below will be use.

```Python
def f(a,b):
    x = a
    if (a > b):
        x += 20
    else:
        x += b
    return x
```

To be able to get bytecode results first install the `dis` module then use the f funtion to dump bytecode representation of it. Module dis has a function name `dis()` which can disassable the code similar to the object oriented programming. In this part of the tutorial `diassable()` function will use as a `dis.dis()`:

```Python
# Install the "dis"
pip install dis
```

Then use this line of code to dump the bytecode:

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

As seen in the output 7 lines of code gave 32 byte results. Lets look line by line to the outputs:

```Python
LOAD_FAST var_num

# This is pushes a reference to the object whose reference is co_varnames[var_num] onto the stack.
```

```Python
STORE_FAST var_num

# This is pops the top of the stack and stores it into an object whose reference is stored in co_varnames[var_num]
```

```Python
COMPARE_OP oparg

# This is perform a Boolean operation. In this case (>)
```

```Python
POP_JUMP_IF_FALSE target

# This is performs a conditional jump.
```

```Python
LOAD_CONST consti

# This is pushes the value of co_consts[consti] onto the stack.
```

Explanations are quite intuitive to read. Bytecode is storing as a .pyc file and in python3 you can find this file under   `__pycache__` subdirectory.

For more detailed explanation about byteCode and dis disassambler:

+ [Intro to ByteCode](https://opensource.com/article/18/4/introduction-python-bytecode)
+ [dis Disassabler](https://docs.python.org/3/library/dis.html)

## Generating Abstract Syntax Tree (AST)

While creating AST in python there are a lot of way to do it. One way to do it is using `ast` module which helps Python applications to create abstract syntax tree and helps to find out programmatically what the current grammar looks like. First we need to install the ast module:

```Python
pip install ast
# To install ast module in Python
```

Then we can use this code to dump ast.

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

After that output will be like:

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

More detailed explantion you can use this link: [.ast](https://docs.python.org/3/library/ast.html)

Also there are some Web-based AST viewers here is onf them to paste some code in and see the AST: [Web based .ast](https://python-ast-explorer.com/)

Also there is a Python IDE with AST explorer built in which you can find in this link: [Python IDE for AST](https://thonny.org/)

Also there is an IPython extension to show ASTs in Jupyter notebooks which you can find in this link: [IPython for AST](https://github.com/hchasestevens/show_ast)

Also you can use AST tools to assess code coverage with instrumenting in this link: [Instrumenting the AST](http://www.dalkescientific.com/writings/diary/archive/2010/02/22/instrumenting_the_ast.html)

## NUMBA IR

NUMBA is not working on my mac! I will find a way to finish this parts.
Maybe Adin.

## NUMBA IR to LLVM IR

NUMBA is not working on my mac! I will find a way to finish this parts.
Maybe Adin.
