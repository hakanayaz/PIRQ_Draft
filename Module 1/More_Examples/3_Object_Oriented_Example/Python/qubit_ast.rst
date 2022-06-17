Module(
    body=[
        ClassDef(
            name='Qubit', 
            bases=[], 
            keywords=[], body=[
                FunctionDef(
                    name='__init__', 
                    args=arguments(
                        posonlyargs=[], 
                        args=[
                            arg(arg='self', annotation=None, type_comment=None), 
                            arg(arg='u', annotation=None, type_comment=None), 
                            arg(arg='d', annotation=None, type_comment=None)], 
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
                                    attr='down', 
                                    ctx=Store())], 
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
                    type_comment=None)], 
            decorator_list=[])],
    type_ignores=[])
