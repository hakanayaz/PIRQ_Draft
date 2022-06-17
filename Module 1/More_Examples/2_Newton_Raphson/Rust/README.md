# Newton-Raphson: Rust to IR

Before we dive into the code sample for Rust, it's important to have an understanding of the types built into the language. You can review them [here](https://web.mit.edu/rust-lang_v1.25/arch/amd64_ubuntu1404/share/doc/rust/html/book/second-edition/ch03-02-data-types.html).

## Sample Code

Our implementation of the Newton-Raphson method in Rust is given here:

```rust
const EPSILON: f32 = 0.001;

// Newton Raphson Method for extended example of creation IR:
// The function is : (4/3)x^3 - (3/2)x^2 + 8
fn function(x: f32) -> f32 {
    return (4./ 3.)*(x*x*x) - (3./ 2.)*(x*x) + 8.
}
// Derivative of the function
fn derivedfunction(x: f32) -> f32 {
    return 4.*(x*x) - 3.*x
}
//Function to find the root with using Newton Raphson
fn newton_raphson(_x: f32) {
    let mut x: f32 = 5.;
    let mut h = function(x) / derivedfunction(x);
    let abs_h = h.abs();
    while abs_h >= EPSILON {
        h = function(x) / derivedfunction(x);
        x = x - h;
        if h == 0. {
            break
        }
    }
    println!("The value of the root is: {}", x);
}

fn main() {
    let x0: f32 = 5.;
    newton_raphson(x0);
}
```

## Rust IR

Next, we translate this into LLVM IR. In the [first Rust tutorial](../../../1_Simple_Function/Rust/), we gave details and examples of Rust's internal IRs: High-Level Intermediate Representation (HIR), Typed High-Level Intermediate Representation (THIR), and Middle Intermediate Representation (MIR). If you are looking for an understanding of those, check that tutorial out.

Here, we jump straight to LLVM, where our Rust code is represented as:

```rust
; ModuleID = 'Newton_Raphson.b67bc02f-cgu.0'
source_filename = "Newton_Raphson.b67bc02f-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline uwtable
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he479d5553855c122E(void ()* %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17h8ece215ba940ca6aE(void ()* %f)
  br label %bb1

bb1:                                              ; preds = %start
; invoke core::hint::black_box
  invoke void @_ZN4core4hint9black_box17h8296011047919989E()
          to label %bb2 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  %3 = extractvalue { i8*, i32 } %1, 1
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %2, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  ret void

bb4:                                              ; preds = %bb3
  %6 = bitcast { i8*, i32 }* %0 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1
  resume { i8*, i32 } %11
}
...
...

attributes #0 = { noinline uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{}
!3 = !{i64 1}
!4 = !{i8 0, i8 2}
!5 = !{i64 8}
!6 = !{i32 3209153}
```

As seen in the results IR representation is long and hard to read. That's why full version is in the directory.
