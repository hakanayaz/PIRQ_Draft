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

DefId(0:4 ~ f[67f6]::f):
Thir {
    arms: [],
    exprs: [
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(5),
            ),
            span: f.rs:7:17: 7:18 (#0),
            kind: VarRef {
                id: HirId {
                    owner: DefId(0:4 ~ f[67f6]::f),
                    local_id: 2,
                },
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(5),
            ),
            span: f.rs:7:17: 7:18 (#0),
            kind: Scope {
                region_scope: Node(7),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 7,
                    },
                ),
                value: e0,
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(14),
            ),
            span: f.rs:8:8: 8:9 (#0),
            kind: VarRef {
                id: HirId {
                    owner: DefId(0:4 ~ f[67f6]::f),
                    local_id: 2,
                },
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(14),
            ),
            span: f.rs:8:8: 8:9 (#0),
            kind: Scope {
                region_scope: Node(11),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 11,
                    },
                ),
                value: e2,
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(14),
            ),
            span: f.rs:8:12: 8:13 (#0),
            kind: VarRef {
                id: HirId {
                    owner: DefId(0:4 ~ f[67f6]::f),
                    local_id: 4,
                },
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(14),
            ),
            span: f.rs:8:12: 8:13 (#0),
            kind: Scope {
                region_scope: Node(13),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 13,
                    },
                ),
                value: e4,
            },
        },
        Expr {
            ty: bool,
            temp_lifetime: Some(
                Node(14),
            ),
            span: f.rs:8:8: 8:13 (#0),
            kind: Binary {
                op: Gt,
                lhs: e3,
                rhs: e5,
            },
        },
        Expr {
            ty: bool,
            temp_lifetime: Some(
                Node(14),
            ),
            span: f.rs:8:8: 8:13 (#0),
            kind: Scope {
                region_scope: Node(14),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 14,
                    },
                ),
                value: e6,
            },
        },
        Expr {
            ty: bool,
            temp_lifetime: Some(
                Node(14),
            ),
            span: f.rs:8:8: 8:13 (#0),
            kind: Scope {
                region_scope: Destruction(14),
                lint_level: Inherited,
                value: e7,
            },
        },
        Expr {
            ty: bool,
            temp_lifetime: Some(
                Node(30),
            ),
            span: f.rs:8:8: 8:13 (#4),
            kind: Use {
                source: e8,
            },
        },
        Expr {
            ty: bool,
            temp_lifetime: Some(
                Node(30),
            ),
            span: f.rs:8:8: 8:13 (#4),
            kind: Scope {
                region_scope: Node(15),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 15,
                    },
                ),
                value: e9,
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(21),
            ),
            span: f.rs:9:9: 9:10 (#0),
            kind: VarRef {
                id: HirId {
                    owner: DefId(0:4 ~ f[67f6]::f),
                    local_id: 9,
                },
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(21),
            ),
            span: f.rs:9:9: 9:10 (#0),
            kind: Scope {
                region_scope: Node(17),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 17,
                    },
                ),
                value: e11,
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(21),
            ),
            span: f.rs:9:14: 9:16 (#0),
            kind: Literal {
                lit: Spanned {
                    node: Int(
                        20,
                        Unsuffixed,
                    ),
                    span: f.rs:9:14: 9:16 (#0),
                },
                neg: false,
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(21),
            ),
            span: f.rs:9:14: 9:16 (#0),
            kind: Scope {
                region_scope: Node(18),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 18,
                    },
                ),
                value: e13,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(21),
            ),
            span: f.rs:9:9: 9:16 (#0),
            kind: AssignOp {
                op: Add,
                lhs: e12,
                rhs: e14,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(21),
            ),
            span: f.rs:9:9: 9:16 (#0),
            kind: Scope {
                region_scope: Node(19),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 19,
                    },
                ),
                value: e15,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(21),
            ),
            span: f.rs:8:14: 10:6 (#0),
            kind: Block {
                body: Block {
                    targeted_by_break: false,
                    region_scope: Node(20),
                    opt_destruction_scope: None,
                    span: f.rs:8:14: 10:6 (#0),
                    stmts: [],
                    expr: Some(
                        e16,
                    ),
                    safety_mode: Safe,
                },
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(21),
            ),
            span: f.rs:8:14: 10:6 (#0),
            kind: Scope {
                region_scope: Node(21),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 21,
                    },
                ),
                value: e17,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(21),
            ),
            span: f.rs:8:14: 10:6 (#0),
            kind: Scope {
                region_scope: Destruction(21),
                lint_level: Inherited,
                value: e18,
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(28),
            ),
            span: f.rs:11:9: 11:10 (#0),
            kind: VarRef {
                id: HirId {
                    owner: DefId(0:4 ~ f[67f6]::f),
                    local_id: 9,
                },
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(28),
            ),
            span: f.rs:11:9: 11:10 (#0),
            kind: Scope {
                region_scope: Node(23),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 23,
                    },
                ),
                value: e20,
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(28),
            ),
            span: f.rs:11:14: 11:15 (#0),
            kind: VarRef {
                id: HirId {
                    owner: DefId(0:4 ~ f[67f6]::f),
                    local_id: 4,
                },
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(28),
            ),
            span: f.rs:11:14: 11:15 (#0),
            kind: Scope {
                region_scope: Node(25),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 25,
                    },
                ),
                value: e22,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(28),
            ),
            span: f.rs:11:9: 11:15 (#0),
            kind: AssignOp {
                op: Add,
                lhs: e21,
                rhs: e23,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(28),
            ),
            span: f.rs:11:9: 11:15 (#0),
            kind: Scope {
                region_scope: Node(26),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 26,
                    },
                ),
                value: e24,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(28),
            ),
            span: f.rs:10:12: 12:6 (#0),
            kind: Block {
                body: Block {
                    targeted_by_break: false,
                    region_scope: Node(27),
                    opt_destruction_scope: None,
                    span: f.rs:10:12: 12:6 (#0),
                    stmts: [],
                    expr: Some(
                        e25,
                    ),
                    safety_mode: Safe,
                },
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(28),
            ),
            span: f.rs:10:12: 12:6 (#0),
            kind: Scope {
                region_scope: Node(28),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 28,
                    },
                ),
                value: e26,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(28),
            ),
            span: f.rs:10:12: 12:6 (#0),
            kind: Scope {
                region_scope: Destruction(28),
                lint_level: Inherited,
                value: e27,
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(30),
            ),
            span: f.rs:8:5: 12:6 (#0),
            kind: If {
                if_then_scope: IfThen(21),
                cond: e10,
                then: e19,
                else_opt: Some(
                    e28,
                ),
            },
        },
        Expr {
            ty: (),
            temp_lifetime: Some(
                Node(30),
            ),
            span: f.rs:8:5: 12:6 (#0),
            kind: Scope {
                region_scope: Node(29),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 29,
                    },
                ),
                value: e29,
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(34),
            ),
            span: f.rs:13:12: 13:13 (#0),
            kind: VarRef {
                id: HirId {
                    owner: DefId(0:4 ~ f[67f6]::f),
                    local_id: 9,
                },
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(34),
            ),
            span: f.rs:13:12: 13:13 (#0),
            kind: Scope {
                region_scope: Node(32),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 32,
                    },
                ),
                value: e31,
            },
        },
        Expr {
            ty: !,
            temp_lifetime: Some(
                Node(34),
            ),
            span: f.rs:13:5: 13:13 (#0),
            kind: Return {
                value: Some(
                    e32,
                ),
            },
        },
        Expr {
            ty: !,
            temp_lifetime: Some(
                Node(34),
            ),
            span: f.rs:13:5: 13:13 (#0),
            kind: Scope {
                region_scope: Node(33),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 33,
                    },
                ),
                value: e33,
            },
        },
        Expr {
            ty: !,
            temp_lifetime: Some(
                Node(36),
            ),
            span: f.rs:5:26: 14:2 (#0),
            kind: Block {
                body: Block {
                    targeted_by_break: false,
                    region_scope: Node(35),
                    opt_destruction_scope: None,
                    span: f.rs:5:26: 14:2 (#0),
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
            ty: i8,
            temp_lifetime: Some(
                Node(36),
            ),
            span: f.rs:5:26: 14:2 (#0),
            kind: NeverToAny {
                source: e35,
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(36),
            ),
            span: f.rs:5:26: 14:2 (#0),
            kind: Scope {
                region_scope: Node(36),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 36,
                    },
                ),
                value: e36,
            },
        },
        Expr {
            ty: i8,
            temp_lifetime: Some(
                Node(36),
            ),
            span: f.rs:5:26: 14:2 (#0),
            kind: Scope {
                region_scope: Destruction(36),
                lint_level: Inherited,
                value: e37,
            },
        },
    ],
    stmts: [
        Stmt {
            kind: Let {
                remainder_scope: Remainder { block: 35, first_statement_index: 0},
                init_scope: Node(5),
                pattern: Pat {
                    ty: i8,
                    span: f.rs:7:9: 7:14 (#0),
                    kind: Binding {
                        mutability: Mut,
                        name: "x",
                        mode: ByValue,
                        var: HirId {
                            owner: DefId(0:4 ~ f[67f6]::f),
                            local_id: 9,
                        },
                        ty: i8,
                        subpattern: None,
                        is_primary: true,
                    },
                },
                initializer: Some(
                    e1,
                ),
                lint_level: Explicit(
                    HirId {
                        owner: DefId(0:4 ~ f[67f6]::f),
                        local_id: 8,
                    },
                ),
            },
            opt_destruction_scope: Some(
                Destruction(5),
            ),
        },
        Stmt {
            kind: Expr {
                scope: Node(30),
                expr: e30,
            },
            opt_destruction_scope: Some(
                Destruction(30),
            ),
        },
        Stmt {
            kind: Expr {
                scope: Node(34),
                expr: e34,
            },
            opt_destruction_scope: Some(
                Destruction(34),
            ),
        },
    ],
}
