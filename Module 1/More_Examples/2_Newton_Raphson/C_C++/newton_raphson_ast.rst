TranslationUnitDecl 0x910d48 <<invalid sloc>> <invalid sloc>
|-TypedefDecl 0x911620 <<invalid sloc>> <invalid sloc> implicit __int128_t '__int128'
| `-BuiltinType 0x9112e0 '__int128'
|-TypedefDecl 0x911690 <<invalid sloc>> <invalid sloc> implicit __uint128_t 'unsigned __int128'
| `-BuiltinType 0x911300 'unsigned __int128'
|-TypedefDecl 0x911a08 <<invalid sloc>> <invalid sloc> implicit __NSConstantString '__NSConstantString_tag'
| `-RecordType 0x911780 '__NSConstantString_tag'
|   `-CXXRecord 0x9116e8 '__NSConstantString_tag'
|-TypedefDecl 0x911aa0 <<invalid sloc>> <invalid sloc> implicit __builtin_ms_va_list 'char *'
| `-PointerType 0x911a60 'char *'
|   `-BuiltinType 0x910de0 'char'
|-TypedefDecl 0x94ec28 <<invalid sloc>> <invalid sloc> implicit __builtin_va_list '__va_list_tag [1]'
| `-ConstantArrayType 0x94ebd0 '__va_list_tag [1]' 1 
|   `-RecordType 0x911b90 '__va_list_tag'
|     `-CXXRecord 0x911af8 '__va_list_tag'
|-FunctionDecl 0x94ed60 <newton_raphson.cpp:7:1, line:10:1> line:7:8 used function 'double (double)'
| |-ParmVarDecl 0x94ec98 <col:17, col:24> col:24 used x 'double'
| `-CompoundStmt 0x94f1c0 <line:8:1, line:10:1>
|   `-ReturnStmt 0x94f1b0 <line:9:5, col:38>
|     `-BinaryOperator 0x94f190 <col:12, col:38> 'double' '+'
|       |-BinaryOperator 0x94f138 <col:12, col:34> 'double' '-'
|       | |-BinaryOperator 0x94efd0 <col:12, col:22> 'double' '*'
|       | | |-BinaryOperator 0x94ef78 <col:12, col:20> 'double' '*'
|       | | | |-BinaryOperator 0x94ef20 <col:12, col:18> 'double' '*'
|       | | | | |-ImplicitCastExpr 0x94ef08 <col:12, col:16> 'double' <IntegralToFloating>
|       | | | | | `-ParenExpr 0x94eeb0 <col:12, col:16> 'int'
|       | | | | |   `-BinaryOperator 0x94ee90 <col:13, col:15> 'int' '/'
|       | | | | |     |-IntegerLiteral 0x94ee50 <col:13> 'int' 4
|       | | | | |     `-IntegerLiteral 0x94ee70 <col:15> 'int' 3
|       | | | | `-ImplicitCastExpr 0x94eef0 <col:18> 'double' <LValueToRValue>
|       | | | |   `-DeclRefExpr 0x94eed0 <col:18> 'double' lvalue ParmVar 0x94ec98 'x' 'double'
|       | | | `-ImplicitCastExpr 0x94ef60 <col:20> 'double' <LValueToRValue>
|       | | |   `-DeclRefExpr 0x94ef40 <col:20> 'double' lvalue ParmVar 0x94ec98 'x' 'double'
|       | | `-ImplicitCastExpr 0x94efb8 <col:22> 'double' <LValueToRValue>
|       | |   `-DeclRefExpr 0x94ef98 <col:22> 'double' lvalue ParmVar 0x94ec98 'x' 'double'
|       | `-BinaryOperator 0x94f118 <col:26, col:34> 'double' '*'
|       |   |-BinaryOperator 0x94f0c0 <col:26, col:32> 'double' '*'
|       |   | |-ImplicitCastExpr 0x94f0a8 <col:26, col:30> 'double' <IntegralToFloating>
|       |   | | `-ParenExpr 0x94f050 <col:26, col:30> 'int'
|       |   | |   `-BinaryOperator 0x94f030 <col:27, col:29> 'int' '/'
|       |   | |     |-IntegerLiteral 0x94eff0 <col:27> 'int' 3
|       |   | |     `-IntegerLiteral 0x94f010 <col:29> 'int' 2
|       |   | `-ImplicitCastExpr 0x94f090 <col:32> 'double' <LValueToRValue>
|       |   |   `-DeclRefExpr 0x94f070 <col:32> 'double' lvalue ParmVar 0x94ec98 'x' 'double'
|       |   `-ImplicitCastExpr 0x94f100 <col:34> 'double' <LValueToRValue>
|       |     `-DeclRefExpr 0x94f0e0 <col:34> 'double' lvalue ParmVar 0x94ec98 'x' 'double'
|       `-ImplicitCastExpr 0x94f178 <col:38> 'double' <IntegralToFloating>
|         `-IntegerLiteral 0x94f158 <col:38> 'int' 8
|-FunctionDecl 0x94f288 <line:13:1, line:16:1> line:13:8 used derivedFunction 'double (double)'
| |-ParmVarDecl 0x94f1f0 <col:24, col:31> col:31 used x 'double'
| `-CompoundStmt 0x94f4d8 <line:14:1, line:16:1>
|   `-ReturnStmt 0x94f4c8 <line:15:5, col:22>
|     `-BinaryOperator 0x94f4a8 <col:12, col:22> 'double' '-'
|       |-BinaryOperator 0x94f3f8 <col:12, col:16> 'double' '*'
|       | |-BinaryOperator 0x94f3a0 <col:12, col:14> 'double' '*'
|       | | |-ImplicitCastExpr 0x94f388 <col:12> 'double' <IntegralToFloating>
|       | | | `-IntegerLiteral 0x94f330 <col:12> 'int' 4
|       | | `-ImplicitCastExpr 0x94f370 <col:14> 'double' <LValueToRValue>
|       | |   `-DeclRefExpr 0x94f350 <col:14> 'double' lvalue ParmVar 0x94f1f0 'x' 'double'
|       | `-ImplicitCastExpr 0x94f3e0 <col:16> 'double' <LValueToRValue>
|       |   `-DeclRefExpr 0x94f3c0 <col:16> 'double' lvalue ParmVar 0x94f1f0 'x' 'double'
|       `-BinaryOperator 0x94f488 <col:20, col:22> 'double' '*'
|         |-ImplicitCastExpr 0x94f470 <col:20> 'double' <IntegralToFloating>
|         | `-IntegerLiteral 0x94f418 <col:20> 'int' 3
|         `-ImplicitCastExpr 0x94f458 <col:22> 'double' <LValueToRValue>
|           `-DeclRefExpr 0x94f438 <col:22> 'double' lvalue ParmVar 0x94f1f0 'x' 'double'
|-FunctionDecl 0x94f5c8 <line:19:1, line:30:1> line:19:6 used newtonRaphson 'void (double)'
| |-ParmVarDecl 0x94f508 <col:20, col:27> col:27 used x 'double'
| `-CompoundStmt 0x9790a0 <line:20:1, line:30:1>
|   |-DeclStmt 0x94f900 <line:21:5, col:48>
|   | `-VarDecl 0x94f688 <col:5, col:47> col:12 used h 'double' cinit
|   |   `-BinaryOperator 0x94f8e0 <col:16, col:47> 'double' '/'
|   |     |-CallExpr 0x94f7c0 <col:16, col:26> 'double'
|   |     | |-ImplicitCastExpr 0x94f7a8 <col:16> 'double (*)(double)' <FunctionToPointerDecay>
|   |     | | `-DeclRefExpr 0x94f758 <col:16> 'double (double)' lvalue Function 0x94ed60 'function' 'double (double)'
|   |     | `-ImplicitCastExpr 0x94f7e8 <col:25> 'double' <LValueToRValue>
|   |     |   `-DeclRefExpr 0x94f738 <col:25> 'double' lvalue ParmVar 0x94f508 'x' 'double'
|   |     `-CallExpr 0x94f8a0 <col:30, col:47> 'double'
|   |       |-ImplicitCastExpr 0x94f888 <col:30> 'double (*)(double)' <FunctionToPointerDecay>
|   |       | `-DeclRefExpr 0x94f868 <col:30> 'double (double)' lvalue Function 0x94f288 'derivedFunction' 'double (double)'
|   |       `-ImplicitCastExpr 0x94f8c8 <col:46> 'double' <LValueToRValue>
|   |         `-DeclRefExpr 0x94f848 <col:46> 'double' lvalue ParmVar 0x94f508 'x' 'double'
|   `-WhileStmt 0x978f68 <line:22:5, line:28:5>
|     |-BinaryOperator 0x94fa20 <line:22:12, line:3:17> 'bool' '||'
|     | |-BinaryOperator 0x94f970 <line:22:12, line:3:17> 'bool' '>='
|     | | |-ImplicitCastExpr 0x94f958 <line:22:12> 'double' <LValueToRValue>
|     | | | `-DeclRefExpr 0x94f918 <col:12> 'double' lvalue Var 0x94f688 'h' 'double'
|     | | `-FloatingLiteral 0x94f938 <line:3:17> 'double' 1.000000e-04
|     | `-BinaryOperator 0x94fa00 <line:22:28, line:3:17> 'bool' '<='
|     |   |-UnaryOperator 0x94f9c8 <line:22:28, col:29> 'double' prefix '-'
|     |   | `-ImplicitCastExpr 0x94f9b0 <col:29> 'double' <LValueToRValue>
|     |   |   `-DeclRefExpr 0x94f990 <col:29> 'double' lvalue Var 0x94f688 'h' 'double'
|     |   `-FloatingLiteral 0x94f9e0 <line:3:17> 'double' 1.000000e-04
|     `-CompoundStmt 0x978f48 <line:23:5, line:28:5>
|       |-BinaryOperator 0x978e58 <line:24:9, col:44> 'double' lvalue '='
|       | |-DeclRefExpr 0x94fa40 <col:9> 'double' lvalue Var 0x94f688 'h' 'double'
|       | `-BinaryOperator 0x978e38 <col:13, col:44> 'double' '/'
|       |   |-CallExpr 0x94fb00 <col:13, col:23> 'double'
|       |   | |-ImplicitCastExpr 0x94fae8 <col:13> 'double (*)(double)' <FunctionToPointerDecay>
|       |   | | `-DeclRefExpr 0x94fac8 <col:13> 'double (double)' lvalue Function 0x94ed60 'function' 'double (double)'
|       |   | `-ImplicitCastExpr 0x978d40 <col:22> 'double' <LValueToRValue>
|       |   |   `-DeclRefExpr 0x94faa8 <col:22> 'double' lvalue ParmVar 0x94f508 'x' 'double'
|       |   `-CallExpr 0x978df8 <col:27, col:44> 'double'
|       |     |-ImplicitCastExpr 0x978de0 <col:27> 'double (*)(double)' <FunctionToPointerDecay>
|       |     | `-DeclRefExpr 0x978dc0 <col:27> 'double (double)' lvalue Function 0x94f288 'derivedFunction' 'double (double)'
|       |     `-ImplicitCastExpr 0x978e20 <col:43> 'double' <LValueToRValue>
|       |       `-DeclRefExpr 0x978da0 <col:43> 'double' lvalue ParmVar 0x94f508 'x' 'double'
|       `-BinaryOperator 0x978f28 <line:27:9, col:17> 'double' lvalue '='
|         |-DeclRefExpr 0x978e78 <col:9> 'double' lvalue ParmVar 0x94f508 'x' 'double'
|         `-BinaryOperator 0x978f08 <col:13, col:17> 'double' '-'
|           |-ImplicitCastExpr 0x978ed8 <col:13> 'double' <LValueToRValue>
|           | `-DeclRefExpr 0x978e98 <col:13> 'double' lvalue ParmVar 0x94f508 'x' 'double'
|           `-ImplicitCastExpr 0x978ef0 <col:17> 'double' <LValueToRValue>
|             `-DeclRefExpr 0x978eb8 <col:17> 'double' lvalue Var 0x94f688 'h' 'double'
`-FunctionDecl 0x979110 <line:32:1, line:37:1> line:32:5 main 'int ()'
  `-CompoundStmt 0x9793e0 <line:33:1, line:37:1>
    |-DeclStmt 0x979290 <line:34:5, col:18>
    | `-VarDecl 0x9791f0 <col:5, col:17> col:12 used x0 'double' cinit
    |   `-ImplicitCastExpr 0x979278 <col:17> 'double' <IntegralToFloating>
    |     `-IntegerLiteral 0x979258 <col:17> 'int' 5
    |-CallExpr 0x979370 <line:35:5, col:21> 'void'
    | |-ImplicitCastExpr 0x979358 <col:5> 'void (*)(double)' <FunctionToPointerDecay>
    | | `-DeclRefExpr 0x979310 <col:5> 'void (double)' lvalue Function 0x94f5c8 'newtonRaphson' 'void (double)'
    | `-ImplicitCastExpr 0x979398 <col:19> 'double' <LValueToRValue>
    |   `-DeclRefExpr 0x9792f0 <col:19> 'double' lvalue Var 0x9791f0 'x0' 'double'
    `-ReturnStmt 0x9793d0 <line:36:5, col:12>
      `-IntegerLiteral 0x9793b0 <col:12> 'int' 0