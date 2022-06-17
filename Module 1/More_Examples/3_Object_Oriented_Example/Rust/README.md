# OOP: Rust to IR
This example walks through how an Object Oriented Program (OOP) written in Rust is broken down to LLVM IR. The compilation steps are as follows:
1. High Level Intermediate Representation (HIR)
    1. HIR
    2. HIR with types for each node
    3. Raw HIR
2. Typed High Level Intermediate Representation (THIR)
3. Middle Intermediate Representation (MIR)
    1. MIR
    2. MIR using graphviz (visualization software)
4. Intermediate Representation (IR)


## Prerequisites
In this example we will use the Rust nightly toolchain. To install, and switch to the nightly toolchain run the following two commands:
```Rust
rustup toolchain install nightly
rustup override set nightly
```
For more informatoin please visit: https://doc.rust-lang.org/book/appendix-07-nightly-rust.html


## Rust Source Code
Similar to the OOP examples in the C++, Julia, and Python, we start off with the following Rust source code.
```Rust
fn main() {
    let mut _q1:Qubit = Qubit::new(1,0);
    _q1.X();
    println!("  Spin Up: {}", _q1.up);
    println!("Spin Down: {}", _q1.down);
}

struct Qubit {
      up: i64,
    down: i64
}

impl Qubit {
    fn new(up: i64, down: i64) -> Qubit {
        Qubit {
              up: up,
            down: down
        }
    }

    fn X(&mut self){
        let temp: i64 = self.up;
        self.up = self.down;
        self.down = temp;
    }

}
```



## High-Level Intermadiate Representation (HIR)

To run the Rust code, we will use `rustc` and then will produce a binary that can be executed:

```Rust
rustc qubit.rs
```
The compiler supports various types of `unpretty` outputs for HIR:

```Rust
`hir`           (the HIR), `hir,identified`,
`hir,typed`     (HIR with types for each node),
`hir-tree`      (dump the raw HIR),
```

To produce the HIR from the Rust Source Code:

```Rust
rustc +nightly -Zunpretty=hir qubit.rs
```
Output for the `hir` is:



```Rust
#[prelude_import]
use ::std::prelude::rust_2015::*;
#[macro_use]
extern crate std;
fn main() {
    let mut _q1: Qubit = Qubit::new(1, 0);
    _q1.X();

    {
    ::std::io::_print(::core::fmt::Arguments::new_v1(&["  Spin Up: ",
                                                               "\n"], 
                    &[::core::fmt::ArgumentV1::new_display(&_q1.up)]
                                                    ));
    };
    {
    ::std::io::_print(::core::fmt::Arguments::new_v1(&["Spin Down: ",
                                                               "\n"], 
                  &[::core::fmt::ArgumentV1::new_display(&_q1.down)]
                                                    ));
    };
}
struct Qubit {
    up: i64,
    down: i64,
}
impl Qubit {
    fn new(up: i64, down: i64) -> Qubit { Qubit{up: up, down: down,} }
    fn X(self:&mut Self) {
            let temp: i64 = self.up;
            self.up = self.down;
            self.down = temp;
        }
}
```



To produce the HIR with types for each node:

```Rust
rustc +nightly -Zunpretty=hir,typed qubit.rs
```
Output for the `hir,typed` is:

