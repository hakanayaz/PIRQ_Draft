# Rust IR Tutorials

In this tutorial we will build an IR using the same function that we used at C/C++ part. Then we can compare the results.

## Installation

Easiest way of installing Rust and Cargo is using this command below given:

For Linux an macOS system
```
curl https://sh.rustup.rs -sSf | sh
```
After installation you will get this messages:
```
Rust is installed now. Great!
```
On Windows systems you need to download [rustup-init.exe](https://www.rust-lang.org/tools/install).

If you want to build and Install Cargo from Source you can use this link. [build from source](https://github.com/rust-lang/cargo#compiling-from-source).

# Compilation Phases at Rust

Rust has several steps while passing through compilation process. 

## High-Level Intermadiate Representation (HIR)

First step is `High-Level Intermadiate Representation (HIR)` step. In this step Rust source code passing through parsing and desugaring steps. More detailed explanation you can reach fron this link: [HIR](https://rustc-dev-guide.rust-lang.org/hir.html)

As mentioned before as an example Rust code we will use the same code that we used in C/C++ part which is:

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
To run the Rust code we will use `rustc` then will produce binary that can be executed:

```Rust
rustc f.rs
```

With using this small example code we can create first compilations step at Rust which is HIR with using this code:

```Rust
rustc +nightly -Zunpretty=hir f.rs
```

The compiler supports various type of `unpretty` outputs. Those are for HIR is:

```Rust
`hir`           (the HIR), `hir,identified`,
`hir,typed`     (HIR with types for each node),
`hir-tree`      (dump the raw HIR),
```

Output for the `hir` is:

```Rust
#[prelude_import]
use ::std::prelude::rust_2015::*;
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

Output for the "hir,typed' is:

```Rust
#[prelude_import]
use ::std::prelude::rust_2015::*;
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

Output for the `hir-tree` is too long becuse this code dumps the raw HIR that's why I will put some part of it:

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

As seen in the HIR outcomes program gives us a compiler friendly version of the Abstract Syntax Tree (AST) after generate parsing, macro expension, and name resolution.

The difference between `hir` and `hir,typed` is hir,typed has a little more detail then the hir itself. But the most detailed version is hir-tree because that commend dump the raw IR.

## Typed High-Level Intermediate Representation (THIR)

Next level of compiling in Rust is Typed High-Level Intermediate Representation (THIR). To be able to dump THIR outputs we will use this line of code:

```Rust
rustc +nightly -Zunpretty=thir-tree f.rs
```

Outcome of the THIR is again too long to print whole so I will print one part of the fuction which is:

```Rust
fn main() {
}
```

Output of just main function definition:

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
## Middle Intermediate Representation (MIR)

Next compilation step of the Rust is Middle Intermadiate Representation which is easy to build with using `unpretty`. Compiler supports various type of `unpretty` outputs. Those are for MIR is:

```Rust
`mir`           (the HIR), `hir,identified`,
`mir-cfg        (graphviz formatted MIR)
```

Output of the `mir` is:

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
