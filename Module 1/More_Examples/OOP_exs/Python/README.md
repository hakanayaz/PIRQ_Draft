The code:

``` Python
class Qubit:
    def __init__(self, u, d):
        self.up = u
        self.down = d

    def X(self):
        temp = self.up
        self.up = self.down
        self.down = temp

    def CX(self, control):
        if control.down == 1:
            self.X()

    def print(self):
        print("Spin Up: ", self.up)
        print("Spin Down: ", self.down)


def main():
    q1 = Qubit(1, 0)
    q2 = Qubit(0, 1)

    q1.CX(q2)

    q1.print()
    q2.print()
```

The bytecode after using `dis.dis(Qubit)`

``` Python
Disassembly of CX:
 14           0 LOAD_FAST                1 (control)
              2 LOAD_ATTR                0 (down)
              4 LOAD_CONST               1 (1)
              6 COMPARE_OP               2 (==)
              8 POP_JUMP_IF_FALSE       18

 15          10 LOAD_FAST                0 (self)
             12 LOAD_METHOD              1 (X)
             14 CALL_METHOD              0
             16 POP_TOP
        >>   18 LOAD_CONST               0 (None)
             20 RETURN_VALUE

Disassembly of X:
  9           0 LOAD_FAST                0 (self)
              2 LOAD_ATTR                0 (up)
              4 STORE_FAST               1 (temp)

 10           6 LOAD_FAST                0 (self)
              8 LOAD_ATTR                1 (down)
             10 LOAD_FAST                0 (self)
             12 STORE_ATTR               0 (up)

 11          14 LOAD_FAST                1 (temp)
             16 LOAD_FAST                0 (self)
             18 STORE_ATTR               1 (down)
             20 LOAD_CONST               0 (None)
             22 RETURN_VALUE

Disassembly of __init__:
  5           0 LOAD_FAST                1 (u)
              2 LOAD_FAST                0 (self)
              4 STORE_ATTR               0 (up)

  6           6 LOAD_FAST                2 (d)
              8 LOAD_FAST                0 (self)
             10 STORE_ATTR               1 (down)
             12 LOAD_CONST               0 (None)
             14 RETURN_VALUE

Disassembly of print:
 18           0 LOAD_GLOBAL              0 (print)
              2 LOAD_CONST               1 ('Spin Up: ')
              4 LOAD_FAST                0 (self)
              6 LOAD_ATTR                1 (up)
              8 CALL_FUNCTION            2
             10 POP_TOP

 19          12 LOAD_GLOBAL              0 (print)
             14 LOAD_CONST               2 ('Spin Down: ')
             16 LOAD_FAST                0 (self)
             18 LOAD_ATTR                2 (down)
             20 CALL_FUNCTION            2
             22 POP_TOP
             24 LOAD_CONST               0 (None)
             26 RETURN_VALUE
```

The AST generated from `ast.parse(... Qubit code here ...)`:

``` Python
Module(
    body=[
        ClassDef(
            name='Qubit', 
            bases=[], 
            keywords=[], 
            body=[
                FunctionDef(
                    name='__init__', 
                    args=arguments(
                        posonlyargs=[], 
                        args=[
                            arg(
                                arg='self', 
                                annotation=None, 
                                type_comment=None), 
                            arg(
                                arg='u', 
                                annotation=None, 
                                type_comment=None), 
                            arg(arg='d', 
                            annotation=None, 
                            type_comment=None)], 
                        vararg=None, 
                        kwonlyargs=[], 
                        kw_defaults=[], 
                        kwarg=None, 
                        defaults=[]), 
                    body=[
                        Assign(
                            targets=[
                                Attribute(
                                    value=Name(id='self', ctx=Load()), 
                                    attr='up', 
                                    ctx=Store())], 
                            value=Name(id='u', ctx=Load()), 
                            type_comment=None), 
                        Assign(
                            targets=[
                                Attribute(
                                    value=Name(id='self', ctx=Load()), 
                                    attr='down', ctx=Store())], 
                            value=Name(id='d', ctx=Load()), 
                            type_comment=None)], 
                    decorator_list=[], 
                    returns=None, 
                    type_comment=None), 
                FunctionDef(
                    name='X', 
                    args=arguments(
                        posonlyargs=[], 
                        args=[
                            arg(
                                arg='self', 
                                annotation=None, 
                                type_comment=None)], 
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
                                Attribute(value=Name(id='self', ctx=Load()), 
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
                    type_comment=None), 
                FunctionDef(
                    name='CX', 
                    args=arguments(
                        posonlyargs=[], 
                        args=[
                            arg(
                                arg='self', 
                                annotation=None, 
                                type_comment=None), 
                            arg(
                                arg='control', 
                                annotation=None, 
                                type_comment=None)], 
                        vararg=None, 
                        kwonlyargs=[], 
                        kw_defaults=[], 
                        kwarg=None, 
                        defaults=[]), 
                    body=[
                        If(
                            test=Compare(
                                left=Attribute(
                                    value=Name(id='control', ctx=Load()), 
                                    attr='down', 
                                    ctx=Load()), 
                                ops=[Eq()], 
                                comparators=[Constant(value=1, kind=None)]), 
                            body=[
                                Expr(
                                    value=Call(
                                        func=Attribute(
                                            value=Name(id='self', ctx=Load()), 
                                            attr='X', 
                                            ctx=Load()), 
                                        args=[], 
                                        keywords=[]))], 
                            orelse=[])], 
                    decorator_list=[], 
                    returns=None, 
                    type_comment=None), 
                FunctionDef(
                    name='print', 
                    args=arguments(
                        posonlyargs=[], 
                        args=[
                            arg(
                                arg='self', 
                                annotation=None, 
                                type_comment=None)], 
                        vararg=None, 
                        kwonlyargs=[], 
                        kw_defaults=[], 
                        kwarg=None, 
                        defaults=[]), 
                    body=[
                        Expr(
                            value=Call(
                                func=Name(id='print', ctx=Load()), 
                                args=[
                                    Constant(value='Spin Up: ', kind=None), 
                                    Attribute(
                                        value=Name(id='self', ctx=Load()), 
                                        attr='up', 
                                        ctx=Load())], 
                                keywords=[])), 
                        Expr(
                            value=Call(
                                func=Name(id='print', ctx=Load()), 
                                args=[
                                    Constant(value='Spin Down: ', kind=None), 
                                    Attribute(
                                        value=Name(id='self', ctx=Load()), 
                                        attr='down', 
                                        ctx=Load())], 
                                keywords=[]))], 
                    decorator_list=[], 
                    returns=None, 
                    type_comment=None)], 
            decorator_list=[])], 
    type_ignores=[])
```

(Need a better way to viz this. Also, maybe break up into chunks and explain each a bit more)

Next comes Numba IR. One note - have to use @jitclass for classes (did it like this

from numba import jit, float32
from numba.experimental import jitclass

Qubit_fields = [
    ('up', float32),
    ('down', float32)
]

@jitclass(Qubit_fields))

The Numba IR is quite long and can be found in qubit.txt.