```Rust
#[prelude_import]
use ::std::prelude::rust_2015::*;
#[macro_use]
extern crate std;
fn main() ({
        let mut _q1: Qubit = ((Qubit::new as
                              fn(i64, i64) -> Qubit {Qubit::new})((1 as i64), (0 as i64)) as Qubit);
                             ((_q1 as Qubit).X() as ());


        ({
                ((::std::io::_print as
                        for<'r> fn(Arguments<'r>) {_print})(((::core::fmt::Arguments::new_v1
                            as
                            fn(&[&'static str], &[ArgumentV1]) -> Arguments {Arguments::new_v1})(
                                (&([("  Spin Up: " as &str), ("\n" as &str)] as [&str; 2]) as &[&str; 2]),
                        (&([((::core::fmt::ArgumentV1::new_display as
                                            for<'b> fn(&'b i64) -> ArgumentV1<'b> {ArgumentV1::new_display::<i64>})
                                            ((&((_q1 as Qubit).up as i64) as &i64)) as ArgumentV1)] as
                                            [ArgumentV1; 1]) as &[ArgumentV1; 1])) as Arguments)) as
                    ());
            } as ());
        ({
                ((::std::io::_print as
                        for<'r> fn(Arguments<'r>) {_print})(((::core::fmt::Arguments::new_v1
                            as
                            fn(&[&'static str], &[ArgumentV1]) -> Arguments {Arguments::new_v1})
                                ((&([("Spin Down: " as &str), ("\n" as &str)] as [&str; 2]) as &[&str; 2]),
                        (&([((::core::fmt::ArgumentV1::new_display as
                                            for<'b> fn(&'b i64) -> ArgumentV1<'b> {ArgumentV1::new_display::<i64>})
                                            ((&((_q1 as Qubit).down as i64) as &i64)) as ArgumentV1)] as
                                            [ArgumentV1; 1]) as &[ArgumentV1; 1])) as Arguments)) as
                    ());
            } as ());
    } as ())
struct Qubit {
    up: i64,
    down: i64,
}
impl Qubit {
    fn new(up: i64, down: i64)-> Qubit ({ (Qubit{up: (up as i64), down: (down as i64),} as Qubit) }
                                       as Qubit)
    fn X(self:&mut Self) ({
            let temp: i64 = ((self as &mut Qubit).up as i64);
            (((self as &mut Qubit).up as i64) = ((self as &mut Qubit).down as i64) as ());
            (((self as &mut Qubit).down as i64) = (temp as i64) as ());
        } as ())
}
```


To produce the raw HIR:

