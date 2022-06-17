# OOP: Python to IR

A common feature programmers have come to expect in high-level languages is support for Object Oriented Programming (OOP). The abstractions of classes, attributes, and methods allow for powerful coding techniques. Here, we will look at how they are lowered into IR, and what they look like internally.

We will be working with a toy class representing a TLS qubit. As a way to explore method definitions as well as how objects are actually used, we will define an X "gate" to use on our qubit. Here is the sample code:

``` Python
class Qubit:
    def __init__(self, u, d):
        self.up = u
        self.down = d

    def X(self):
        temp = self.up
        self.up = self.down
        self.down = temp


def main():
    q1 = Qubit(1, 0)

    q1.X()
    print("Spin Up: ", q1.up)
    print("Spin Down: ", q1.down)

```

As you've hopefully learned in the previous tutorials, Python is an _interpreted_ language. That means it can be turned into bytecode, a form which is executable by the interpreter. We generate that bytecode with the `dis` package. After installing and importing, we can call:

``` Python
dis.dis(Qubit)

# Output:

Disassembly of __init__:
 46           0 LOAD_FAST                1 (u)
              2 LOAD_FAST                0 (self)
              4 STORE_ATTR               0 (up)

 47           6 LOAD_FAST                2 (d)
              8 LOAD_FAST                0 (self)
             10 STORE_ATTR               1 (down)
             12 LOAD_CONST               0 (None)
             14 RETURN_VALUE

Disassembly of X:
 50           0 LOAD_FAST                0 (self)
              2 LOAD_ATTR                0 (up)
              4 STORE_FAST               1 (temp)

 51           6 LOAD_FAST                0 (self)
              8 LOAD_ATTR                1 (down)
             10 LOAD_FAST                0 (self)
             12 STORE_ATTR               0 (up)

 52          14 LOAD_FAST                1 (temp)
             16 LOAD_FAST                0 (self)
             18 STORE_ATTR               1 (down)
             20 LOAD_CONST               0 (None)
             22 RETURN_VALUE

```

Because in Python **everything** is an object, there is not much to look at here. The bytecode would look almost the exact same for declaring an array of length 2 and switching the elements; no extra machinery is really required for a user defined object. The only instructions of note are the `LOAD/STORE_ATTR` commands, which are able to reach into larger data objects.

The bytecode for `main` is similarly uninteresting, but we include it for completeness:

``` Python
dis.dis(main)

# Output

 56           0 LOAD_GLOBAL              0 (Qubit)
              2 LOAD_CONST               1 (1)
              4 LOAD_CONST               2 (0)
              6 CALL_FUNCTION            2
              8 STORE_FAST               0 (q1)

 58          10 LOAD_FAST                0 (q1)
             12 LOAD_METHOD              1 (X)
             14 CALL_METHOD              0
             16 POP_TOP

 59          18 LOAD_GLOBAL              2 (print)
             20 LOAD_CONST               3 ('Spin Up: ')
             22 LOAD_FAST                0 (q1)
             24 LOAD_ATTR                3 (up)
             26 CALL_FUNCTION            2
             28 POP_TOP

 60          30 LOAD_GLOBAL              2 (print)
             32 LOAD_CONST               4 ('Spin Down: ')
             34 LOAD_FAST                0 (q1)
             36 LOAD_ATTR                4 (down)
             38 CALL_FUNCTION            2
             40 POP_TOP
             42 LOAD_CONST               0 (None)
             44 RETURN_VALUE
```

The next step in our investigation of OOP is to look into the AST, which we can do with the `ast` package. Here, the structure of the `Qubit` class really starts to emerge, as well as the strongly typed nature of Python. The most instructive segment is the `X` gate, which is presented here (the entire AST generated from `print(ast.dump(ast.parse(... Qubit code here ...)))` is attached [here](qubit_ast.rst), as it's a bit long). Here's the subtree for `X`:

``` Python
FunctionDef(
    name='X', 
    args=arguments(
        posonlyargs=[], 
        args=[
            arg(arg='self', annotation=None, type_comment=None)],
        vararg=None, 
        kwonlyargs=[], 
        kw_defaults=[], 
        kwarg=None, 
        defaults=[]), 
    body=[
        Assign(
            targets=[Name(id='temp', ctx=Store())], 
            value=Attribute(
                value=Name(id='self', ctx=Load()), 
                attr='up', 
                ctx=Load()), 
            type_comment=None), 
        Assign(
            targets=[
                Attribute(
                    value=Name(id='self', ctx=Load()), 
                    attr='up', 
                    ctx=Store())], 
            value=Attribute(
                value=Name(id='self', ctx=Load()), 
                attr='down', 
                ctx=Load()), 
            type_comment=None), 
        Assign(
            targets=[
                Attribute(
                    value=Name(id='self', ctx=Load()), 
                    attr='down', 
                    ctx=Store())], 
            value=Name(id='temp', ctx=Load()), 
            type_comment=None)], 
    decorator_list=[], 
    returns=None, 
    type_comment=None)
```

We can see that the argument clause is fairly simple and matches up with what we expect. The actual Python code for `X()` consists of three assignment statements

``` Python
temp = self.up
self.up = self.down
self.down = temp
```

which are captured by the three `Assign` nodes in the AST. If you remember the `BinaryOperator` node from the C++ example, you'll see that these follow the same pattern. Each `Assign` has a "target" left child, the variable which is going to be stored into, and a right child, the value which is going to be stored. The characteristic Load - Store pattern which assignments always follow is also clearly visible in the bytecode.

Finally, we want to see what the actual IR looks like. We will use Numba for this, as we did before. There's one note - we must use `@jitclass` from `numba.experimental` in order to compile a class. This is an indication that some added work on the backend is necessary in order to capture a user defined class in Numba IR. We run the following code, and remember to set the environmental variable `NUMBA_DUMP_IR = 1`.

``` Python
from numba import jit, float32
from numba.experimental import jitclass

Qubit_fields = [
    ('up', float32),
    ('down', float32)
]

@jitclass(Qubit_fields)
... Qubit code here ...

@jit
... main function here ...
```

The Numba IR is quite long, and can be found in `qubit.txt`. Likewise, the LLVM IR is in `qubit.ll`.
