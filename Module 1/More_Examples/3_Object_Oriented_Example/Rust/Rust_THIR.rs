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
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(1),
            ),
            span: qubit.rs:2:36: 2:37 (#0),
            kind: Literal {
                lit: Spanned {
                    node: Int(
                        1,
                        Unsuffixed,
                    ),
                    span: qubit.rs:2:36: 2:37 (#0),
                },
                neg: false,
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(1),
            ),
            span: qubit.rs:2:36: 2:37 (#0),
            kind: Scope {
                region_scope: Node(8),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 8,
                    },
                ),
                value: e2,
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(1),
            ),
            span: qubit.rs:2:38: 2:39 (#0),
            kind: Literal {
                lit: Spanned {
                    node: Int(
                        0,
                        Unsuffixed,
                    ),
                    span: qubit.rs:2:38: 2:39 (#0),
                },
                neg: false,
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(1),
            ),
            span: qubit.rs:2:38: 2:39 (#0),
            kind: Scope {
                region_scope: Node(9),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 9,
                    },
                ),
                value: e4,
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(1),
            ),
            span: qubit.rs:2:25: 2:40 (#0),
            kind: Call {
                ty: fn(i64, i64) -> Qubit {Qubit::new},
                fun: e1,
                args: [
                    e3,
                    e5,
                ],
                from_hir_call: true,
                fn_span: qubit.rs:2:25: 2:40 (#0),
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(1),
            ),
            span: qubit.rs:2:25: 2:40 (#0),
            kind: Scope {
                region_scope: Node(10),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 10,
                    },
                ),
                value: e6,
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(17),
            ),
            span: qubit.rs:3:5: 3:8 (#0),
            kind: VarRef {
                id: LocalVarId(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 12,
                    },
                ),
            },
        },
        Expr {
            ty: &mut Qubit,
            temp_lifetime: Some(
                Node(17),
            ),
            span: qubit.rs:3:5: 3:12 (#0),
            kind: Borrow {
                borrow_kind: Mut {
                    allow_two_phase_borrow: true,
                },
                arg: e8,
            },
        },
        Expr {
            ty: &mut Qubit,
            temp_lifetime: Some(
                Node(17),
            ),
            span: qubit.rs:3:5: 3:8 (#0),
            kind: Scope {
                region_scope: Node(15),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 15,
                    },
                ),
                value: e9,
            },
        },
        Expr {
            ty: for<'r> fn(&'r mut Qubit) {Qubit::X},
            temp_lifetime: Some(
                Node(17),
            ),
            span: qubit.rs:3:9: 3:10 (#0),
            kind: NonHirLiteral {
                lit: <ZST>,
                user_ty: None,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(17),
            ),
            span: qubit.rs:3:5: 3:12 (#0),
            kind: Call {
                ty: for<'r> fn(&'r mut Qubit) {Qubit::X},
                fun: e11,
                args: [
                    e10,
                ],
                from_hir_call: true,
                fn_span: qubit.rs:3:9: 3:12 (#0),
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(17),
            ),
            span: qubit.rs:3:5: 3:12 (#0),
            kind: Scope {
                region_scope: Node(16),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 16,
                    },
                ),
                value: e12,
            },
        },
        Expr {
            ty: for<'r> fn(std::fmt::Arguments<'r>) {std::io::_print},
            temp_lifetime: Some(
                Node(49),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:27 (#4),
            kind: NonHirLiteral {
                lit: <ZST>,
                user_ty: None,
            },
        },
        Expr {
            ty: for<'r> fn(std::fmt::Arguments<'r>) {std::io::_print},
            temp_lifetime: Some(
                Node(49),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:27 (#4),
            kind: Scope {
                region_scope: Node(21),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 21,
                    },
                ),
                value: e14,
            },
        },
        Expr {
            ty: fn(&[&'static str], &[std::fmt::ArgumentV1]) -> std::fmt::Arguments {std::fmt::Arguments::new_v1},
            temp_lifetime: Some(
                Node(49),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
            kind: NonHirLiteral {
                lit: <ZST>,
                user_ty: Some(
                    Canonical {
                        max_universe: U0,
                        variables: [
                            CanonicalVarInfo {
                                kind: Region(
                                    U0,
                                ),
                            },
                            CanonicalVarInfo {
                                kind: Region(
                                    U0,
                                ),
                            },
                        ],
                        value: TypeOf(
                            DefId(2:10094 ~ core[819a]::fmt::{impl#4}::new_v1),
                            UserSubsts {
                                substs: [
                                    ReLateBound(DebruijnIndex(0), BoundRegion { var: 0, kind: BrAnon(0) }),
                                ],
                                user_self_ty: Some(
                                    UserSelfTy {
                                        impl_def_id: DefId(2:10092 ~ core[819a]::fmt::{impl#4}),
                                        self_ty: std::fmt::Arguments<'_>,
                                    },
                                ),
                            },
                        ),
                    },
                ),
            },
        },
        Expr {
            ty: fn(&[&'static str], &[std::fmt::ArgumentV1]) -> std::fmt::Arguments {std::fmt::Arguments::new_v1},
            temp_lifetime: Some(
                Node(49),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
            kind: Scope {
                region_scope: Node(28),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 28,
                    },
                ),
                value: e16,
            },
        },
        Expr {
            ty: &str,
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:14: 4:29 (#0),
            kind: Literal {
                lit: Spanned {
                    node: Str(
                        "  Spin Up: ",
                        Cooked,
                    ),
                    span: qubit.rs:4:14: 4:29 (#0),
                },
                neg: false,
            },
        },
        Expr {
            ty: &str,
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:14: 4:29 (#0),
            kind: Scope {
                region_scope: Node(29),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 29,
                    },
                ),
                value: e18,
            },
        },
        Expr {
            ty: &str,
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:14: 4:29 (#0),
            kind: Literal {
                lit: Spanned {
                    node: Str(
                        "\n",
                        Cooked,
                    ),
                    span: qubit.rs:4:14: 4:29 (#0),
                },
                neg: false,
            },
        },
        Expr {
            ty: &str,
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:14: 4:29 (#0),
            kind: Scope {
                region_scope: Node(30),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 30,
                    },
                ),
                value: e20,
            },
        },
        Expr {
            ty: [&str; 2],
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:14: 4:29 (#0),
            kind: Array {
                fields: [
                    e19,
                    e21,
                ],
            },
        },
        Expr {
            ty: [&str; 2],
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:14: 4:29 (#0),
            kind: Scope {
                region_scope: Node(31),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 31,
                    },
                ),
                value: e22,
            },
        },
        Expr {
            ty: &[&str; 2],
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:14: 4:29 (#0),
            kind: Borrow {
                borrow_kind: Shared,
                arg: e23,
            },
        },
        Expr {
            ty: [&str; 2],
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:14: 4:29 (#0),
            kind: Deref {
                arg: e24,
            },
        },
        Expr {
            ty: &[&str; 2],
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:14: 4:29 (#0),
            kind: Borrow {
                borrow_kind: Shared,
                arg: e25,
            },
        },
        Expr {
            ty: &[&str],
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:14: 4:29 (#0),
            kind: Pointer {
                cast: Unsize,
                source: e26,
            },
        },
        Expr {
            ty: &[&str],
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:14: 4:29 (#0),
            kind: Scope {
                region_scope: Node(32),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 32,
                    },
                ),
                value: e27,
            },
        },
        Expr {
            ty: for<'b> fn(&'b i64) -> std::fmt::ArgumentV1<'b> {std::fmt::ArgumentV1::new_display::<i64>},
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:31: 4:37 (#5),
            kind: NonHirLiteral {
                lit: <ZST>,
                user_ty: Some(
                    Canonical {
                        max_universe: U0,
                        variables: [
                            CanonicalVarInfo {
                                kind: Region(
                                    U0,
                                ),
                            },
                            CanonicalVarInfo {
                                kind: Ty(
                                    General(
                                        U0,
                                    ),
                                ),
                            },
                            CanonicalVarInfo {
                                kind: Region(
                                    U0,
                                ),
                            },
                        ],
                        value: TypeOf(
                            DefId(2:48246 ~ core[819a]::fmt::{impl#3}::new_display),
                            UserSubsts {
                                substs: [
                                    ReLateBound(DebruijnIndex(0), BoundRegion { var: 0, kind: BrAnon(0) }),
                                    ^1,
                                ],
                                user_self_ty: Some(
                                    UserSelfTy {
                                        impl_def_id: DefId(2:10085 ~ core[819a]::fmt::{impl#3}),
                                        self_ty: std::fmt::ArgumentV1<'_>,
                                    },
                                ),
                            },
                        ),
                    },
                ),
            },
        },
        Expr {
            ty: for<'b> fn(&'b i64) -> std::fmt::ArgumentV1<'b> {std::fmt::ArgumentV1::new_display::<i64>},
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:31: 4:37 (#5),
            kind: Scope {
                region_scope: Node(39),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 39,
                    },
                ),
                value: e29,
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:31: 4:34 (#0),
            kind: VarRef {
                id: LocalVarId(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 12,
                    },
                ),
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:31: 4:34 (#0),
            kind: Scope {
                region_scope: Node(41),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 41,
                    },
                ),
                value: e31,
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:31: 4:37 (#0),
            kind: Field {
                lhs: e32,
                variant_index: 0,
                name: field[0],
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:31: 4:37 (#0),
            kind: Scope {
                region_scope: Node(42),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 42,
                    },
                ),
                value: e33,
            },
        },
        Expr {
            ty: &i64,
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:31: 4:37 (#5),
            kind: Borrow {
                borrow_kind: Shared,
                arg: e34,
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:31: 4:37 (#5),
            kind: Deref {
                arg: e35,
            },
        },
        Expr {
            ty: &i64,
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:31: 4:37 (#5),
            kind: Borrow {
                borrow_kind: Shared,
                arg: e36,
            },
        },
        Expr {
            ty: &i64,
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:31: 4:37 (#5),
            kind: Scope {
                region_scope: Node(43),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 43,
                    },
                ),
                value: e37,
            },
        },
        Expr {
            ty: std::fmt::ArgumentV1,
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:31: 4:37 (#5),
            kind: Call {
                ty: for<'b> fn(&'b i64) -> std::fmt::ArgumentV1<'b> {std::fmt::ArgumentV1::new_display::<i64>},
                fun: e30,
                args: [
                    e38,
                ],
                from_hir_call: true,
                fn_span: qubit.rs:4:31: 4:37 (#5),
            },
        },
        Expr {
            ty: std::fmt::ArgumentV1,
            temp_lifetime: Some(
                Node(49),
            ),
            span: qubit.rs:4:31: 4:37 (#5),
            kind: Scope {
                region_scope: Node(44),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 44,
                    },
                ),
                value: e39,
            },
        },
        Expr {
            ty: [std::fmt::ArgumentV1; 1],
            temp_lifetime: Some(
                Node(49),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
            kind: Array {
                fields: [
                    e40,
                ],
            },
        },
        Expr {
            ty: [std::fmt::ArgumentV1; 1],
            temp_lifetime: Some(
                Node(49),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
            kind: Scope {
                region_scope: Node(45),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 45,
                    },
                ),
                value: e41,
            },
        },
        Expr {
            ty: &[std::fmt::ArgumentV1; 1],
            temp_lifetime: Some(
                Node(49),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
            kind: Borrow {
                borrow_kind: Shared,
                arg: e42,
            },
        },
        Expr {
            ty: [std::fmt::ArgumentV1; 1],
            temp_lifetime: Some(
                Node(49),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
            kind: Deref {
                arg: e43,
            },
        },
        Expr {
            ty: &[std::fmt::ArgumentV1; 1],
            temp_lifetime: Some(
                Node(49),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
            kind: Borrow {
                borrow_kind: Shared,
                arg: e44,
            },
        },
        Expr {
            ty: &[std::fmt::ArgumentV1],
            temp_lifetime: Some(
                Node(49),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
            kind: Pointer {
                cast: Unsize,
                source: e45,
            },
        },
        Expr {
            ty: &[std::fmt::ArgumentV1],
            temp_lifetime: Some(
                Node(49),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
            kind: Scope {
                region_scope: Node(46),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 46,
                    },
                ),
                value: e46,
            },
        },
        Expr {
            ty: std::fmt::Arguments,
            temp_lifetime: Some(
                Node(49),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
            kind: Call {
                ty: fn(&[&'static str], &[std::fmt::ArgumentV1]) -> std::fmt::Arguments {std::fmt::Arguments::new_v1},
                fun: e17,
                args: [
                    e28,
                    e47,
                ],
                from_hir_call: true,
                fn_span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
            },
        },
        Expr {
            ty: std::fmt::Arguments,
            temp_lifetime: Some(
                Node(49),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
            kind: Scope {
                region_scope: Node(47),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 47,
                    },
                ),
                value: e48,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(49),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:62 (#4),
            kind: Call {
                ty: for<'r> fn(std::fmt::Arguments<'r>) {std::io::_print},
                fun: e15,
                args: [
                    e49,
                ],
                from_hir_call: true,
                fn_span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:62 (#4),
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(49),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:62 (#4),
            kind: Scope {
                region_scope: Node(48),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 48,
                    },
                ),
                value: e50,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(52),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:105:23: 107:6 (#4),
            kind: Block {
                body: Block {
                    targeted_by_break: false,
                    region_scope: Node(50),
                    opt_destruction_scope: None,
                    span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:105:23: 107:6 (#4),
                    stmts: [
                        s2,
                    ],
                    expr: None,
                    safety_mode: Safe,
                },
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(52),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:105:23: 107:6 (#4),
            kind: Scope {
                region_scope: Node(51),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 51,
                    },
                ),
                value: e52,
            },
        },
        Expr {
            ty: for<'r> fn(std::fmt::Arguments<'r>) {std::io::_print},
            temp_lifetime: Some(
                Node(84),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:27 (#6),
            kind: NonHirLiteral {
                lit: <ZST>,
                user_ty: None,
            },
        },
        Expr {
            ty: for<'r> fn(std::fmt::Arguments<'r>) {std::io::_print},
            temp_lifetime: Some(
                Node(84),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:27 (#6),
            kind: Scope {
                region_scope: Node(56),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 56,
                    },
                ),
                value: e54,
            },
        },
        Expr {
            ty: fn(&[&'static str], &[std::fmt::ArgumentV1]) -> std::fmt::Arguments {std::fmt::Arguments::new_v1},
            temp_lifetime: Some(
                Node(84),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
            kind: NonHirLiteral {
                lit: <ZST>,
                user_ty: Some(
                    Canonical {
                        max_universe: U0,
                        variables: [
                            CanonicalVarInfo {
                                kind: Region(
                                    U0,
                                ),
                            },
                            CanonicalVarInfo {
                                kind: Region(
                                    U0,
                                ),
                            },
                        ],
                        value: TypeOf(
                            DefId(2:10094 ~ core[819a]::fmt::{impl#4}::new_v1),
                            UserSubsts {
                                substs: [
                                    ReLateBound(DebruijnIndex(0), BoundRegion { var: 0, kind: BrAnon(0) }),
                                ],
                                user_self_ty: Some(
                                    UserSelfTy {
                                        impl_def_id: DefId(2:10092 ~ core[819a]::fmt::{impl#4}),
                                        self_ty: std::fmt::Arguments<'_>,
                                    },
                                ),
                            },
                        ),
                    },
                ),
            },
        },
        Expr {
            ty: fn(&[&'static str], &[std::fmt::ArgumentV1]) -> std::fmt::Arguments {std::fmt::Arguments::new_v1},
            temp_lifetime: Some(
                Node(84),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
            kind: Scope {
                region_scope: Node(63),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 63,
                    },
                ),
                value: e56,
            },
        },
        Expr {
            ty: &str,
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:14: 5:29 (#0),
            kind: Literal {
                lit: Spanned {
                    node: Str(
                        "Spin Down: ",
                        Cooked,
                    ),
                    span: qubit.rs:5:14: 5:29 (#0),
                },
                neg: false,
            },
        },
        Expr {
            ty: &str,
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:14: 5:29 (#0),
            kind: Scope {
                region_scope: Node(64),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 64,
                    },
                ),
                value: e58,
            },
        },
        Expr {
            ty: &str,
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:14: 5:29 (#0),
            kind: Literal {
                lit: Spanned {
                    node: Str(
                        "\n",
                        Cooked,
                    ),
                    span: qubit.rs:5:14: 5:29 (#0),
                },
                neg: false,
            },
        },
        Expr {
            ty: &str,
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:14: 5:29 (#0),
            kind: Scope {
                region_scope: Node(65),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 65,
                    },
                ),
                value: e60,
            },
        },
        Expr {
            ty: [&str; 2],
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:14: 5:29 (#0),
            kind: Array {
                fields: [
                    e59,
                    e61,
                ],
            },
        },
        Expr {
            ty: [&str; 2],
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:14: 5:29 (#0),
            kind: Scope {
                region_scope: Node(66),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 66,
                    },
                ),
                value: e62,
            },
        },
        Expr {
            ty: &[&str; 2],
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:14: 5:29 (#0),
            kind: Borrow {
                borrow_kind: Shared,
                arg: e63,
            },
        },
        Expr {
            ty: [&str; 2],
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:14: 5:29 (#0),
            kind: Deref {
                arg: e64,
            },
        },
        Expr {
            ty: &[&str; 2],
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:14: 5:29 (#0),
            kind: Borrow {
                borrow_kind: Shared,
                arg: e65,
            },
        },
        Expr {
            ty: &[&str],
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:14: 5:29 (#0),
            kind: Pointer {
                cast: Unsize,
                source: e66,
            },
        },
        Expr {
            ty: &[&str],
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:14: 5:29 (#0),
            kind: Scope {
                region_scope: Node(67),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 67,
                    },
                ),
                value: e67,
            },
        },
        Expr {
            ty: for<'b> fn(&'b i64) -> std::fmt::ArgumentV1<'b> {std::fmt::ArgumentV1::new_display::<i64>},
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:31: 5:39 (#7),
            kind: NonHirLiteral {
                lit: <ZST>,
                user_ty: Some(
                    Canonical {
                        max_universe: U0,
                        variables: [
                            CanonicalVarInfo {
                                kind: Region(
                                    U0,
                                ),
                            },
                            CanonicalVarInfo {
                                kind: Ty(
                                    General(
                                        U0,
                                    ),
                                ),
                            },
                            CanonicalVarInfo {
                                kind: Region(
                                    U0,
                                ),
                            },
                        ],
                        value: TypeOf(
                            DefId(2:48246 ~ core[819a]::fmt::{impl#3}::new_display),
                            UserSubsts {
                                substs: [
                                    ReLateBound(DebruijnIndex(0), BoundRegion { var: 0, kind: BrAnon(0) }),
                                    ^1,
                                ],
                                user_self_ty: Some(
                                    UserSelfTy {
                                        impl_def_id: DefId(2:10085 ~ core[819a]::fmt::{impl#3}),
                                        self_ty: std::fmt::ArgumentV1<'_>,
                                    },
                                ),
                            },
                        ),
                    },
                ),
            },
        },
        Expr {
            ty: for<'b> fn(&'b i64) -> std::fmt::ArgumentV1<'b> {std::fmt::ArgumentV1::new_display::<i64>},
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:31: 5:39 (#7),
            kind: Scope {
                region_scope: Node(74),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 74,
                    },
                ),
                value: e69,
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:31: 5:34 (#0),
            kind: VarRef {
                id: LocalVarId(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 12,
                    },
                ),
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:31: 5:34 (#0),
            kind: Scope {
                region_scope: Node(76),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 76,
                    },
                ),
                value: e71,
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:31: 5:39 (#0),
            kind: Field {
                lhs: e72,
                variant_index: 0,
                name: field[1],
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:31: 5:39 (#0),
            kind: Scope {
                region_scope: Node(77),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 77,
                    },
                ),
                value: e73,
            },
        },
        Expr {
            ty: &i64,
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:31: 5:39 (#7),
            kind: Borrow {
                borrow_kind: Shared,
                arg: e74,
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:31: 5:39 (#7),
            kind: Deref {
                arg: e75,
            },
        },
        Expr {
            ty: &i64,
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:31: 5:39 (#7),
            kind: Borrow {
                borrow_kind: Shared,
                arg: e76,
            },
        },
        Expr {
            ty: &i64,
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:31: 5:39 (#7),
            kind: Scope {
                region_scope: Node(78),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 78,
                    },
                ),
                value: e77,
            },
        },
        Expr {
            ty: std::fmt::ArgumentV1,
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:31: 5:39 (#7),
            kind: Call {
                ty: for<'b> fn(&'b i64) -> std::fmt::ArgumentV1<'b> {std::fmt::ArgumentV1::new_display::<i64>},
                fun: e70,
                args: [
                    e78,
                ],
                from_hir_call: true,
                fn_span: qubit.rs:5:31: 5:39 (#7),
            },
        },
        Expr {
            ty: std::fmt::ArgumentV1,
            temp_lifetime: Some(
                Node(84),
            ),
            span: qubit.rs:5:31: 5:39 (#7),
            kind: Scope {
                region_scope: Node(79),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 79,
                    },
                ),
                value: e79,
            },
        },
        Expr {
            ty: [std::fmt::ArgumentV1; 1],
            temp_lifetime: Some(
                Node(84),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
            kind: Array {
                fields: [
                    e80,
                ],
            },
        },
        Expr {
            ty: [std::fmt::ArgumentV1; 1],
            temp_lifetime: Some(
                Node(84),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
            kind: Scope {
                region_scope: Node(80),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 80,
                    },
                ),
                value: e81,
            },
        },
        Expr {
            ty: &[std::fmt::ArgumentV1; 1],
            temp_lifetime: Some(
                Node(84),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
            kind: Borrow {
                borrow_kind: Shared,
                arg: e82,
            },
        },
        Expr {
            ty: [std::fmt::ArgumentV1; 1],
            temp_lifetime: Some(
                Node(84),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
            kind: Deref {
                arg: e83,
            },
        },
        Expr {
            ty: &[std::fmt::ArgumentV1; 1],
            temp_lifetime: Some(
                Node(84),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
            kind: Borrow {
                borrow_kind: Shared,
                arg: e84,
            },
        },
        Expr {
            ty: &[std::fmt::ArgumentV1],
            temp_lifetime: Some(
                Node(84),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
            kind: Pointer {
                cast: Unsize,
                source: e85,
            },
        },
        Expr {
            ty: &[std::fmt::ArgumentV1],
            temp_lifetime: Some(
                Node(84),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
            kind: Scope {
                region_scope: Node(81),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 81,
                    },
                ),
                value: e86,
            },
        },
        Expr {
            ty: std::fmt::Arguments,
            temp_lifetime: Some(
                Node(84),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
            kind: Call {
                ty: fn(&[&'static str], &[std::fmt::ArgumentV1]) -> std::fmt::Arguments {std::fmt::Arguments::new_v1},
                fun: e57,
                args: [
                    e68,
                    e87,
                ],
                from_hir_call: true,
                fn_span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
            },
        },
        Expr {
            ty: std::fmt::Arguments,
            temp_lifetime: Some(
                Node(84),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
            kind: Scope {
                region_scope: Node(82),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 82,
                    },
                ),
                value: e88,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(84),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:62 (#6),
            kind: Call {
                ty: for<'r> fn(std::fmt::Arguments<'r>) {std::io::_print},
                fun: e55,
                args: [
                    e89,
                ],
                from_hir_call: true,
                fn_span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:62 (#6),
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(84),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:62 (#6),
            kind: Scope {
                region_scope: Node(83),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 83,
                    },
                ),
                value: e90,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(87),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:105:23: 107:6 (#6),
            kind: Block {
                body: Block {
                    targeted_by_break: false,
                    region_scope: Node(85),
                    opt_destruction_scope: None,
                    span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:105:23: 107:6 (#6),
                    stmts: [
                        s4,
                    ],
                    expr: None,
                    safety_mode: Safe,
                },
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(87),
            ),
            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:105:23: 107:6 (#6),
            kind: Scope {
                region_scope: Node(86),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 86,
                    },
                ),
                value: e92,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(89),
            ),
            span: qubit.rs:1:11: 6:2 (#0),
            kind: Block {
                body: Block {
                    targeted_by_break: false,
                    region_scope: Node(88),
                    opt_destruction_scope: None,
                    span: qubit.rs:1:11: 6:2 (#0),
                    stmts: [
                        s0,
                        s1,
                        s3,
                        s5,
                    ],
                    expr: None,
                    safety_mode: Safe,
                },
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(89),
            ),
            span: qubit.rs:1:11: 6:2 (#0),
            kind: Scope {
                region_scope: Node(89),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 89,
                    },
                ),
                value: e94,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(89),
            ),
            span: qubit.rs:1:11: 6:2 (#0),
            kind: Scope {
                region_scope: Destruction(89),
                lint_level: Inherited,
                value: e95,
            },
        },
    ],
    stmts: [
        Stmt {
            kind: Let {
                remainder_scope: Remainder { block: 88, first_statement_index: 0},
                init_scope: Node(1),
                pattern: Pat {
                    ty: Qubit,
                    span: qubit.rs:2:9: 2:16 (#0),
                    kind: AscribeUserType {
                        ascription: Ascription {
                            annotation: CanonicalUserTypeAnnotation {
                                user_ty: Canonical {
                                    max_universe: U0,
                                    variables: [],
                                    value: Ty(
                                        Qubit,
                                    ),
                                },
                                span: qubit.rs:2:17: 2:22 (#0),
                                inferred_ty: Qubit,
                            },
                            variance: +,
                        },
                        subpattern: Pat {
                            ty: Qubit,
                            span: qubit.rs:2:9: 2:16 (#0),
                            kind: Binding {
                                mutability: Mut,
                                name: "_q1",
                                mode: ByValue,
                                var: LocalVarId(
                                    HirId {
                                        owner: DefId(0:3 ~ qubit[53be]::main),
                                        local_id: 12,
                                    },
                                ),
                                ty: Qubit,
                                subpattern: None,
                                is_primary: true,
                            },
                        },
                    },
                },
                initializer: Some(
                    e7,
                ),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:3 ~ qubit[53be]::main),
                        local_id: 11,
                    },
                ),
            },
            opt_destruction_scope: Some(
                Destruction(1),
            ),
        },
        Stmt {
            kind: Expr {
                scope: Node(17),
                expr: e13,
            },
            opt_destruction_scope: Some(
                Destruction(17),
            ),
        },
        Stmt {
            kind: Expr {
                scope: Node(49),
                expr: e51,
            },
            opt_destruction_scope: Some(
                Destruction(49),
            ),
        },
        Stmt {
            kind: Expr {
                scope: Node(52),
                expr: e53,
            },
            opt_destruction_scope: Some(
                Destruction(52),
            ),
        },
        Stmt {
            kind: Expr {
                scope: Node(84),
                expr: e91,
            },
            opt_destruction_scope: Some(
                Destruction(84),
            ),
        },
        Stmt {
            kind: Expr {
                scope: Node(87),
                expr: e93,
            },
            opt_destruction_scope: Some(
                Destruction(87),
            ),
        },
    ],
}

DefId(0:8 ~ qubit[53be]::{impl#0}::new):
Thir {
    arms: [],
    exprs: [
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(14),
            ),
            span: qubit.rs:16:19: 16:21 (#0),
            kind: VarRef {
                id: LocalVarId(
                    HirId {
                        owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                        local_id: 2,
                    },
                ),
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(14),
            ),
            span: qubit.rs:16:19: 16:21 (#0),
            kind: Scope {
                region_scope: Node(8),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                        local_id: 8,
                    },
                ),
                value: e0,
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(14),
            ),
            span: qubit.rs:17:19: 17:23 (#0),
            kind: VarRef {
                id: LocalVarId(
                    HirId {
                        owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                        local_id: 4,
                    },
                ),
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(14),
            ),
            span: qubit.rs:17:19: 17:23 (#0),
            kind: Scope {
                region_scope: Node(11),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                        local_id: 11,
                    },
                ),
                value: e2,
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(14),
            ),
            span: qubit.rs:15:9: 18:10 (#0),
            kind: Adt(
                Adt {
                    adt_def: Qubit,
                    variant_index: 0,
                    substs: [],
                    user_ty: None,
                    fields: [
                        FieldExpr {
                            name: field[0],
                            expr: e1,
                        },
                        FieldExpr {
                            name: field[1],
                            expr: e3,
                        },
                    ],
                    base: None,
                },
            ),
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(14),
            ),
            span: qubit.rs:15:9: 18:10 (#0),
            kind: Scope {
                region_scope: Node(12),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                        local_id: 12,
                    },
                ),
                value: e4,
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(14),
            ),
            span: qubit.rs:14:41: 19:6 (#0),
            kind: Block {
                body: Block {
                    targeted_by_break: false,
                    region_scope: Node(13),
                    opt_destruction_scope: None,
                    span: qubit.rs:14:41: 19:6 (#0),
                    stmts: [],
                    expr: Some(
                        e5,
                    ),
                    safety_mode: Safe,
                },
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(14),
            ),
            span: qubit.rs:14:41: 19:6 (#0),
            kind: Scope {
                region_scope: Node(14),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                        local_id: 14,
                    },
                ),
                value: e6,
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(14),
            ),
            span: qubit.rs:14:41: 19:6 (#0),
            kind: Scope {
                region_scope: Destruction(14),
                lint_level: Inherited,
                value: e7,
            },
        },
    ],
    stmts: [],
}

DefId(0:9 ~ qubit[53be]::{impl#0}::X):
Thir {
    arms: [],
    exprs: [
        Expr {
            ty: &mut Qubit,
            temp_lifetime: Some(
                Node(3),
            ),
            span: qubit.rs:22:25: 22:29 (#0),
            kind: VarRef {
                id: LocalVarId(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 2,
                    },
                ),
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(3),
            ),
            span: qubit.rs:22:25: 22:29 (#0),
            kind: Deref {
                arg: e0,
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(3),
            ),
            span: qubit.rs:22:25: 22:29 (#0),
            kind: Scope {
                region_scope: Node(7),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 7,
                    },
                ),
                value: e1,
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(3),
            ),
            span: qubit.rs:22:25: 22:32 (#0),
            kind: Field {
                lhs: e2,
                variant_index: 0,
                name: field[0],
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(3),
            ),
            span: qubit.rs:22:25: 22:32 (#0),
            kind: Scope {
                region_scope: Node(8),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 8,
                    },
                ),
                value: e3,
            },
        },
        Expr {
            ty: &mut Qubit,
            temp_lifetime: Some(
                Node(18),
            ),
            span: qubit.rs:23:9: 23:13 (#0),
            kind: VarRef {
                id: LocalVarId(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 2,
                    },
                ),
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(18),
            ),
            span: qubit.rs:23:9: 23:13 (#0),
            kind: Deref {
                arg: e5,
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(18),
            ),
            span: qubit.rs:23:9: 23:13 (#0),
            kind: Scope {
                region_scope: Node(12),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 12,
                    },
                ),
                value: e6,
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(18),
            ),
            span: qubit.rs:23:9: 23:16 (#0),
            kind: Field {
                lhs: e7,
                variant_index: 0,
                name: field[0],
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(18),
            ),
            span: qubit.rs:23:9: 23:16 (#0),
            kind: Scope {
                region_scope: Node(13),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 13,
                    },
                ),
                value: e8,
            },
        },
        Expr {
            ty: &mut Qubit,
            temp_lifetime: Some(
                Node(18),
            ),
            span: qubit.rs:23:19: 23:23 (#0),
            kind: VarRef {
                id: LocalVarId(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 2,
                    },
                ),
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(18),
            ),
            span: qubit.rs:23:19: 23:23 (#0),
            kind: Deref {
                arg: e10,
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(18),
            ),
            span: qubit.rs:23:19: 23:23 (#0),
            kind: Scope {
                region_scope: Node(15),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 15,
                    },
                ),
                value: e11,
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(18),
            ),
            span: qubit.rs:23:19: 23:28 (#0),
            kind: Field {
                lhs: e12,
                variant_index: 0,
                name: field[1],
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(18),
            ),
            span: qubit.rs:23:19: 23:28 (#0),
            kind: Scope {
                region_scope: Node(16),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 16,
                    },
                ),
                value: e13,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(18),
            ),
            span: qubit.rs:23:9: 23:28 (#0),
            kind: Assign {
                lhs: e9,
                rhs: e14,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(18),
            ),
            span: qubit.rs:23:9: 23:28 (#0),
            kind: Scope {
                region_scope: Node(17),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 17,
                    },
                ),
                value: e15,
            },
        },
        Expr {
            ty: &mut Qubit,
            temp_lifetime: Some(
                Node(25),
            ),
            span: qubit.rs:24:9: 24:13 (#0),
            kind: VarRef {
                id: LocalVarId(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 2,
                    },
                ),
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(25),
            ),
            span: qubit.rs:24:9: 24:13 (#0),
            kind: Deref {
                arg: e17,
            },
        },
        Expr {
            ty: Qubit,
            temp_lifetime: Some(
                Node(25),
            ),
            span: qubit.rs:24:9: 24:13 (#0),
            kind: Scope {
                region_scope: Node(20),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 20,
                    },
                ),
                value: e18,
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(25),
            ),
            span: qubit.rs:24:9: 24:18 (#0),
            kind: Field {
                lhs: e19,
                variant_index: 0,
                name: field[1],
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(25),
            ),
            span: qubit.rs:24:9: 24:18 (#0),
            kind: Scope {
                region_scope: Node(21),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 21,
                    },
                ),
                value: e20,
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(25),
            ),
            span: qubit.rs:24:21: 24:25 (#0),
            kind: VarRef {
                id: LocalVarId(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 10,
                    },
                ),
            },
        },
        Expr {
            ty: i64,
            temp_lifetime: Some(
                Node(25),
            ),
            span: qubit.rs:24:21: 24:25 (#0),
            kind: Scope {
                region_scope: Node(23),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 23,
                    },
                ),
                value: e22,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(25),
            ),
            span: qubit.rs:24:9: 24:25 (#0),
            kind: Assign {
                lhs: e21,
                rhs: e23,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(25),
            ),
            span: qubit.rs:24:9: 24:25 (#0),
            kind: Scope {
                region_scope: Node(24),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 24,
                    },
                ),
                value: e24,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(27),
            ),
            span: qubit.rs:21:20: 25:6 (#0),
            kind: Block {
                body: Block {
                    targeted_by_break: false,
                    region_scope: Node(26),
                    opt_destruction_scope: None,
                    span: qubit.rs:21:20: 25:6 (#0),
                    stmts: [
                        s0,
                        s1,
                        s2,
                    ],
                    expr: None,
                    safety_mode: Safe,
                },
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(27),
            ),
            span: qubit.rs:21:20: 25:6 (#0),
            kind: Scope {
                region_scope: Node(27),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 27,
                    },
                ),
                value: e26,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(27),
            ),
            span: qubit.rs:21:20: 25:6 (#0),
            kind: Scope {
                region_scope: Destruction(27),
                lint_level: Inherited,
                value: e27,
            },
        },
    ],
    stmts: [
        Stmt {
            kind: Let {
                remainder_scope: Remainder { block: 26, first_statement_index: 0},
                init_scope: Node(3),
                pattern: Pat {
                    ty: i64,
                    span: qubit.rs:22:13: 22:17 (#0),
                    kind: AscribeUserType {
                        ascription: Ascription {
                            annotation: CanonicalUserTypeAnnotation {
                                user_ty: Canonical {
                                    max_universe: U0,
                                    variables: [],
                                    value: Ty(
                                        i64,
                                    ),
                                },
                                span: qubit.rs:22:19: 22:22 (#0),
                                inferred_ty: i64,
                            },
                            variance: +,
                        },
                        subpattern: Pat {
                            ty: i64,
                            span: qubit.rs:22:13: 22:17 (#0),
                            kind: Binding {
                                mutability: Not,
                                name: "temp",
                                mode: ByValue,
                                var: LocalVarId(
                                    HirId {
                                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                        local_id: 10,
                                    },
                                ),
                                ty: i64,
                                subpattern: None,
                                is_primary: true,
                            },
                        },
                    },
                },
                initializer: Some(
                    e4,
                ),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                        local_id: 9,
                    },
                ),
            },
            opt_destruction_scope: Some(
                Destruction(3),
            ),
        },
        Stmt {
            kind: Expr {
                scope: Node(18),
                expr: e16,
            },
            opt_destruction_scope: Some(
                Destruction(18),
            ),
        },
        Stmt {
            kind: Expr {
                scope: Node(25),
                expr: e25,
            },
            opt_destruction_scope: Some(
                Destruction(25),
            ),
        },
    ],
}