```Rust
rustc +nightly -Zunpretty=hir-tree qubit.rs
```
Output for the `hir-tree` is:

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
                                        inner_span: qubit.rs:1:1: 27:2 (#0),
                                        inject_use_span: no-location (#0),
                                    },
                                    item_ids: [
                                        ItemId {
                                            def_id: DefId(0:1 ~ qubit[53be]::{use#0}),
                                        },
                                        ItemId {
                                            def_id: DefId(0:2 ~ qubit[53be]::std),
                                        },
                                        ItemId {
                                            def_id: DefId(0:3 ~ qubit[53be]::main),
                                        },
                                        ItemId {
                                            def_id: DefId(0:4 ~ qubit[53be]::Qubit),
                                        },
                                        ItemId {
                                            def_id: DefId(0:7 ~ qubit[53be]::{impl#0}),
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
                        7225248207241078236,
                        4568444253856589043,
                    ),
                    hash_including_bodies: Fingerprint(
                        7225248207241078236,
                        4568444253856589043,
                    ),
                },
                parenting: {
                    DefId(0:2 ~ qubit[53be]::std): 0,
                    DefId(0:7 ~ qubit[53be]::{impl#0}): 0,
                    DefId(0:4 ~ qubit[53be]::Qubit): 0,
                    DefId(0:1 ~ qubit[53be]::{use#0}): 0,
                    DefId(0:3 ~ qubit[53be]::main): 0,
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

```
**Note:** Output for the `hir-tree` is too long because this code dumps the raw HIR. Therefore, only a small sample of the raw HIR is shown. Too see the full raw HIR please take a look at `Rust_HIR_tree_raw.txt`.

## Typed High-Level Intermediate Representation (THIR)

The next compiling level in Rust is Typed High-Level Intermediate Representation (THIR). THIR was previously called High-Level Abstraction Intermediate Representation (HAIR). THIR is used for Middle intermediate representation (MIR) construction, and exhaustiveness checking.

To be able to dump THIR outputs, we will use this line of code:

```Rust
rustc +nightly -Zunpretty=thir-tree qubit.rs
```

The outcome of the THIR is again too long to print whole. The full output can be found in the `Rust_THIR.txt` file. For now, here is a small sample of the THIR:


```Rust
DefId(0:3 ~ qubit[53be]::main):
Thir {
    arms: [],
    exprs: [
        Expr {
            ty: fn(i64, i64) -> Qubit {Qubit::new},
            temp_lifetime: Some(
                Node(1),
            ),
            span: qubit.rs:2:25: 2:35 (#0),
            kind: NonHirLiteral {
                lit: <ZST>,
                user_ty: None,
            },
        },
        Expr {
            ty: fn(i64, i64) -> Qubit {Qubit::new},
            temp_lifetime: Some(
                Node(1),
            ),
            span: qubit.rs:2:25: 2:35 (#0),
            kind: Scope {
                region_scope: Node(7),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 7,
                    },
                ),
                value: e0,
            },
        },
        ...
        ...
        ...
```

## Middle Intermediate Representation (MIR)

The following compilation step of the Rust is Middle Intermediate Representation (MIR) which is the final stages of Rust compiler internals. As seen in the naming MIR is located in between HIR and LLVM IR.

MIR can easily build using `unpretty.` Compiler supports various types of `unpretty` outputs such as:

```Rust
`mir`           (the HIR), `hir,identified`,
`mir-cfg        (graphviz formatted MIR)
```
To produce the MIR:

```Rust
rustc +nightly -Zunpretty=mir qubit.rs
```
Output for the `mir` is:
```Rust
// WARNING: This output format is intended for human consumers only
// and is subject to change without notice. Knock yourself out.
fn main() -> () {
    let mut _0: ();                      // return place in scope 0 at qubit.rs:1:11: 1:11
    let mut _1: Qubit;                   // in scope 0 at qubit.rs:2:9: 2:16
    let _2: ();                          // in scope 0 at qubit.rs:3:5: 3:12
    let mut _3: &mut Qubit;              // in scope 0 at qubit.rs:3:5: 3:12
    let _4: ();                          // in scope 0 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:62
    let mut _5: std::fmt::Arguments;     // in scope 0 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
    let mut _6: &[&str];                 // in scope 0 at qubit.rs:4:14: 4:29
    let mut _7: &[&str; 2];              // in scope 0 at qubit.rs:4:14: 4:29
    let _8: &[&str; 2];                  // in scope 0 at qubit.rs:4:14: 4:29
    let mut _9: &[std::fmt::ArgumentV1]; // in scope 0 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
    let mut _10: &[std::fmt::ArgumentV1; 1]; // in scope 0 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
    let _11: &[std::fmt::ArgumentV1; 1]; // in scope 0 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
    let _12: [std::fmt::ArgumentV1; 1];  // in scope 0 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
    let mut _13: std::fmt::ArgumentV1;   // in scope 0 at qubit.rs:4:31: 4:37
    let mut _14: &i64;                   // in scope 0 at qubit.rs:4:31: 4:37
    let _15: &i64;                       // in scope 0 at qubit.rs:4:31: 4:37
    let _16: ();                         // in scope 0 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:62
    let mut _17: std::fmt::Arguments;    // in scope 0 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
    let mut _18: &[&str];                // in scope 0 at qubit.rs:5:14: 5:29
    let mut _19: &[&str; 2];             // in scope 0 at qubit.rs:5:14: 5:29
    let _20: &[&str; 2];                 // in scope 0 at qubit.rs:5:14: 5:29
    let mut _21: &[std::fmt::ArgumentV1]; // in scope 0 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
    let mut _22: &[std::fmt::ArgumentV1; 1]; // in scope 0 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
    let _23: &[std::fmt::ArgumentV1; 1]; // in scope 0 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
    let _24: [std::fmt::ArgumentV1; 1];  // in scope 0 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
    let mut _25: std::fmt::ArgumentV1;   // in scope 0 at qubit.rs:5:31: 5:39
    let mut _26: &i64;                   // in scope 0 at qubit.rs:5:31: 5:39
    let _27: &i64;                       // in scope 0 at qubit.rs:5:31: 5:39
    scope 1 {
        debug _q1 => _1;                 // in scope 1 at qubit.rs:2:9: 2:16
        let mut _28: &[&str; 2];         // in scope 1 at qubit.rs:5:14: 5:29
        let mut _29: &[&str; 2];         // in scope 1 at qubit.rs:4:14: 4:29
    }

    bb0: {
        _1 = Qubit::new(const 1_i64, const 0_i64) -> bb1; // scope 0 at qubit.rs:2:25: 2:40
                                         // mir::Constant
                                         // + span: qubit.rs:2:25: 2:35
                                         // + literal: Const { ty: fn(i64, i64) -> Qubit {Qubit::new}, val: Value(Scalar(<ZST>)) }
    }

    bb1: {
        _3 = &mut _1;                    // scope 1 at qubit.rs:3:5: 3:12
        _2 = Qubit::X(move _3) -> bb2;   // scope 1 at qubit.rs:3:5: 3:12
                                         // mir::Constant
                                         // + span: qubit.rs:3:9: 3:10
                                         // + literal: Const { ty: for<'r> fn(&'r mut Qubit) {Qubit::X}, val: Value(Scalar(<ZST>)) }
    }

    bb2: {
        _29 = const main::promoted[1];   // scope 1 at qubit.rs:4:14: 4:29
                                         // mir::Constant
                                         // + span: qubit.rs:4:14: 4:29
                                         // + literal: Const { ty: &[&str; 2], val: Unevaluated(main, [], Some(promoted[1])) }
        _8 = _29;                        // scope 1 at qubit.rs:4:14: 4:29
        _7 = _8;                         // scope 1 at qubit.rs:4:14: 4:29
        _6 = move _7 as &[&str] (Pointer(Unsize)); // scope 1 at qubit.rs:4:14: 4:29
        _15 = &(_1.0: i64);              // scope 1 at qubit.rs:4:31: 4:37
        _14 = _15;                       // scope 1 at qubit.rs:4:31: 4:37
        _13 = ArgumentV1::new_display::<i64>(move _14) -> bb3; // scope 1 at qubit.rs:4:31: 4:37
                                         // mir::Constant
                                         // + span: qubit.rs:4:31: 4:37
                                         // + user_ty: UserType(3)
                                         // + literal: Const { ty: for<'b> fn(&'b i64) -> ArgumentV1<'b> {ArgumentV1::new_display::<i64>}, val: Value(Scalar(<ZST>)) }
    }

    bb3: {
        _12 = [move _13];                // scope 1 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
        _11 = &_12;                      // scope 1 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
        _10 = _11;                       // scope 1 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
        _9 = move _10 as &[std::fmt::ArgumentV1] (Pointer(Unsize)); // scope 1 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
        _5 = Arguments::new_v1(move _6, move _9) -> bb4; // scope 1 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
                                         // mir::Constant
                                         // + span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
                                         // + user_ty: UserType(2)
                                         // + literal: Const { ty: fn(&[&'static str], &[ArgumentV1]) -> Arguments {Arguments::new_v1}, val: Value(Scalar(<ZST>)) }
    }

    bb4: {
        _4 = _print(move _5) -> bb5;     // scope 1 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:62
                                         // mir::Constant
                                         // + span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:27
                                         // + literal: Const { ty: for<'r> fn(Arguments<'r>) {_print}, val: Value(Scalar(<ZST>)) }
    }

    bb5: {
        _28 = const main::promoted[0];   // scope 1 at qubit.rs:5:14: 5:29
                                         // mir::Constant
                                         // + span: qubit.rs:5:14: 5:29
                                         // + literal: Const { ty: &[&str; 2], val: Unevaluated(main, [], Some(promoted[0])) }
        _20 = _28;                       // scope 1 at qubit.rs:5:14: 5:29
        _19 = _20;                       // scope 1 at qubit.rs:5:14: 5:29
        _18 = move _19 as &[&str] (Pointer(Unsize)); // scope 1 at qubit.rs:5:14: 5:29
        _27 = &(_1.1: i64);              // scope 1 at qubit.rs:5:31: 5:39
        _26 = _27;                       // scope 1 at qubit.rs:5:31: 5:39
        _25 = ArgumentV1::new_display::<i64>(move _26) -> bb6; // scope 1 at qubit.rs:5:31: 5:39
                                         // mir::Constant
                                         // + span: qubit.rs:5:31: 5:39
                                         // + user_ty: UserType(5)
                                         // + literal: Const { ty: for<'b> fn(&'b i64) -> ArgumentV1<'b> {ArgumentV1::new_display::<i64>}, val: Value(Scalar(<ZST>)) }
    }

    bb6: {
        _24 = [move _25];                // scope 1 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
        _23 = &_24;                      // scope 1 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
        _22 = _23;                       // scope 1 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
        _21 = move _22 as &[std::fmt::ArgumentV1] (Pointer(Unsize)); // scope 1 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
        _17 = Arguments::new_v1(move _18, move _21) -> bb7; // scope 1 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
                                         // mir::Constant
                                         // + span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61
                                         // + user_ty: UserType(4)
                                         // + literal: Const { ty: fn(&[&'static str], &[ArgumentV1]) -> Arguments {Arguments::new_v1}, val: Value(Scalar(<ZST>)) }
    }

    bb7: {
        _16 = _print(move _17) -> bb8;   // scope 1 at /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:62
                                         // mir::Constant
                                         // + span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:27
                                         // + literal: Const { ty: for<'r> fn(Arguments<'r>) {_print}, val: Value(Scalar(<ZST>)) }
    }

    bb8: {
        return;                          // scope 0 at qubit.rs:6:2: 6:2
    }
}

promoted[0] in main: &[&str; 2] = {
    let mut _0: &[&str; 2];              // return place in scope 0 at qubit.rs:5:14: 5:29
    let mut _1: [&str; 2];               // in scope 0 at qubit.rs:5:14: 5:29

    bb0: {
        _1 = [const "Spin Down: ", const "\n"]; // scope 0 at qubit.rs:5:14: 5:29
                                         // mir::Constant
                                         // + span: qubit.rs:5:14: 5:29
                                         // + literal: Const { ty: &str, val: Value(Slice(..)) }
                                         // mir::Constant
                                         // + span: qubit.rs:5:14: 5:29
                                         // + literal: Const { ty: &str, val: Value(Slice(..)) }
        _0 = &_1;                        // scope 0 at qubit.rs:5:14: 5:29
        return;                          // scope 0 at qubit.rs:5:14: 5:29
    }
}

promoted[1] in main: &[&str; 2] = {
    let mut _0: &[&str; 2];              // return place in scope 0 at qubit.rs:4:14: 4:29
    let mut _1: [&str; 2];               // in scope 0 at qubit.rs:4:14: 4:29

    bb0: {
        _1 = [const "  Spin Up: ", const "\n"]; // scope 0 at qubit.rs:4:14: 4:29
                                         // mir::Constant
                                         // + span: qubit.rs:4:14: 4:29
                                         // + literal: Const { ty: &str, val: Value(Slice(..)) }
                                         // mir::Constant
                                         // + span: qubit.rs:4:14: 4:29
                                         // + literal: Const { ty: &str, val: Value(Slice(..)) }
        _0 = &_1;                        // scope 0 at qubit.rs:4:14: 4:29
        return;                          // scope 0 at qubit.rs:4:14: 4:29
    }
}

fn <impl at qubit.rs:13:1: 27:2>::new(_1: i64, _2: i64) -> Qubit {
    debug up => _1;                      // in scope 0 at qubit.rs:14:12: 14:14
    debug down => _2;                    // in scope 0 at qubit.rs:14:21: 14:25
    let mut _0: Qubit;                   // return place in scope 0 at qubit.rs:14:35: 14:40
    let mut _3: i64;                     // in scope 0 at qubit.rs:16:19: 16:21
    let mut _4: i64;                     // in scope 0 at qubit.rs:17:19: 17:23

    bb0: {
        _3 = _1;                         // scope 0 at qubit.rs:16:19: 16:21
        _4 = _2;                         // scope 0 at qubit.rs:17:19: 17:23
        Deinit(_0);                      // scope 0 at qubit.rs:15:9: 18:10
        (_0.0: i64) = move _3;           // scope 0 at qubit.rs:15:9: 18:10
        (_0.1: i64) = move _4;           // scope 0 at qubit.rs:15:9: 18:10
        return;                          // scope 0 at qubit.rs:19:6: 19:6
    }
}

fn <impl at qubit.rs:13:1: 27:2>::X(_1: &mut Qubit) -> () {
    debug self => _1;                    // in scope 0 at qubit.rs:21:10: 21:19
    let mut _0: ();                      // return place in scope 0 at qubit.rs:21:20: 21:20
    let _2: i64;                         // in scope 0 at qubit.rs:22:13: 22:17
    let mut _3: i64;                     // in scope 0 at qubit.rs:23:19: 23:28
    let mut _4: i64;                     // in scope 0 at qubit.rs:24:21: 24:25
    scope 1 {
        debug temp => _2;                // in scope 1 at qubit.rs:22:13: 22:17
    }

    bb0: {
        _2 = ((*_1).0: i64);             // scope 0 at qubit.rs:22:25: 22:32
        _3 = ((*_1).1: i64);             // scope 1 at qubit.rs:23:19: 23:28
        ((*_1).0: i64) = move _3;        // scope 1 at qubit.rs:23:9: 23:28
        _4 = _2;                         // scope 1 at qubit.rs:24:21: 24:25
        ((*_1).1: i64) = move _4;        // scope 1 at qubit.rs:24:9: 24:25
        return;                          // scope 0 at qubit.rs:25:6: 25:6
    }
}

```


To produce the graphviz formatted MIR:

```Rust
rustc +nightly -Zunpretty=mir-cfg qubit.rs
```
Output for `mir-cfg` can be found in `Rust_MIR_graphviz.txt`


## Intermediate Representation (IR)

For the IR step we will produce a human readable version (.ll) using the following:

```Rust
rustc --emit=llvm-ir qubit.rs 
```

The full IR of the rust code can be found in `qubit.ll`. Here is a small sample of the IR with some parts excluded. The excluded parts were manually taken out and replaced with `"..."`


```Rust
; ModuleID = 'qubit.9be0c3e8-cgu.0'
source_filename = "qubit.9be0c3e8-cgu.0"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

... 
...
...

; qubit::Qubit::new
; Function Attrs: uwtable
define internal { i64, i64 } @_ZN5qubit5Qubit3new17h5a8e26b739e952fcE(i64 %up, i64 %down) unnamed_addr #1 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %up, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %down, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; qubit::Qubit::X
; Function Attrs: uwtable
define internal void @_ZN5qubit5Qubit1X17hb5bef64101574facE({ i64, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %temp = load i64, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %1, align 8
  %2 = bitcast { i64, i64 }* %self to i64*
  store i64 %_3, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %temp, i64* %3, align 8
  ret void
}

...
...
...

; std::io::stdio::_print
; Function Attrs: uwtable
declare void @_ZN3std2io5stdio6_print17h9ade4a15b9e3c1c8E(%"core::fmt::Arguments"*) unnamed_addr #1

define i32 @main(i32 %0, i8** %1) unnamed_addr #3 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = call i64 @_ZN3std2rt10lang_start17h12e7ac4eb8d5b5a8E(void ()* @_ZN5qubit4main17h9c3cdd1b265f2c66E, i64 %2, i8** %1)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { noinline uwtable "target-cpu"="x86-64" }
attributes #1 = { uwtable "target-cpu"="x86-64" }
attributes #2 = { inlinehint uwtable "target-cpu"="x86-64" }
attributes #3 = { "target-cpu"="x86-64" }
attributes #4 = { cold noinline noreturn uwtable "target-cpu"="x86-64" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{}
!3 = !{i64 1}
!4 = !{i8 0, i8 2}
!5 = !{i64 8}
!6 = !{i32 3227822}

```
As you can see, the Rust LLVM IR output is similar to the C/C++, Python, and Julia IR. However, as you likely already noticed, the Rust IR, is significantly larger than the other languages IR.  
