# Newton-Raphson: C++ to IR

In this tutorial, we will focus on the Newton-Raphson algorithm written in C++ and create IR for the algorithm.

The sample code for the Newton-Raphson algorithm, written in C++, is given below:

```c
#include<stdlib.h>
#include<iostream>
#include<vector>
#include<string>
#include<algorithm>
#define EPSILON 0.001

// Newton-Raphson Method for extended example of creation IR:
// The function is : (4/3)x^3 - (3/2)x^2 + 8
double function(double x)
{
    return (4/3)*x*x*x - (3/2)*x*x + 8;
}

// Derivative of the function
double derivedFunction(double x)
{
    return 4*x*x - 3*x;
}

// Root finding via Newton-Raphson
void newtonRaphson(double x)
{
    double h = function(x) / derivedFunction(x);
    while (abs(h) >= EPSILON)
    {
        h = function(x)/derivedFunction(x);
        // Iteration
        // x(i+1) = x(i) - f(x) / f'(x)
        x = x - h;
    }
    std::cout << "The value of the root is : " << x;
}

int main()
{
    double x0 = 5; // Initial value
    newtonRaphson(x0);
    return 0;
}
```

As a next step, we will create front-emd LLVM IR with `clang` and put it into the directory becaue it is too long to represent here.

## IR Result

As mentioned, we put the human-readable .ll file output to the directory as a `newton_raphson.ll`.

The results show that the LLVM IR code version takes too much time to read and is a little complicated. We will use `opt` to optimize the old LLVM IR to the new LLVM IR.

## Middle End "opt"

In compiler infrastructure, `opt` is the middle-end, and what `opt` does is use the old LLVM-IR to create a new LLVM-IR. `opt` is a command-line tool used for visualization, analysis, and optimization. `opt` represents the program `.dot` format. We will use this code to optimize the old LLVM IR code to create an optimized version. After the optimization, the file size went down from 72kB to 22kB, as shown below.

```C
opt -S -mem2reg -instnamer newton_raphson.ll -o newton_raphson_opt.ll
```

*-S* write output in LLVM IR.

*-mem2reg* is the optimizer pass

After that we will get more optimized version of the LLVM IR .ll file. More details on `opt` you can use this link: [opt - LLVM optimizer](https://llvm.org/docs/CommandGuide/opt.html)

```C
; ModuleID = 'Newton_Raphson.ll'
source_filename = "Newton_Raphson.b67bc02f-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h17c627651b97c540E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i32 (i64**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hc5cac3af4fe74307E" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h28c1739fa76b0b03E" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h28c1739fa76b0b03E" to i8*) }>, align 8
@alloc11 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc12 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc11, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc14 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc42 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/9257f5aad02b65665a6e23e5b92938548302e129/library/core/src/fmt/mod.rs" }>, align 1
@alloc43 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc42, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\86\01\00\00\0D\00\00\00" }>, align 8
@alloc3 = private unnamed_addr constant <{ [26 x i8] }> <{ [26 x i8] c"The value of the root is: " }>, align 1
@alloc5 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc4 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [26 x i8] }>, <{ [26 x i8] }>* @alloc3, i32 0, i32 0, i32 0), [8 x i8] c"\1A\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc5, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: noinline uwtable
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he479d5553855c122E(void ()* %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %i = alloca { i8*, i32 }, align 8
  call void @_ZN4core3ops8function6FnOnce9call_once17h8ece215ba940ca6aE(void ()* %f)
  br label %bb1

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint9black_box17h8296011047919989E()
          to label %bb2 unwind label %cleanup

...
...
...

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{}
!3 = !{i64 1}
!4 = !{i64 8}
!5 = !{i32 3209153}
```

As a result we got simpler representation but as you can see we put the shorter version of it. If you want to see that details answer are in the upper directory. Now we will try to visualize it. To visualize LLVM IR we will use these steps;

To create control flow graph;

```c
opt -dot-cfg newton_raphson.ll
```

This code will create .dot file but these files are not visible that's why we need to use `ls -la` command to see hidden all folders. After that we will convert .dot file to .pdf file. To make this we will use this code;

```c
dot -Tpdf .().dot -o newton_raphson.pdf
```

Only tricky part in his process is after run the create cfg files computer produce lot of `.(name).dot` file. That's why we need to be careful while choosing it. In our case visualization part is come up like this:

![Newton Raphson cfg result in C](newton_raphson_c.png)

For more detailed explanation about LLVM's analysis and transform passes you can use this link: [Analysis Passes - LLVM](https://releases.llvm.org/4.0.0/docs/Passes.html#dot-cfg-only-print-cfg-of-function-to-dot-file-with-no-function-bodies)
