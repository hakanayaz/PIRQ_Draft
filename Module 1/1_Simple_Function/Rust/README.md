# Simple Function: Rust to IR

In this tutorial we will build LLVM IR using our same simple function. This time, however, our starting point will be Rust programming languages.

## Rust Installation

The easiest way of installing Rust and Cargo for Linux and macOS systems is by using the command below:

```terminal
curl https://sh.Rustup.rs -sSf | sh
```

After installation you will get this messages:

```terminal
Rust is installed now. Great!
```

On Windows systems you need to download [Rustup-init.exe](https://www.Rust-lang.org/tools/install).

If you want to build and Install Cargo from Source you can use [this link](https://github.com/Rust-lang/cargo#compiling-from-source).

## Compilation Phases of Rust

Rust has several steps while passing through the compilation process, and a different pipeline than C/C++. Recently (in 2016), Rust changed the internal dynamics of its compiler pipeline. Previously, there was only a "high intermediate step" between Rust source and LLVM IR. Now, there are two more middle steps between Rust code and LLVM IR: Typed High-Level Intermediate Representation (THIR; previously High-Level Abstract IR or HIR) and Middle Intermediate Representation (MIR). Now we will look through all these steps one by one. We will traverse the complete pipeline:

``` terminal
                    (High Level)        (Middle)
Rust Source --> AST --> HIR --> THIR --> MIR --> LLVM IR
                         (Typed High-Level)
```

The difference between HIR and THIR is that the typed version has a little bit more detail than the HIR itself, as it is generated after type checking occurs. The two of them, however, are meant to vaguely resemble Rust source, albeit in a more compiler-friendly manner. MIR, on the other hand, is radically simplified, and is where the bitcode is eventually compiled from. For more in-depth resources on the exact roles of each form, as well as the differences between them, see:

+ HIR   [HIR Overview](https://rustc-dev-guide.rust-lang.org/hir.html)
+ THIR  [THIR Overview](https://Rustc-dev-guide.Rust-lang.org/thir.html)
+ MIR   [MIR Overview](https://rustc-dev-guide.rust-lang.org/mir/index.html) & [Fiddly Details (For Nerds)](https://rust-lang.github.io/rfcs/1211-mir.html)

## Sample Code

Here's our simple function implemented in Rust:

```Rust
fn main() {
}
fn f(a: i8, b: i8) -> i8 {
   // C/C++ i8->long
    let mut x = a;
    if a > b {
        x += 20 // x = x + 20
    } else {
        x += b
    }
    return x;
}
```

To run the Rust code, we use `Rustc` to produce a binary executable:

```Rust
Rustc f.rs
```

## High-Level Intermediate Representation (HIR)

The first step in Rust compilation steps is generation of `High-Level Intermediate Representation (HIR)` code. In this step, Rust source code is parsed and "desugared", but still generally resembles the original input code. HIR is meant to be a compiler-friendly version of the Abstract Syntax Tree (AST) after parsing, macro expansion, and name resolution has been performed on the code. We won't look at the AST itself, but we will see that HIR is fairly similar (for the translation process from AST --> HIR see [here](https://rustc-dev-guide.rust-lang.org/lowering.html)) and even has a tree representation.

We can create the HIR for our sample code with `Rustc`:

```Rust
Rustc +nightly -Zunpretty=hir f.rs
```

The compiler supports various types of `unpretty` outputs. Those for HIR are:

```Rust
`hir`           (the HIR), `hir,identified`,
`hir,typed`     (HIR with types for each node),
`hir-tree`      (dump the raw HIR),
```

(While this is confusing, `HIR, typed =/= THIR`).

The output for the straight `HIR` is:

```Rust
#[prelude_import]
use ::std::prelude::Rust_2015::*;
#[macro_use]
extern crate std;
fn main() {

    }

fn f(a: i8, b: i8)
    ->
        i8 {
        // C/C++ i8->long
        let mut x = a;
        if a > b
                {
                        x += 20 // x = x + 20
                    } else { x += b }
                return x;
            }
```

Our code was actually simple enough that no "desugaring" had to occur; its exactly the same as our input code!

Next, the output for the `HIR,typed` is:

```Rust
#[prelude_import]
use ::std::prelude::Rust_2015::*;
#[macro_use]
extern crate std;
fn main() ({

    } as ())

fn f(a: i8, b: i8)
    ->
        i8 ({
        // C/C++ i8->long
        let mut x = (a as i8);
        (if ((a as i8) > (b as i8) as bool)
                ({
                        ((x as i8) += (20 as i8) as ()) // x = x + 20
                    } as ()) else { ((x as i8) += (b as i8) as ()) } as ())
                (return (x as i8) as !);
            } as !)
```

This introduces a lot of clutter by simply making the type information explicit. Beyond that, it does not introduce any new information.

Finally, the output for `HIR-tree` is very long because this code dumps the raw HIR. We include part of it here:

```Rust
Crate {
    owners: [
        Owner(
            OwnerInfo {
                nodes: OwnerNodes {
                    node: Some(
                        ParentedNode {
                            parent: 4294967040,
                            node: Crate(
                                Mod {
                                    spans: ModSpans {
                                        inner_span: f.rs:1:1: 14:2 (#0),
                                        inject_use_span: no-location (#0),
                                    },
                                    item_ids: [
                                        ItemId {
                                            def_id: DefId(0:1 ~ f[67f6]::{use#0}),
                                        },
                                        ItemId {
                                            def_id: DefId(0:2 ~ f[67f6]::std),
                                        },
                                        ItemId {
                                            def_id: DefId(0:3 ~ f[67f6]::main),
                                        },
                                        ItemId {
                                            def_id: DefId(0:4 ~ f[67f6]::f),
                                        },
                                    ],
                                },
                            ),
                        },
                    ),
                    bodies: SortedMap {
                        data: [],
                    },
                    local_id_to_def_id: SortedMap {
                        data: [],
                    },
                    hash_without_bodies: Fingerprint(
                        8468398798561864859,
                        18175144649710783617,
                    ),
                    hash_including_bodies: Fingerprint(
                        8468398798561864859,
                        18175144649710783617,
                    ),
                },
                parenting: {
                    DefId(0:2 ~ f[67f6]::std): 0,
                    DefId(0:4 ~ f[67f6]::f): 0,
                    DefId(0:1 ~ f[67f6]::{use#0}): 0,
                    DefId(0:3 ~ f[67f6]::main): 0,
                },
                attrs: AttributeMap {
                    map: SortedMap {
                        data: [],
                    },
                    hash: Fingerprint(
                        9785122672296426403,
                        8173264106939382879,
                    ),
                },
                trait_map: {},
            },
        ),
...
...
...

}%
```

The tree representation is attached in it's entirety in the [hir_tree](hir_tree.rst) file.

Here, we just see some organizational information (for example, maps) similar to a symbol table in some other compilation pipelines. While we dont see the actual function body here, we can see that it is defined with a `DefId` as the fourth element of the `ItemIds` array, and we can see an example of what sort of information is stored about each item in the `parenting` clause lower down.

## Typed High-Level Intermediate Representation (THIR)

The next compiling level in Rust is the Typed High-Level Intermediate Representation (THIR). THIR was previously called High-Level Abstraction Intermediate Representation (HAIR). THIR is used mainly for Middle Intermediate Representation (MIR) construction and exhaustiveness checking. Some of the points in which it differs from HIR are that:
As seen in the THIR representation there are some differences between HIR results:

+ THIR only represents bodies, with no build in support for abstractions like `struct`s or `trait`s
+ THIR only stores bodies temporarily, which is useful to keep peak memory in check
+ THIR is generated by an additional lowering of HIR, in which there is more desugaring. This means that the output does not resemble Rust source any longer.
+ At the THIR level, statements, expressions, and match arms are stored separately, instead of in the sequence they appeared in the input code. They reference each other by indexing into the `exprs` or `stmts` array, so that they remain logically adjacent
+ You can get a debug representation of the THIR

To be able to dump THIR, we will use this line of code:

```Rust
Rustc +nightly -Zunpretty=thir-tree f.rs
```

The outcome of the THIR is again too long to print whole, so we will print just the very simplest part of our program:

```Rust
fn main() {
}
```

Here is it's `THIR-tree` representation:

```Rust
DefId(0:3 ~ f[67f6]::main):
Thir {
    arms: [],
    exprs: [
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(2),
            ),
            span: f.rs:1:11: 3:2 (#0),
            kind: Block {
                body: Block {
                    targeted_by_break: false,
                    region_scope: Node(1),
                    opt_destruction_scope: None,
                    span: f.rs:1:11: 3:2 (#0),
                    stmts: [],
                    expr: None,
                    safety_mode: Safe,
                },
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(2),
            ),
            span: f.rs:1:11: 3:2 (#0),
            kind: Scope {
                region_scope: Node(2),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ f[67f6]::main),
                        local_id: 2,
                    },
                ),
                value: e0,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(2),
            ),
            span: f.rs:1:11: 3:2 (#0),
            kind: Scope {
                region_scope: Destruction(2),
                lint_level: Inherited,
                value: e1,
            },
        },
    ],
    stmts: [],
}
```

The differences between this and the HIR should be immediately apparent. The tree for our entire program is in the [thir_tree](thir_tree.rst) file.

## Middle Intermediate Representation (MIR)

The final internal IR for Rust code is Middle Intermediate Representation (MIR). As the name suggests, MIR is located in between HIR and LLVM IR.

We can easily build MIR using `unpretty.` The `rustc` compiler supports various types of `unpretty` outputs - for MIR, we have two options:

```Rust
`mir`           (the HIR), `hir,identified`,
`mir-cfg        (graphviz formatted MIR)
```

The `mir-cfg` option dumps various borrow-checker dataflow graphs into a .dot file. To get view these files, we install the `graphviz` tool from the command line:

```Terminal
apt-get install graphviz
```

Then we need to run the following commands:

```Terminal
dot -T pdf maybe_init_suffix.dot > maybe_init_suffix.pdf
firefox maybe_init_suffix.pdf # Or your favorite pdf viewer
```

The output for `mir` is:

```Rust
digraph __crate__ {
subgraph cluster_Mir_0_3 {
    graph [fontname="Courier, monospace"];
    node [fontname="Courier, monospace"];
    edge [fontname="Courier, monospace"];
    label=<fn main() -&gt; ()<br align="left"/>>;
    bb0__0_3 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">0</td></tr><tr><td align="left">return</td></tr></table>>];
}
subgraph cluster_Mir_0_4 {
    graph [fontname="Courier, monospace"];
    node [fontname="Courier, monospace"];
    edge [fontname="Courier, monospace"];
    label=<fn f(_1: i8, _2: i8) -&gt; i8<br align="left"/>let mut _3: bool;<br align="left"/>let mut _4: i8;<br align="left"/>let mut _5: i8;<br align="left"/>let mut _6: (i8, bool);<br align="left"/>let mut _7: i8;<br align="left"/>let mut _8: (i8, bool);<br align="left"/>debug a =&gt; _1;<br align="left"/>debug b =&gt; _2;<br align="left"/>debug x =&gt; _0;<br align="left"/>>;
    bb0__0_4 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">0</td></tr><tr><td align="left" balign="left">_0 = _1<br/>_4 = _1<br/>_5 = _2<br/>_3 = Gt(move _4, move _5)<br/></td></tr><tr><td align="left">switchInt(move _3)</td></tr></table>>];
    bb1__0_4 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">1</td></tr><tr><td align="left" balign="left">_6 = CheckedAdd(_0, const 20_i8)<br/></td></tr><tr><td align="left">assert(!move (_6.1: bool), &quot;attempt to compute `{} + {}`, which would overflow&quot;, _0, const 20_i8)</td></tr></table>>];
    bb2__0_4 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">2</td></tr><tr><td align="left" balign="left">_0 = move (_6.0: i8)<br/></td></tr><tr><td align="left">goto</td></tr></table>>];
    bb3__0_4 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">3</td></tr><tr><td align="left" balign="left">_7 = _2<br/>_8 = CheckedAdd(_0, _7)<br/></td></tr><tr><td align="left">assert(!move (_8.1: bool), &quot;attempt to compute `{} + {}`, which would overflow&quot;, _0, move _7)</td></tr></table>>];
    bb4__0_4 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">4</td></tr><tr><td align="left" balign="left">_0 = move (_8.0: i8)<br/></td></tr><tr><td align="left">goto</td></tr></table>>];
    bb5__0_4 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">5</td></tr><tr><td align="left">return</td></tr></table>>];
    bb0__0_4 -> bb3__0_4 [label="false"];
    bb0__0_4 -> bb1__0_4 [label="otherwise"];
    bb1__0_4 -> bb2__0_4 [label=""];
    bb2__0_4 -> bb5__0_4 [label=""];
    bb3__0_4 -> bb4__0_4 [label=""];
    bb4__0_4 -> bb5__0_4 [label=""];
}
}
```

This looks much more like the low-level IR we're used to! As a result of the MIR step, the compilation process moves to more efficient data structures and removes redundant compilation work, speeding up the process. Besides reducing compilation time and execution time as well as improving the type checking process, MIR has substantial engineering benefits for the compiler, like eliminating redundancy and raising ambitions.

## Intermediate Representation (IR)

Finally, to generate standard LLVM IR for Rust, we will use:

```Rust
Rustc --emit=llvm-ir f.rs 
```

This will give us a human readable version (.ll).

The IR for our Rust code is:

```Rust
; ModuleID = 'f.d34e0ba0-cgu.0'
source_filename = "f.d34e0ba0-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (i64**)* 
@"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..
$u7b$$u7b$closure$u7d$$u7d$$GT$17h3e7a220d11daafe6E" to i8*), [16 x i8] 
c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i32 (i64**)* 
@"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h57a1689ea292a1a0E" to i8*), i8* bitcast (i32
 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h27323f255732644bE" to i8*), i8* bitcast (i32 (i64**)* 
 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h27323f255732644bE" to i8*) }>, align 8


; std::sys_common::backtrace::__Rust_begin_short_backtrace
; Function Attrs: noinline uwtable
define internal void @_ZN3std10sys_common9backtrace28__Rust_begin_short_backtrace17h7626e6c260f4ea55E(void ()* %f) 
unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, 
%"unwind::libunwind::_Unwind_Context"*)* @Rust_eh_personality {

start:
  %0 = alloca { i8*, i32 }, align 8
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17ha186400c020952cdE(void ()* %f)
  br label %bb1

bb1:                                              ; preds = %start
; invoke core::hint::black_box
  invoke void @_ZN4core4hint9black_box17h31e9a5a347357958E()
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
```

The output of the Rust LLVM IR result is similar to the C/C++ and Python IR results, and we will get the same results.
