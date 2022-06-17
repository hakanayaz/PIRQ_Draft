# OOP: C++ to IR

This example will walk through how intermediate representations handles some of the OOP functionality we expect of many high level programming languages. The sample code can be found in `qubit.cpp`. It defines a simple `Qubit` class (which is probably not actually useful in any way, but is meant just as a simple example):

``` C++
class Qubit {
    public:
        double up;
        double down;
};
```

We will give the `Qubit` class a toy method as well, to implement a simple X "gate".

``` C++
class Qubit {
    public:
        double up;
        double down;

        Qubit (double u, double d) {
            this->up = u;
            this->down = d;
        }

        void X() {
            double temp = this->up;
            this->up = this->down;
            this->down = temp;
        }
};
```

The last part of the code is just using this class by instantiating a Qubit and X-ing it.

``` C++
int main() {
    Qubit q1 = Qubit(1, 0);
    q1.X();
    std::cout << "Spin Up: " << q1.up << "\n";
    std::cout << "Spin Down: " << q1.down << "\n";
}
```

As expected, (if you'll allow me to skip ahead a bit to post-compilation), when we run the `Qubit.cpp` program we receive this output in the terminal.

```C
Spin Up: 0
Spin Down: 1
```

Now, let's dive into the stages of compilation which we pass through before reaching IR. Just as in our other C++ examples, we can use a command to print out these stages. We type `clang++ -ccc-print-phases qubit.cpp`, and we can see the phases:

``` C++
            +- 0: input, "qubit.cpp", c++
         +- 1: preprocessor, {0}, c++-cpp-output
      +- 2: compiler, {1}, ir
   +- 3: backend, {2}, assembler
+- 4: assembler, {3}, object
5: linker, {4}, image
```

We are most interested in stages 1 and 2. They will take our source code all the way down into IR, which is still human readable.

The first step in preprocessing/compilation is the generation of a token stream by the Lexical Analyzer. We can view this with the command `clang++ -c -Xclang -dump-tokens qubit.cpp`, which turns our input code into the following token stream:

``` C++
class 'class'           [StartOfLine]                  Loc=<qubit.cpp:5:1>
identifier 'Qubit'                     [LeadingSpace]  Loc=<qubit.cpp:5:7>
l_brace '{'                            [LeadingSpace]  Loc=<qubit.cpp:5:13>
public 'public'         [StartOfLine]  [LeadingSpace]  Loc=<qubit.cpp:6:5>
colon ':'                                              Loc=<qubit.cpp:6:11>
double 'double'         [StartOfLine]  [LeadingSpace]  Loc=<qubit.cpp:7:9>
identifier 'up'                        [LeadingSpace]  Loc=<qubit.cpp:7:16>
semi ';'                                               Loc=<qubit.cpp:7:18>
double 'double'         [StartOfLine]  [LeadingSpace]  Loc=<qubit.cpp:8:9>
identifier 'down'                      [LeadingSpace]  Loc=<qubit.cpp:8:16>
semi ';'                                               Loc=<qubit.cpp:8:20>
identifier 'Qubit'      [StartOfLine]  [LeadingSpace]  Loc=<qubit.cpp:10:9>
l_paren '('                            [LeadingSpace]  Loc=<qubit.cpp:10:15>
double 'double'                                        Loc=<qubit.cpp:10:16>
identifier 'u'                         [LeadingSpace]  Loc=<qubit.cpp:10:23>
comma ','                                              Loc=<qubit.cpp:10:24>
double 'double'                        [LeadingSpace]  Loc=<qubit.cpp:10:26>
identifier 'd'                         [LeadingSpace]  Loc=<qubit.cpp:10:33>
r_paren ')'                                            Loc=<qubit.cpp:10:34>
l_brace '{'                            [LeadingSpace]  Loc=<qubit.cpp:10:36>
this 'this'             [StartOfLine]  [LeadingSpace]  Loc=<qubit.cpp:11:13>
arrow '->'                                             Loc=<qubit.cpp:11:17>
identifier 'up'                                        Loc=<qubit.cpp:11:19>
equal '='                              [LeadingSpace]  Loc=<qubit.cpp:11:22>
identifier 'u'                         [LeadingSpace]  Loc=<qubit.cpp:11:24>
semi ';'                                               Loc=<qubit.cpp:11:25>
this 'this'             [StartOfLine]  [LeadingSpace]  Loc=<qubit.cpp:12:13>
arrow '->'                                             Loc=<qubit.cpp:12:17>
identifier 'down'                                      Loc=<qubit.cpp:12:19>
equal '='                              [LeadingSpace]  Loc=<qubit.cpp:12:24>
identifier 'd'                         [LeadingSpace]  Loc=<qubit.cpp:12:26>
semi ';'                                               Loc=<qubit.cpp:12:27>
r_brace '}'             [StartOfLine]  [LeadingSpace]  Loc=<qubit.cpp:13:9>
void 'void'             [StartOfLine]  [LeadingSpace]  Loc=<qubit.cpp:15:9>
identifier 'X'                         [LeadingSpace]  Loc=<qubit.cpp:15:14>
l_paren '('                                            Loc=<qubit.cpp:15:15>
r_paren ')'                                            Loc=<qubit.cpp:15:16>
l_brace '{'                            [LeadingSpace]  Loc=<qubit.cpp:15:18>
double 'double'         [StartOfLine]  [LeadingSpace]  Loc=<qubit.cpp:16:13>
identifier 'temp'                      [LeadingSpace]  Loc=<qubit.cpp:16:20>
equal '='                              [LeadingSpace]  Loc=<qubit.cpp:16:25>
this 'this'                            [LeadingSpace]  Loc=<qubit.cpp:16:27>
arrow '->'                                             Loc=<qubit.cpp:16:31>
identifier 'up'                                        Loc=<qubit.cpp:16:33>
semi ';'                                               Loc=<qubit.cpp:16:35>
this 'this'             [StartOfLine]  [LeadingSpace]  Loc=<qubit.cpp:17:13>
arrow '->'                                             Loc=<qubit.cpp:17:17>
identifier 'up'                                        Loc=<qubit.cpp:17:19>
equal '='                              [LeadingSpace]  Loc=<qubit.cpp:17:22>
this 'this'                            [LeadingSpace]  Loc=<qubit.cpp:17:24>
arrow '->'                                             Loc=<qubit.cpp:17:28>
identifier 'down'                                      Loc=<qubit.cpp:17:30>
semi ';'                                               Loc=<qubit.cpp:17:34>
this 'this'             [StartOfLine]  [LeadingSpace]  Loc=<qubit.cpp:18:13>
arrow '->'                                             Loc=<qubit.cpp:18:17>
identifier 'down'                                      Loc=<qubit.cpp:18:19>
equal '='                              [LeadingSpace]  Loc=<qubit.cpp:18:24>
identifier 'temp'                      [LeadingSpace]  Loc=<qubit.cpp:18:26>
semi ';'                                               Loc=<qubit.cpp:18:30>
r_brace '}'             [StartOfLine]  [LeadingSpace]  Loc=<qubit.cpp:19:9>
r_brace '}'             [StartOfLine]                  Loc=<qubit.cpp:20:1>
semi ';'                                               Loc=<qubit.cpp:20:2>
int 'int'               [StartOfLine]                  Loc=<qubit.cpp:22:1>
identifier 'main'                      [LeadingSpace]  Loc=<qubit.cpp:22:5>
l_paren '('                                            Loc=<qubit.cpp:22:9>
r_paren ')'                                            Loc=<qubit.cpp:22:10>
l_brace '{'                            [LeadingSpace]  Loc=<qubit.cpp:22:12>
identifier 'Qubit'      [StartOfLine]  [LeadingSpace]  Loc=<qubit.cpp:23:5>
identifier 'q1'                        [LeadingSpace]  Loc=<qubit.cpp:23:11>
equal '='                              [LeadingSpace]  Loc=<qubit.cpp:23:14>
identifier 'Qubit'                     [LeadingSpace]  Loc=<qubit.cpp:23:16>
l_paren '('                                            Loc=<qubit.cpp:23:21>
numeric_constant '1'                                   Loc=<qubit.cpp:23:22>
comma ','                                              Loc=<qubit.cpp:23:23>
numeric_constant '0'                   [LeadingSpace]  Loc=<qubit.cpp:23:25>
r_paren ')'                                            Loc=<qubit.cpp:23:26>
semi ';'                                               Loc=<qubit.cpp:23:27>
identifier 'q1'         [StartOfLine]  [LeadingSpace]  Loc=<qubit.cpp:24:5>
period '.'                                             Loc=<qubit.cpp:24:7>
identifier 'X'                                         Loc=<qubit.cpp:24:8>
l_paren '('                                            Loc=<qubit.cpp:24:9>
r_paren ')'                                            Loc=<qubit.cpp:24:10>
semi ';'                                               Loc=<qubit.cpp:24:11>
r_brace '}'             [StartOfLine]                  Loc=<qubit.cpp:27:1>
eof ''                                                 Loc=<qubit.cpp:27:2>
```

Some things to notice from this step are:

1. Punctuation marks, such as '(', ';', '}' often receive their own tokens. These will help guide the parser later on.
2. In a typed language such as C++, datatypes are treated as keywords. 'double' and 'void' both appear above. These are also crucial later on and enable the compiler to spot type mismatches.
3. Basically everything which is not a number, keyword (such as 'return'), operator ('equal' or 'arrow') or punctuation character is called an _identifier_. These include variable names, function names, and attribute names. They often have associated metadata (for example, their location in memory) which is stored in a _symbol table_, a hash-like data structure.

Next comes the generation of the _AST_, or Abstract Syntax Tree. We type `clang++ -c -Xclang -ast-dump qubit.cpp`, and get the output:

```C++
TranslationUnitDecl 0xb86c38 <<invalid sloc>> <invalid sloc>
|-TypedefDecl 0xb87510 <<invalid sloc>> <invalid sloc> implicit __int128_t '__int128'
| `-BuiltinType 0xb871d0 '__int128'
|-TypedefDecl 0xb87580 <<invalid sloc>> <invalid sloc> implicit __uint128_t 'unsigned __int128'
| `-BuiltinType 0xb871f0 'unsigned __int128'
|-TypedefDecl 0xb878f8 <<invalid sloc>> <invalid sloc> implicit __NSConstantString '__NSConstantString_tag'
| `-RecordType 0xb87670 '__NSConstantString_tag'
|   `-CXXRecord 0xb875d8 '__NSConstantString_tag'
|-TypedefDecl 0xb87990 <<invalid sloc>> <invalid sloc> implicit __builtin_ms_va_list 'char *'
| `-PointerType 0xb87950 'char *'
|   `-BuiltinType 0xb86cd0 'char'
|-TypedefDecl 0xbc4ad8 <<invalid sloc>> <invalid sloc> implicit __builtin_va_list '__va_list_tag [1]'
| `-ConstantArrayType 0xbc4a80 '__va_list_tag [1]' 1 
|   `-RecordType 0xb87a80 '__va_list_tag'
|     `-CXXRecord 0xb879e8 '__va_list_tag'
|-CXXRecordDecl 0xbc4b30 <qubit.cpp:5:1, line:20:1> line:5:7 referenced class Qubit definition
| |-DefinitionData pass_in_registers standard_layout trivially_copyable has_user_declared_ctor can_const_default_init
| | |-DefaultConstructor
| | |-CopyConstructor simple trivial has_const_param implicit_has_const_param
| | |-MoveConstructor exists simple trivial
| | |-CopyAssignment trivial has_const_param needs_implicit implicit_has_const_param
| | |-MoveAssignment exists simple trivial needs_implicit
| | `-Destructor simple irrelevant trivial
| |-CXXRecordDecl 0xbc4c48 <col:1, col:7> col:7 implicit referenced class Qubit
| |-AccessSpecDecl 0xbc4cd8 <line:6:5, col:11> col:5 public
| |-FieldDecl 0xbc4d18 <line:7:9, col:16> col:16 referenced up 'double'
| |-FieldDecl 0xbc4d80 <line:8:9, col:16> col:16 referenced down 'double'
| |-CXXConstructorDecl 0xbc4f78 <line:10:9, line:13:9> line:10:9 used Qubit 'void (double, double)'
| | |-ParmVarDecl 0xbc4de8 <col:16, col:23> col:23 used u 'double'
| | |-ParmVarDecl 0xbc4e68 <col:26, col:33> col:33 used d 'double'
| | `-CompoundStmt 0xbc5260 <col:36, line:13:9>
| |   |-BinaryOperator 0xbc51a8 <line:11:13, col:24> 'double' lvalue '='
| |   | |-MemberExpr 0xbc5140 <col:13, col:19> 'double' lvalue ->up 0xbc4d18
| |   | | `-CXXThisExpr 0xbc5130 <col:13> 'Qubit *' this
| |   | `-ImplicitCastExpr 0xbc5190 <col:24> 'double' <LValueToRValue>
| |   |   `-DeclRefExpr 0xbc5170 <col:24> 'double' lvalue ParmVar 0xbc4de8 'u' 'double'
| |   `-BinaryOperator 0xbc5240 <line:12:13, col:26> 'double' lvalue '='
| |     |-MemberExpr 0xbc51d8 <col:13, col:19> 'double' lvalue ->down 0xbc4d80
| |     | `-CXXThisExpr 0xbc51c8 <col:13> 'Qubit *' this
| |     `-ImplicitCastExpr 0xbc5228 <col:26> 'double' <LValueToRValue>
| |       `-DeclRefExpr 0xbc5208 <col:26> 'double' lvalue ParmVar 0xbc4e68 'd' 'double'
| |-CXXMethodDecl 0xbc5078 <line:15:9, line:19:9> line:15:14 used X 'void ()'
| | `-CompoundStmt 0xbc54c0 <col:18, line:19:9>
| |   |-DeclStmt 0xbc5358 <line:16:13, col:35>
| |   | `-VarDecl 0xbc5298 <col:13, col:33> col:20 used temp 'double' cinit
| |   |   `-ImplicitCastExpr 0xbc5340 <col:27, col:33> 'double' <LValueToRValue>
| |   |     `-MemberExpr 0xbc5310 <col:27, col:33> 'double' lvalue ->up 0xbc4d18
| |   |       `-CXXThisExpr 0xbc5300 <col:27> 'Qubit *' this
| |   |-BinaryOperator 0xbc5408 <line:17:13, col:30> 'double' lvalue '='
| |   | |-MemberExpr 0xbc5380 <col:13, col:19> 'double' lvalue ->up 0xbc4d18
| |   | | `-CXXThisExpr 0xbc5370 <col:13> 'Qubit *' this
| |   | `-ImplicitCastExpr 0xbc53f0 <col:24, col:30> 'double' <LValueToRValue>
| |   |   `-MemberExpr 0xbc53c0 <col:24, col:30> 'double' lvalue ->down 0xbc4d80
| |   |     `-CXXThisExpr 0xbc53b0 <col:24> 'Qubit *' this
| |   `-BinaryOperator 0xbc54a0 <line:18:13, col:26> 'double' lvalue '='
| |     |-MemberExpr 0xbc5438 <col:13, col:19> 'double' lvalue ->down 0xbc4d80
| |     | `-CXXThisExpr 0xbc5428 <col:13> 'Qubit *' this
| |     `-ImplicitCastExpr 0xbc5488 <col:26> 'double' <LValueToRValue>
| |       `-DeclRefExpr 0xbc5468 <col:26> 'double' lvalue Var 0xbc5298 'temp' 'double'
| |-CXXConstructorDecl 0xbc5748 <line:5:7> col:7 implicit constexpr Qubit 'void (const Qubit &)' inline default trivial noexcept-unevaluated 0xbc5748
| | `-ParmVarDecl 0xbc5858 <col:7> col:7 'const Qubit &'
| |-CXXConstructorDecl 0xbc58f8 <col:7> col:7 implicit used constexpr Qubit 'void (Qubit &&) noexcept' inline default trivial
| | |-ParmVarDecl 0xbf42a8 <col:7> col:7 used 'Qubit &&'
| | |-CXXCtorInitializer Field 0xbc4d18 'up' 'double'
| | | `-ImplicitCastExpr 0xbf4570 <col:7> 'double' <LValueToRValue>
| | |   `-MemberExpr 0xbf4540 <col:7> 'double' xvalue .up 0xbc4d18
| | |     `-CXXStaticCastExpr 0xbf4510 <col:7> 'Qubit' xvalue static_cast<class Qubit &&> <NoOp>
| | |       `-DeclRefExpr 0xbf44e0 <col:7> 'Qubit' lvalue ParmVar 0xbf42a8 '' 'Qubit &&'
| | |-CXXCtorInitializer Field 0xbc4d80 'down' 'double'
| | | `-ImplicitCastExpr 0xbf4640 <col:7> 'double' <LValueToRValue>
| | |   `-MemberExpr 0xbf4610 <col:7> 'double' xvalue .down 0xbc4d80
| | |     `-CXXStaticCastExpr 0xbf45e0 <col:7> 'Qubit' xvalue static_cast<class Qubit &&> <NoOp>
| | |       `-DeclRefExpr 0xbf45b0 <col:7> 'Qubit' lvalue ParmVar 0xbf42a8 '' 'Qubit &&'
| | `-CompoundStmt 0xbf4690 <col:7>
| `-CXXDestructorDecl 0xbf4388 <col:7> col:7 implicit referenced ~Qubit 'void () noexcept' inline default trivial
`-FunctionDecl 0xbc5540 <line:22:1, line:27:1> line:22:5 main 'int ()'
  `-CompoundStmt 0xbf4770 <col:12, line:27:1>
    |-DeclStmt 0xbf46e8 <line:23:5, col:27>
    | `-VarDecl 0xbc5660 <col:5, col:26> col:11 used q1 'Qubit' cinit
    |   `-ExprWithCleanups 0xbf46d0 <col:16, col:26> 'Qubit'
    |     `-CXXConstructExpr 0xbf46a0 <col:16, col:26> 'Qubit' 'void (Qubit &&) noexcept' elidable
    |       `-MaterializeTemporaryExpr 0xbf4498 <col:16, col:26> 'Qubit' xvalue
    |         `-CXXTemporaryObjectExpr 0xbf4348 <col:16, col:26> 'Qubit' 'void (double, double)'
    |           |-ImplicitCastExpr 0xbf4318 <col:22> 'double' <IntegralToFloating>
    |           | `-IntegerLiteral 0xbc56d8 <col:22> 'int' 1
    |           `-ImplicitCastExpr 0xbf4330 <col:25> 'double' <IntegralToFloating>
    |             `-IntegerLiteral 0xbc56f8 <col:25> 'int' 0
    `-CXXMemberCallExpr 0xbf4750 <line:24:5, col:10> 'void'
      `-MemberExpr 0xbf4720 <col:5, col:8> '<bound member function type>' .X 0xbc5078
        `-DeclRefExpr 0xbf4700 <col:5> 'Qubit' lvalue Var 0xbc5660 'q1' 'Qubit'
```

While some of this is opaque and not instructive (in particular, the first dozen or so lines), we can still glean some important insights from this step, such as;

1. Before we descend to IR, we can see how clang internally represents class structures. The Qubit class starts at the line labelled `-CXXRecordDecl 0xbc4b30`, where the parser encounters the `class` token which we saw at the start of the lexical analysis section. A class has nodes for information about its constructor, destructor, access specifiers, and one per attribute of that class.
2. Methods are similarly pretty easy to read. The `X()` method we defined begins with the line `-CXXMethodDecl 0xbc5078`. Within it, each line of code is subdivided into statements according to the _grammar_ of the parser which generated this AST. The structure of these nodes allows the IR to be generated easily. For example, each `=` sign in our original code is represented by a `BinaryOperator` node, which two children. The LHS comes first, followed by the RHS - when traversing the AST in order to generate IR, it is easy to generate a sequence of low level Load - Modify - Store instructions without having to double back.
3. Some "annotation" goes on at this step. For example, the parser recognizes that it needs to cast the numeric constants 1 and 0 from `int` types to `double`, and passes these instructions on with the tree nodes labeled `ImplicitCastExpr`.

Finally, we examine the IR for this program using `clang++ -S -emit-llvm qubit.cpp -o qubit.ll`:

``` C++
; ModuleID = 'qubit.cpp'
source_filename = "qubit.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.Qubit = type { double, double }

$_ZN5QubitC2Edd = comdat any

$_ZN5Qubit1XEv = comdat any

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %class.Qubit, align 8
  call void @_ZN5QubitC2Edd(%class.Qubit* %1, double 1.000000e+00, double 0.000000e+00)
  call void @_ZN5Qubit1XEv(%class.Qubit* %1)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5QubitC2Edd(%class.Qubit* %0, double %1, double %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %class.Qubit*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %class.Qubit* %0, %class.Qubit** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load %class.Qubit*, %class.Qubit** %4, align 8
  %8 = load double, double* %5, align 8
  %9 = getelementptr inbounds %class.Qubit, %class.Qubit* %7, i32 0, i32 0
  store double %8, double* %9, align 8
  %10 = load double, double* %6, align 8
  %11 = getelementptr inbounds %class.Qubit, %class.Qubit* %7, i32 0, i32 1
  store double %10, double* %11, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5Qubit1XEv(%class.Qubit* %0) #1 comdat align 2 {
  %2 = alloca %class.Qubit*, align 8
  %3 = alloca double, align 8
  store %class.Qubit* %0, %class.Qubit** %2, align 8
  %4 = load %class.Qubit*, %class.Qubit** %2, align 8
  %5 = getelementptr inbounds %class.Qubit, %class.Qubit* %4, i32 0, i32 0
  %6 = load double, double* %5, align 8
  store double %6, double* %3, align 8
  %7 = getelementptr inbounds %class.Qubit, %class.Qubit* %4, i32 0, i32 1
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds %class.Qubit, %class.Qubit* %4, i32 0, i32 0
  store double %8, double* %9, align 8
  %10 = load double, double* %3, align 8
  %11 = getelementptr inbounds %class.Qubit, %class.Qubit* %4, i32 0, i32 1
  store double %10, double* %11, align 8
  ret void
}

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
```

Here, we start to see more into the nitty gritty. For example,

1. Notice how classes define a new datatype, and the IR has to specify how much memory should be allocated for a Qubit instance and how it should be aligned within its data block on the line beginning `%1 = alloca...`. These are things we generally don't think about when writing high-level code, but here many layers of abstraction are stripped away.
2. Similarly, we can no longer get away with declaring our data types as `doubles` and yet passing in integral values like 1 and 0. LLVM IR is very type-conscientious; when it sees `double`, it truly expects a `double`. This is where the implicit casting we noted in the AST shows itself. 1 is represented as `1.000000e+00`, and 0 similarly.
3. Finally, notice how the simple constructor - a mere 3 lines of code in C++! - has been enlarged (the function labeled `@_ZN5QubitC2Edd`). This is partly due to the low level nature of LLVM IR, and especially to its usage of _SSA_ or Static Single Assignment. This means that each variable (ascending numbers beginning with `%`, which denotes that they are local) can only be assigned ONCE. I can't write `x = 5` and then `x = 4` on the next line, the way I could in high-level code. So, while only three distinct objects or values are being manipulated (the `Qubit` allocated to `%4` and the two `double` values passed in as arguments stored in `%1` and `%2`), ELEVEN local variables which often point to the exact same locations are assigned as the IR instructs the computer to allocate memory and then maneuvers the double values into the correct slots within the `Qubit` object. While this may seem cumbersome, it allows for optimizations to be performed efficiently later on.
