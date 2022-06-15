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
        Owner(
            OwnerInfo {
                nodes: OwnerNodes {
                    node: Some(
                        ParentedNode {
                            parent: 4294967040,
                            node: Item(
                                Item {
                                    ident: #0,
                                    def_id: DefId(0:1 ~ qubit[53be]::{use#0}),
                                    kind: Use(
                                        Path {
                                            span: no-location (#1),
                                            res: Err,
                                            segments: [
                                                PathSegment {
                                                    ident: {{root}}#1,
                                                    hir_id: Some(
                                                        HirId {
                                                            owner: DefId(0:1 ~ qubit[53be]::{use#0}),
                                                            local_id: 1,
                                                        },
                                                    ),
                                                    res: Some(
                                                        Err,
                                                    ),
                                                    args: None,
                                                    infer_args: false,
                                                },
                                                PathSegment {
                                                    ident: std#1,
                                                    hir_id: Some(
                                                        HirId {
                                                            owner: DefId(0:1 ~ qubit[53be]::{use#0}),
                                                            local_id: 2,
                                                        },
                                                    ),
                                                    res: Some(
                                                        Def(
                                                            Mod,
                                                            DefId(1:0 ~ std[4d5a]),
                                                        ),
                                                    ),
                                                    args: None,
                                                    infer_args: false,
                                                },
                                                PathSegment {
                                                    ident: prelude#1,
                                                    hir_id: Some(
                                                        HirId {
                                                            owner: DefId(0:1 ~ qubit[53be]::{use#0}),
                                                            local_id: 3,
                                                        },
                                                    ),
                                                    res: Some(
                                                        Def(
                                                            Mod,
                                                            DefId(1:69 ~ std[4d5a]::prelude),
                                                        ),
                                                    ),
                                                    args: None,
                                                    infer_args: false,
                                                },
                                                PathSegment {
                                                    ident: rust_2015#1,
                                                    hir_id: Some(
                                                        HirId {
                                                            owner: DefId(0:1 ~ qubit[53be]::{use#0}),
                                                            local_id: 4,
                                                        },
                                                    ),
                                                    res: Some(
                                                        Def(
                                                            Mod,
                                                            DefId(1:283 ~ std[4d5a]::prelude::rust_2015),
                                                        ),
                                                    ),
                                                    args: None,
                                                    infer_args: false,
                                                },
                                            ],
                                        },
                                        Glob,
                                    ),
                                    span: no-location (#1),
                                    vis_span: no-location (#1),
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
                        4238034209817874367,
                        324787208192115302,
                    ),
                    hash_including_bodies: Fingerprint(
                        4238034209817874367,
                        324787208192115302,
                    ),
                },
                parenting: {},
                attrs: AttributeMap {
                    map: SortedMap {
                        data: [
                            (
                                0,
                                [
                                    Attribute {
                                        kind: Normal(
                                            AttrItem {
                                                path: Path {
                                                    span: no-location (#1),
                                                    segments: [
                                                        PathSegment {
                                                            ident: prelude_import#1,
                                                            id: NodeId(2),
                                                            args: None,
                                                        },
                                                    ],
                                                    tokens: None,
                                                },
                                                args: Empty,
                                                tokens: None,
                                            },
                                            None,
                                        ),
                                        id: AttrId(1),
                                        style: Outer,
                                        span: no-location (#1),
                                    },
                                ],
                            ),
                        ],
                    },
                    hash: Fingerprint(
                        12511596860714009903,
                        13173855718583381365,
                    ),
                },
                trait_map: {},
            },
        ),
        Owner(
            OwnerInfo {
                nodes: OwnerNodes {
                    node: Some(
                        ParentedNode {
                            parent: 4294967040,
                            node: Item(
                                Item {
                                    ident: std#2,
                                    def_id: DefId(0:2 ~ qubit[53be]::std),
                                    kind: ExternCrate(
                                        None,
                                    ),
                                    span: no-location (#1),
                                    vis_span: no-location (#1),
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
                        13537682863898349168,
                        15202372275847782708,
                    ),
                    hash_including_bodies: Fingerprint(
                        13537682863898349168,
                        15202372275847782708,
                    ),
                },
                parenting: {},
                attrs: AttributeMap {
                    map: SortedMap {
                        data: [
                            (
                                0,
                                [
                                    Attribute {
                                        kind: Normal(
                                            AttrItem {
                                                path: Path {
                                                    span: no-location (#1),
                                                    segments: [
                                                        PathSegment {
                                                            ident: macro_use#1,
                                                            id: NodeId(8),
                                                            args: None,
                                                        },
                                                    ],
                                                    tokens: None,
                                                },
                                                args: Empty,
                                                tokens: None,
                                            },
                                            None,
                                        ),
                                        id: AttrId(0),
                                        style: Outer,
                                        span: no-location (#1),
                                    },
                                ],
                            ),
                        ],
                    },
                    hash: Fingerprint(
                        13361516752223243332,
                        15681541621449098611,
                    ),
                },
                trait_map: {},
            },
        ),
        Owner(
            OwnerInfo {
                nodes: OwnerNodes {
                    node: Some(
                        ParentedNode {
                            parent: 4294967040,
                            node: Item(
                                Item {
                                    ident: main#0,
                                    def_id: DefId(0:3 ~ qubit[53be]::main),
                                    kind: Fn(
                                        FnSig {
                                            header: FnHeader {
                                                unsafety: Normal,
                                                constness: NotConst,
                                                asyncness: NotAsync,
                                                abi: Rust,
                                            },
                                            decl: FnDecl {
                                                inputs: [],
                                                output: DefaultReturn(
                                                    qubit.rs:1:11: 1:11 (#0),
                                                ),
                                                c_variadic: false,
                                                implicit_self: None,
                                            },
                                            span: qubit.rs:1:1: 1:10 (#0),
                                        },
                                        Generics {
                                            params: [],
                                            predicates: [],
                                            has_where_clause_predicates: false,
                                            where_clause_span: qubit.rs:1:10: 1:10 (#0),
                                            span: qubit.rs:1:8: 1:8 (#0),
                                        },
                                        BodyId {
                                            hir_id: HirId {
                                                owner: DefId(0:3 ~ qubit[53be]::main),
                                                local_id: 89,
                                            },
                                        },
                                    ),
                                    span: qubit.rs:1:1: 6:2 (#0),
                                    vis_span: no-location (#0),
                                },
                            ),
                        },
                    ),
                    bodies: SortedMap {
                        data: [
                            (
                                89,
                                Body {
                                    params: [],
                                    value: Expr {
                                        hir_id: HirId {
                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                            local_id: 89,
                                        },
                                        kind: Block(
                                            Block {
                                                stmts: [
                                                    Stmt {
                                                        hir_id: HirId {
                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                            local_id: 1,
                                                        },
                                                        kind: Local(
                                                            Local {
                                                                pat: Pat {
                                                                    hir_id: HirId {
                                                                        owner: DefId(0:3 ~ qubit[53be]::main),
                                                                        local_id: 12,
                                                                    },
                                                                    kind: Binding(
                                                                        Mutable,
                                                                        HirId {
                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                            local_id: 12,
                                                                        },
                                                                        _q1#0,
                                                                        None,
                                                                    ),
                                                                    span: qubit.rs:2:9: 2:16 (#0),
                                                                    default_binding_modes: true,
                                                                },
                                                                ty: Some(
                                                                    Ty {
                                                                        hir_id: HirId {
                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                            local_id: 2,
                                                                        },
                                                                        kind: Path(
                                                                            Resolved(
                                                                                None,
                                                                                Path {
                                                                                    span: qubit.rs:2:17: 2:22 (#0),
                                                                                    res: Def(
                                                                                        Struct,
                                                                                        DefId(0:4 ~ qubit[53be]::Qubit),
                                                                                    ),
                                                                                    segments: [
                                                                                        PathSegment {
                                                                                            ident: Qubit#0,
                                                                                            hir_id: Some(
                                                                                                HirId {
                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                    local_id: 3,
                                                                                                },
                                                                                            ),
                                                                                            res: Some(
                                                                                                Err,
                                                                                            ),
                                                                                            args: None,
                                                                                            infer_args: false,
                                                                                        },
                                                                                    ],
                                                                                },
                                                                            ),
                                                                        ),
                                                                        span: qubit.rs:2:17: 2:22 (#0),
                                                                    },
                                                                ),
                                                                init: Some(
                                                                    Expr {
                                                                        hir_id: HirId {
                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                            local_id: 10,
                                                                        },
                                                                        kind: Call(
                                                                            Expr {
                                                                                hir_id: HirId {
                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                    local_id: 7,
                                                                                },
                                                                                kind: Path(
                                                                                    TypeRelative(
                                                                                        Ty {
                                                                                            hir_id: HirId {
                                                                                                owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                local_id: 5,
                                                                                            },
                                                                                            kind: Path(
                                                                                                Resolved(
                                                                                                    None,
                                                                                                    Path {
                                                                                                        span: qubit.rs:2:25: 2:30 (#0),
                                                                                                        res: Def(
                                                                                                            Struct,
                                                                                                            DefId(0:4 ~ qubit[53be]::Qubit),
                                                                                                        ),
                                                                                                        segments: [
                                                                                                            PathSegment {
                                                                                                                ident: Qubit#0,
                                                                                                                hir_id: Some(
                                                                                                                    HirId {
                                                                                                                        owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                        local_id: 4,
                                                                                                                    },
                                                                                                                ),
                                                                                                                res: Some(
                                                                                                                    Err,
                                                                                                                ),
                                                                                                                args: None,
                                                                                                                infer_args: true,
                                                                                                            },
                                                                                                        ],
                                                                                                    },
                                                                                                ),
                                                                                            ),
                                                                                            span: qubit.rs:2:25: 2:30 (#0),
                                                                                        },
                                                                                        PathSegment {
                                                                                            ident: new#0,
                                                                                            hir_id: Some(
                                                                                                HirId {
                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                    local_id: 6,
                                                                                                },
                                                                                            ),
                                                                                            res: Some(
                                                                                                Err,
                                                                                            ),
                                                                                            args: None,
                                                                                            infer_args: true,
                                                                                        },
                                                                                    ),
                                                                                ),
                                                                                span: qubit.rs:2:25: 2:35 (#0),
                                                                            },
                                                                            [
                                                                                Expr {
                                                                                    hir_id: HirId {
                                                                                        owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                        local_id: 8,
                                                                                    },
                                                                                    kind: Lit(
                                                                                        Spanned {
                                                                                            node: Int(
                                                                                                1,
                                                                                                Unsuffixed,
                                                                                            ),
                                                                                            span: qubit.rs:2:36: 2:37 (#0),
                                                                                        },
                                                                                    ),
                                                                                    span: qubit.rs:2:36: 2:37 (#0),
                                                                                },
                                                                                Expr {
                                                                                    hir_id: HirId {
                                                                                        owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                        local_id: 9,
                                                                                    },
                                                                                    kind: Lit(
                                                                                        Spanned {
                                                                                            node: Int(
                                                                                                0,
                                                                                                Unsuffixed,
                                                                                            ),
                                                                                            span: qubit.rs:2:38: 2:39 (#0),
                                                                                        },
                                                                                    ),
                                                                                    span: qubit.rs:2:38: 2:39 (#0),
                                                                                },
                                                                            ],
                                                                        ),
                                                                        span: qubit.rs:2:25: 2:40 (#0),
                                                                    },
                                                                ),
                                                                hir_id: HirId {
                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                    local_id: 11,
                                                                },
                                                                span: qubit.rs:2:5: 2:41 (#0),
                                                                source: Normal,
                                                            },
                                                        ),
                                                        span: qubit.rs:2:5: 2:41 (#0),
                                                    },
                                                    Stmt {
                                                        hir_id: HirId {
                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                            local_id: 17,
                                                        },
                                                        kind: Semi(
                                                            Expr {
                                                                hir_id: HirId {
                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                    local_id: 16,
                                                                },
                                                                kind: MethodCall(
                                                                    PathSegment {
                                                                        ident: X#0,
                                                                        hir_id: Some(
                                                                            HirId {
                                                                                owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                local_id: 13,
                                                                            },
                                                                        ),
                                                                        res: Some(
                                                                            Err,
                                                                        ),
                                                                        args: None,
                                                                        infer_args: true,
                                                                    },
                                                                    [
                                                                        Expr {
                                                                            hir_id: HirId {
                                                                                owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                local_id: 15,
                                                                            },
                                                                            kind: Path(
                                                                                Resolved(
                                                                                    None,
                                                                                    Path {
                                                                                        span: qubit.rs:3:5: 3:8 (#0),
                                                                                        res: Local(
                                                                                            HirId {
                                                                                                owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                local_id: 12,
                                                                                            },
                                                                                        ),
                                                                                        segments: [
                                                                                            PathSegment {
                                                                                                ident: _q1#0,
                                                                                                hir_id: Some(
                                                                                                    HirId {
                                                                                                        owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                        local_id: 14,
                                                                                                    },
                                                                                                ),
                                                                                                res: Some(
                                                                                                    Local(
                                                                                                        HirId {
                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                            local_id: 12,
                                                                                                        },
                                                                                                    ),
                                                                                                ),
                                                                                                args: None,
                                                                                                infer_args: true,
                                                                                            },
                                                                                        ],
                                                                                    },
                                                                                ),
                                                                            ),
                                                                            span: qubit.rs:3:5: 3:8 (#0),
                                                                        },
                                                                    ],
                                                                    qubit.rs:3:9: 3:12 (#0),
                                                                ),
                                                                span: qubit.rs:3:5: 3:12 (#0),
                                                            },
                                                        ),
                                                        span: qubit.rs:3:5: 3:13 (#0),
                                                    },
                                                    Stmt {
                                                        hir_id: HirId {
                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                            local_id: 52,
                                                        },
                                                        kind: Semi(
                                                            Expr {
                                                                hir_id: HirId {
                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                    local_id: 51,
                                                                },
                                                                kind: Block(
                                                                    Block {
                                                                        stmts: [
                                                                            Stmt {
                                                                                hir_id: HirId {
                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                    local_id: 49,
                                                                                },
                                                                                kind: Semi(
                                                                                    Expr {
                                                                                        hir_id: HirId {
                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                            local_id: 48,
                                                                                        },
                                                                                        kind: Call(
                                                                                            Expr {
                                                                                                hir_id: HirId {
                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                    local_id: 21,
                                                                                                },
                                                                                                kind: Path(
                                                                                                    Resolved(
                                                                                                        None,
                                                                                                        Path {
                                                                                                            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:27 (#4),
                                                                                                            res: Def(
                                                                                                                Fn,
                                                                                                                DefId(1:4425 ~ std[4d5a]::io::stdio::_print),
                                                                                                            ),
                                                                                                            segments: [
                                                                                                                PathSegment {
                                                                                                                    ident: $crate#4,
                                                                                                                    hir_id: Some(
                                                                                                                        HirId {
                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                            local_id: 18,
                                                                                                                        },
                                                                                                                    ),
                                                                                                                    res: Some(
                                                                                                                        Err,
                                                                                                                    ),
                                                                                                                    args: None,
                                                                                                                    infer_args: true,
                                                                                                                },
                                                                                                                PathSegment {
                                                                                                                    ident: io#4,
                                                                                                                    hir_id: Some(
                                                                                                                        HirId {
                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                            local_id: 19,
                                                                                                                        },
                                                                                                                    ),
                                                                                                                    res: Some(
                                                                                                                        Def(
                                                                                                                            Mod,
                                                                                                                            DefId(1:3276 ~ std[4d5a]::io),
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                    args: None,
                                                                                                                    infer_args: true,
                                                                                                                },
                                                                                                                PathSegment {
                                                                                                                    ident: _print#4,
                                                                                                                    hir_id: Some(
                                                                                                                        HirId {
                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                            local_id: 20,
                                                                                                                        },
                                                                                                                    ),
                                                                                                                    res: Some(
                                                                                                                        Err,
                                                                                                                    ),
                                                                                                                    args: None,
                                                                                                                    infer_args: true,
                                                                                                                },
                                                                                                            ],
                                                                                                        },
                                                                                                    ),
                                                                                                ),
                                                                                                span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:27 (#4),
                                                                                            },
                                                                                            [
                                                                                                Expr {
                                                                                                    hir_id: HirId {
                                                                                                        owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                        local_id: 47,
                                                                                                    },
                                                                                                    kind: Call(
                                                                                                        Expr {
                                                                                                            hir_id: HirId {
                                                                                                                owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                local_id: 28,
                                                                                                            },
                                                                                                            kind: Path(
                                                                                                                TypeRelative(
                                                                                                                    Ty {
                                                                                                                        hir_id: HirId {
                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                            local_id: 26,
                                                                                                                        },
                                                                                                                        kind: Path(
                                                                                                                            Resolved(
                                                                                                                                None,
                                                                                                                                Path {
                                                                                                                                    span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:28 (#5),
                                                                                                                                    res: Def(
                                                                                                                                        Struct,
                                                                                                                                        DefId(2:48289 ~ core[819a]::fmt::Arguments),
                                                                                                                                    ),
                                                                                                                                    segments: [
                                                                                                                                        PathSegment {
                                                                                                                                            ident: $crate#5,
                                                                                                                                            hir_id: Some(
                                                                                                                                                HirId {
                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                    local_id: 22,
                                                                                                                                                },
                                                                                                                                            ),
                                                                                                                                            res: Some(
                                                                                                                                                Err,
                                                                                                                                            ),
                                                                                                                                            args: None,
                                                                                                                                            infer_args: true,
                                                                                                                                        },
                                                                                                                                        PathSegment {
                                                                                                                                            ident: fmt#0,
                                                                                                                                            hir_id: Some(
                                                                                                                                                HirId {
                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                    local_id: 23,
                                                                                                                                                },
                                                                                                                                            ),
                                                                                                                                            res: Some(
                                                                                                                                                Def(
                                                                                                                                                    Mod,
                                                                                                                                                    DefId(2:9735 ~ core[819a]::fmt),
                                                                                                                                                ),
                                                                                                                                            ),
                                                                                                                                            args: None,
                                                                                                                                            infer_args: true,
                                                                                                                                        },
                                                                                                                                        PathSegment {
                                                                                                                                            ident: Arguments#0,
                                                                                                                                            hir_id: Some(
                                                                                                                                                HirId {
                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                    local_id: 25,
                                                                                                                                                },
                                                                                                                                            ),
                                                                                                                                            res: Some(
                                                                                                                                                Err,
                                                                                                                                            ),
                                                                                                                                            args: Some(
                                                                                                                                                GenericArgs {
                                                                                                                                                    args: [
                                                                                                                                                        Lifetime(
                                                                                                                                                            Lifetime {
                                                                                                                                                                hir_id: HirId {
                                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                    local_id: 24,
                                                                                                                                                                },
                                                                                                                                                                span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#0),
                                                                                                                                                                name: Implicit,
                                                                                                                                                            },
                                                                                                                                                        ),
                                                                                                                                                    ],
                                                                                                                                                    bindings: [],
                                                                                                                                                    parenthesized: false,
                                                                                                                                                    span_ext: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:61: 106:61 (#5),
                                                                                                                                                },
                                                                                                                                            ),
                                                                                                                                            infer_args: true,
                                                                                                                                        },
                                                                                                                                    ],
                                                                                                                                },
                                                                                                                            ),
                                                                                                                        ),
                                                                                                                        span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:28 (#5),
                                                                                                                    },
                                                                                                                    PathSegment {
                                                                                                                        ident: new_v1#0,
                                                                                                                        hir_id: Some(
                                                                                                                            HirId {
                                                                                                                                owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                local_id: 27,
                                                                                                                            },
                                                                                                                        ),
                                                                                                                        res: Some(
                                                                                                                            Err,
                                                                                                                        ),
                                                                                                                        args: None,
                                                                                                                        infer_args: true,
                                                                                                                    },
                                                                                                                ),
                                                                                                            ),
                                                                                                            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
                                                                                                        },
                                                                                                        [
                                                                                                            Expr {
                                                                                                                hir_id: HirId {
                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                    local_id: 32,
                                                                                                                },
                                                                                                                kind: AddrOf(
                                                                                                                    Ref,
                                                                                                                    Not,
                                                                                                                    Expr {
                                                                                                                        hir_id: HirId {
                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                            local_id: 31,
                                                                                                                        },
                                                                                                                        kind: Array(
                                                                                                                            [
                                                                                                                                Expr {
                                                                                                                                    hir_id: HirId {
                                                                                                                                        owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                        local_id: 29,
                                                                                                                                    },
                                                                                                                                    kind: Lit(
                                                                                                                                        Spanned {
                                                                                                                                            node: Str(
                                                                                                                                                "  Spin Up: ",
                                                                                                                                                Cooked,
                                                                                                                                            ),
                                                                                                                                            span: qubit.rs:4:14: 4:29 (#0),
                                                                                                                                        },
                                                                                                                                    ),
                                                                                                                                    span: qubit.rs:4:14: 4:29 (#0),
                                                                                                                                },
                                                                                                                                Expr {
                                                                                                                                    hir_id: HirId {
                                                                                                                                        owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                        local_id: 30,
                                                                                                                                    },
                                                                                                                                    kind: Lit(
                                                                                                                                        Spanned {
                                                                                                                                            node: Str(
                                                                                                                                                "\n",
                                                                                                                                                Cooked,
                                                                                                                                            ),
                                                                                                                                            span: qubit.rs:4:14: 4:29 (#0),
                                                                                                                                        },
                                                                                                                                    ),
                                                                                                                                    span: qubit.rs:4:14: 4:29 (#0),
                                                                                                                                },
                                                                                                                            ],
                                                                                                                        ),
                                                                                                                        span: qubit.rs:4:14: 4:29 (#0),
                                                                                                                    },
                                                                                                                ),
                                                                                                                span: qubit.rs:4:14: 4:29 (#0),
                                                                                                            },
                                                                                                            Expr {
                                                                                                                hir_id: HirId {
                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                    local_id: 46,
                                                                                                                },
                                                                                                                kind: AddrOf(
                                                                                                                    Ref,
                                                                                                                    Not,
                                                                                                                    Expr {
                                                                                                                        hir_id: HirId {
                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                            local_id: 45,
                                                                                                                        },
                                                                                                                        kind: Array(
                                                                                                                            [
                                                                                                                                Expr {
                                                                                                                                    hir_id: HirId {
                                                                                                                                        owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                        local_id: 44,
                                                                                                                                    },
                                                                                                                                    kind: Call(
                                                                                                                                        Expr {
                                                                                                                                            hir_id: HirId {
                                                                                                                                                owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                local_id: 39,
                                                                                                                                            },
                                                                                                                                            kind: Path(
                                                                                                                                                TypeRelative(
                                                                                                                                                    Ty {
                                                                                                                                                        hir_id: HirId {
                                                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                            local_id: 37,
                                                                                                                                                        },
                                                                                                                                                        kind: Path(
                                                                                                                                                            Resolved(
                                                                                                                                                                None,
                                                                                                                                                                Path {
                                                                                                                                                                    span: qubit.rs:4:31: 4:31 (#5),
                                                                                                                                                                    res: Def(
                                                                                                                                                                        Struct,
                                                                                                                                                                        DefId(2:48237 ~ core[819a]::fmt::ArgumentV1),
                                                                                                                                                                    ),
                                                                                                                                                                    segments: [
                                                                                                                                                                        PathSegment {
                                                                                                                                                                            ident: $crate#5,
                                                                                                                                                                            hir_id: Some(
                                                                                                                                                                                HirId {
                                                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                                    local_id: 33,
                                                                                                                                                                                },
                                                                                                                                                                            ),
                                                                                                                                                                            res: Some(
                                                                                                                                                                                Err,
                                                                                                                                                                            ),
                                                                                                                                                                            args: None,
                                                                                                                                                                            infer_args: true,
                                                                                                                                                                        },
                                                                                                                                                                        PathSegment {
                                                                                                                                                                            ident: fmt#0,
                                                                                                                                                                            hir_id: Some(
                                                                                                                                                                                HirId {
                                                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                                    local_id: 34,
                                                                                                                                                                                },
                                                                                                                                                                            ),
                                                                                                                                                                            res: Some(
                                                                                                                                                                                Def(
                                                                                                                                                                                    Mod,
                                                                                                                                                                                    DefId(2:9735 ~ core[819a]::fmt),
                                                                                                                                                                                ),
                                                                                                                                                                            ),
                                                                                                                                                                            args: None,
                                                                                                                                                                            infer_args: true,
                                                                                                                                                                        },
                                                                                                                                                                        PathSegment {
                                                                                                                                                                            ident: ArgumentV1#0,
                                                                                                                                                                            hir_id: Some(
                                                                                                                                                                                HirId {
                                                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                                    local_id: 36,
                                                                                                                                                                                },
                                                                                                                                                                            ),
                                                                                                                                                                            res: Some(
                                                                                                                                                                                Err,
                                                                                                                                                                            ),
                                                                                                                                                                            args: Some(
                                                                                                                                                                                GenericArgs {
                                                                                                                                                                                    args: [
                                                                                                                                                                                        Lifetime(
                                                                                                                                                                                            Lifetime {
                                                                                                                                                                                                hir_id: HirId {
                                                                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                                                    local_id: 35,
                                                                                                                                                                                                },
                                                                                                                                                                                                span: qubit.rs:4:31: 4:37 (#0),
                                                                                                                                                                                                name: Implicit,
                                                                                                                                                                                            },
                                                                                                                                                                                        ),
                                                                                                                                                                                    ],
                                                                                                                                                                                    bindings: [],
                                                                                                                                                                                    parenthesized: false,
                                                                                                                                                                                    span_ext: qubit.rs:4:37: 4:37 (#5),
                                                                                                                                                                                },
                                                                                                                                                                            ),
                                                                                                                                                                            infer_args: true,
                                                                                                                                                                        },
                                                                                                                                                                    ],
                                                                                                                                                                },
                                                                                                                                                            ),
                                                                                                                                                        ),
                                                                                                                                                        span: qubit.rs:4:31: 4:31 (#5),
                                                                                                                                                    },
                                                                                                                                                    PathSegment {
                                                                                                                                                        ident: new_display#0,
                                                                                                                                                        hir_id: Some(
                                                                                                                                                            HirId {
                                                                                                                                                                owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                local_id: 38,
                                                                                                                                                            },
                                                                                                                                                        ),
                                                                                                                                                        res: Some(
                                                                                                                                                            Err,
                                                                                                                                                        ),
                                                                                                                                                        args: None,
                                                                                                                                                        infer_args: true,
                                                                                                                                                    },
                                                                                                                                                ),
                                                                                                                                            ),
                                                                                                                                            span: qubit.rs:4:31: 4:37 (#5),
                                                                                                                                        },
                                                                                                                                        [
                                                                                                                                            Expr {
                                                                                                                                                hir_id: HirId {
                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                    local_id: 43,
                                                                                                                                                },
                                                                                                                                                kind: AddrOf(
                                                                                                                                                    Ref,
                                                                                                                                                    Not,
                                                                                                                                                    Expr {
                                                                                                                                                        hir_id: HirId {
                                                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                            local_id: 42,
                                                                                                                                                        },
                                                                                                                                                        kind: Field(
                                                                                                                                                            Expr {
                                                                                                                                                                hir_id: HirId {
                                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                    local_id: 41,
                                                                                                                                                                },
                                                                                                                                                                kind: Path(
                                                                                                                                                                    Resolved(
                                                                                                                                                                        None,
                                                                                                                                                                        Path {
                                                                                                                                                                            span: qubit.rs:4:31: 4:34 (#0),
                                                                                                                                                                            res: Local(
                                                                                                                                                                                HirId {
                                                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                                    local_id: 12,
                                                                                                                                                                                },
                                                                                                                                                                            ),
                                                                                                                                                                            segments: [
                                                                                                                                                                                PathSegment {
                                                                                                                                                                                    ident: _q1#0,
                                                                                                                                                                                    hir_id: Some(
                                                                                                                                                                                        HirId {
                                                                                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                                            local_id: 40,
                                                                                                                                                                                        },
                                                                                                                                                                                    ),
                                                                                                                                                                                    res: Some(
                                                                                                                                                                                        Local(
                                                                                                                                                                                            HirId {
                                                                                                                                                                                                owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                                                local_id: 12,
                                                                                                                                                                                            },
                                                                                                                                                                                        ),
                                                                                                                                                                                    ),
                                                                                                                                                                                    args: None,
                                                                                                                                                                                    infer_args: true,
                                                                                                                                                                                },
                                                                                                                                                                            ],
                                                                                                                                                                        },
                                                                                                                                                                    ),
                                                                                                                                                                ),
                                                                                                                                                                span: qubit.rs:4:31: 4:34 (#0),
                                                                                                                                                            },
                                                                                                                                                            up#0,
                                                                                                                                                        ),
                                                                                                                                                        span: qubit.rs:4:31: 4:37 (#0),
                                                                                                                                                    },
                                                                                                                                                ),
                                                                                                                                                span: qubit.rs:4:31: 4:37 (#5),
                                                                                                                                            },
                                                                                                                                        ],
                                                                                                                                    ),
                                                                                                                                    span: qubit.rs:4:31: 4:37 (#5),
                                                                                                                                },
                                                                                                                            ],
                                                                                                                        ),
                                                                                                                        span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
                                                                                                                    },
                                                                                                                ),
                                                                                                                span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
                                                                                                            },
                                                                                                        ],
                                                                                                    ),
                                                                                                    span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#5),
                                                                                                },
                                                                                            ],
                                                                                        ),
                                                                                        span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:62 (#4),
                                                                                    },
                                                                                ),
                                                                                span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:63 (#4),
                                                                            },
                                                                        ],
                                                                        expr: None,
                                                                        hir_id: HirId {
                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                            local_id: 50,
                                                                        },
                                                                        rules: DefaultBlock,
                                                                        span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:105:23: 107:6 (#4),
                                                                        targeted_by_break: false,
                                                                    },
                                                                    None,
                                                                ),
                                                                span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:105:23: 107:6 (#4),
                                                            },
                                                        ),
                                                        span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:105:23: 107:6 (#4),
                                                    },
                                                    Stmt {
                                                        hir_id: HirId {
                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                            local_id: 87,
                                                        },
                                                        kind: Semi(
                                                            Expr {
                                                                hir_id: HirId {
                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                    local_id: 86,
                                                                },
                                                                kind: Block(
                                                                    Block {
                                                                        stmts: [
                                                                            Stmt {
                                                                                hir_id: HirId {
                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                    local_id: 84,
                                                                                },
                                                                                kind: Semi(
                                                                                    Expr {
                                                                                        hir_id: HirId {
                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                            local_id: 83,
                                                                                        },
                                                                                        kind: Call(
                                                                                            Expr {
                                                                                                hir_id: HirId {
                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                    local_id: 56,
                                                                                                },
                                                                                                kind: Path(
                                                                                                    Resolved(
                                                                                                        None,
                                                                                                        Path {
                                                                                                            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:27 (#6),
                                                                                                            res: Def(
                                                                                                                Fn,
                                                                                                                DefId(1:4425 ~ std[4d5a]::io::stdio::_print),
                                                                                                            ),
                                                                                                            segments: [
                                                                                                                PathSegment {
                                                                                                                    ident: $crate#6,
                                                                                                                    hir_id: Some(
                                                                                                                        HirId {
                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                            local_id: 53,
                                                                                                                        },
                                                                                                                    ),
                                                                                                                    res: Some(
                                                                                                                        Err,
                                                                                                                    ),
                                                                                                                    args: None,
                                                                                                                    infer_args: true,
                                                                                                                },
                                                                                                                PathSegment {
                                                                                                                    ident: io#6,
                                                                                                                    hir_id: Some(
                                                                                                                        HirId {
                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                            local_id: 54,
                                                                                                                        },
                                                                                                                    ),
                                                                                                                    res: Some(
                                                                                                                        Def(
                                                                                                                            Mod,
                                                                                                                            DefId(1:3276 ~ std[4d5a]::io),
                                                                                                                        ),
                                                                                                                    ),
                                                                                                                    args: None,
                                                                                                                    infer_args: true,
                                                                                                                },
                                                                                                                PathSegment {
                                                                                                                    ident: _print#6,
                                                                                                                    hir_id: Some(
                                                                                                                        HirId {
                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                            local_id: 55,
                                                                                                                        },
                                                                                                                    ),
                                                                                                                    res: Some(
                                                                                                                        Err,
                                                                                                                    ),
                                                                                                                    args: None,
                                                                                                                    infer_args: true,
                                                                                                                },
                                                                                                            ],
                                                                                                        },
                                                                                                    ),
                                                                                                ),
                                                                                                span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:27 (#6),
                                                                                            },
                                                                                            [
                                                                                                Expr {
                                                                                                    hir_id: HirId {
                                                                                                        owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                        local_id: 82,
                                                                                                    },
                                                                                                    kind: Call(
                                                                                                        Expr {
                                                                                                            hir_id: HirId {
                                                                                                                owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                local_id: 63,
                                                                                                            },
                                                                                                            kind: Path(
                                                                                                                TypeRelative(
                                                                                                                    Ty {
                                                                                                                        hir_id: HirId {
                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                            local_id: 61,
                                                                                                                        },
                                                                                                                        kind: Path(
                                                                                                                            Resolved(
                                                                                                                                None,
                                                                                                                                Path {
                                                                                                                                    span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:28 (#7),
                                                                                                                                    res: Def(
                                                                                                                                        Struct,
                                                                                                                                        DefId(2:48289 ~ core[819a]::fmt::Arguments),
                                                                                                                                    ),
                                                                                                                                    segments: [
                                                                                                                                        PathSegment {
                                                                                                                                            ident: $crate#7,
                                                                                                                                            hir_id: Some(
                                                                                                                                                HirId {
                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                    local_id: 57,
                                                                                                                                                },
                                                                                                                                            ),
                                                                                                                                            res: Some(
                                                                                                                                                Err,
                                                                                                                                            ),
                                                                                                                                            args: None,
                                                                                                                                            infer_args: true,
                                                                                                                                        },
                                                                                                                                        PathSegment {
                                                                                                                                            ident: fmt#0,
                                                                                                                                            hir_id: Some(
                                                                                                                                                HirId {
                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                    local_id: 58,
                                                                                                                                                },
                                                                                                                                            ),
                                                                                                                                            res: Some(
                                                                                                                                                Def(
                                                                                                                                                    Mod,
                                                                                                                                                    DefId(2:9735 ~ core[819a]::fmt),
                                                                                                                                                ),
                                                                                                                                            ),
                                                                                                                                            args: None,
                                                                                                                                            infer_args: true,
                                                                                                                                        },
                                                                                                                                        PathSegment {
                                                                                                                                            ident: Arguments#0,
                                                                                                                                            hir_id: Some(
                                                                                                                                                HirId {
                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                    local_id: 60,
                                                                                                                                                },
                                                                                                                                            ),
                                                                                                                                            res: Some(
                                                                                                                                                Err,
                                                                                                                                            ),
                                                                                                                                            args: Some(
                                                                                                                                                GenericArgs {
                                                                                                                                                    args: [
                                                                                                                                                        Lifetime(
                                                                                                                                                            Lifetime {
                                                                                                                                                                hir_id: HirId {
                                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                    local_id: 59,
                                                                                                                                                                },
                                                                                                                                                                span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#0),
                                                                                                                                                                name: Implicit,
                                                                                                                                                            },
                                                                                                                                                        ),
                                                                                                                                                    ],
                                                                                                                                                    bindings: [],
                                                                                                                                                    parenthesized: false,
                                                                                                                                                    span_ext: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:61: 106:61 (#7),
                                                                                                                                                },
                                                                                                                                            ),
                                                                                                                                            infer_args: true,
                                                                                                                                        },
                                                                                                                                    ],
                                                                                                                                },
                                                                                                                            ),
                                                                                                                        ),
                                                                                                                        span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:28 (#7),
                                                                                                                    },
                                                                                                                    PathSegment {
                                                                                                                        ident: new_v1#0,
                                                                                                                        hir_id: Some(
                                                                                                                            HirId {
                                                                                                                                owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                local_id: 62,
                                                                                                                            },
                                                                                                                        ),
                                                                                                                        res: Some(
                                                                                                                            Err,
                                                                                                                        ),
                                                                                                                        args: None,
                                                                                                                        infer_args: true,
                                                                                                                    },
                                                                                                                ),
                                                                                                            ),
                                                                                                            span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
                                                                                                        },
                                                                                                        [
                                                                                                            Expr {
                                                                                                                hir_id: HirId {
                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                    local_id: 67,
                                                                                                                },
                                                                                                                kind: AddrOf(
                                                                                                                    Ref,
                                                                                                                    Not,
                                                                                                                    Expr {
                                                                                                                        hir_id: HirId {
                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                            local_id: 66,
                                                                                                                        },
                                                                                                                        kind: Array(
                                                                                                                            [
                                                                                                                                Expr {
                                                                                                                                    hir_id: HirId {
                                                                                                                                        owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                        local_id: 64,
                                                                                                                                    },
                                                                                                                                    kind: Lit(
                                                                                                                                        Spanned {
                                                                                                                                            node: Str(
                                                                                                                                                "Spin Down: ",
                                                                                                                                                Cooked,
                                                                                                                                            ),
                                                                                                                                            span: qubit.rs:5:14: 5:29 (#0),
                                                                                                                                        },
                                                                                                                                    ),
                                                                                                                                    span: qubit.rs:5:14: 5:29 (#0),
                                                                                                                                },
                                                                                                                                Expr {
                                                                                                                                    hir_id: HirId {
                                                                                                                                        owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                        local_id: 65,
                                                                                                                                    },
                                                                                                                                    kind: Lit(
                                                                                                                                        Spanned {
                                                                                                                                            node: Str(
                                                                                                                                                "\n",
                                                                                                                                                Cooked,
                                                                                                                                            ),
                                                                                                                                            span: qubit.rs:5:14: 5:29 (#0),
                                                                                                                                        },
                                                                                                                                    ),
                                                                                                                                    span: qubit.rs:5:14: 5:29 (#0),
                                                                                                                                },
                                                                                                                            ],
                                                                                                                        ),
                                                                                                                        span: qubit.rs:5:14: 5:29 (#0),
                                                                                                                    },
                                                                                                                ),
                                                                                                                span: qubit.rs:5:14: 5:29 (#0),
                                                                                                            },
                                                                                                            Expr {
                                                                                                                hir_id: HirId {
                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                    local_id: 81,
                                                                                                                },
                                                                                                                kind: AddrOf(
                                                                                                                    Ref,
                                                                                                                    Not,
                                                                                                                    Expr {
                                                                                                                        hir_id: HirId {
                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                            local_id: 80,
                                                                                                                        },
                                                                                                                        kind: Array(
                                                                                                                            [
                                                                                                                                Expr {
                                                                                                                                    hir_id: HirId {
                                                                                                                                        owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                        local_id: 79,
                                                                                                                                    },
                                                                                                                                    kind: Call(
                                                                                                                                        Expr {
                                                                                                                                            hir_id: HirId {
                                                                                                                                                owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                local_id: 74,
                                                                                                                                            },
                                                                                                                                            kind: Path(
                                                                                                                                                TypeRelative(
                                                                                                                                                    Ty {
                                                                                                                                                        hir_id: HirId {
                                                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                            local_id: 72,
                                                                                                                                                        },
                                                                                                                                                        kind: Path(
                                                                                                                                                            Resolved(
                                                                                                                                                                None,
                                                                                                                                                                Path {
                                                                                                                                                                    span: qubit.rs:5:31: 5:31 (#7),
                                                                                                                                                                    res: Def(
                                                                                                                                                                        Struct,
                                                                                                                                                                        DefId(2:48237 ~ core[819a]::fmt::ArgumentV1),
                                                                                                                                                                    ),
                                                                                                                                                                    segments: [
                                                                                                                                                                        PathSegment {
                                                                                                                                                                            ident: $crate#7,
                                                                                                                                                                            hir_id: Some(
                                                                                                                                                                                HirId {
                                                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                                    local_id: 68,
                                                                                                                                                                                },
                                                                                                                                                                            ),
                                                                                                                                                                            res: Some(
                                                                                                                                                                                Err,
                                                                                                                                                                            ),
                                                                                                                                                                            args: None,
                                                                                                                                                                            infer_args: true,
                                                                                                                                                                        },
                                                                                                                                                                        PathSegment {
                                                                                                                                                                            ident: fmt#0,
                                                                                                                                                                            hir_id: Some(
                                                                                                                                                                                HirId {
                                                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                                    local_id: 69,
                                                                                                                                                                                },
                                                                                                                                                                            ),
                                                                                                                                                                            res: Some(
                                                                                                                                                                                Def(
                                                                                                                                                                                    Mod,
                                                                                                                                                                                    DefId(2:9735 ~ core[819a]::fmt),
                                                                                                                                                                                ),
                                                                                                                                                                            ),
                                                                                                                                                                            args: None,
                                                                                                                                                                            infer_args: true,
                                                                                                                                                                        },
                                                                                                                                                                        PathSegment {
                                                                                                                                                                            ident: ArgumentV1#0,
                                                                                                                                                                            hir_id: Some(
                                                                                                                                                                                HirId {
                                                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                                    local_id: 71,
                                                                                                                                                                                },
                                                                                                                                                                            ),
                                                                                                                                                                            res: Some(
                                                                                                                                                                                Err,
                                                                                                                                                                            ),
                                                                                                                                                                            args: Some(
                                                                                                                                                                                GenericArgs {
                                                                                                                                                                                    args: [
                                                                                                                                                                                        Lifetime(
                                                                                                                                                                                            Lifetime {
                                                                                                                                                                                                hir_id: HirId {
                                                                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                                                    local_id: 70,
                                                                                                                                                                                                },
                                                                                                                                                                                                span: qubit.rs:5:31: 5:39 (#0),
                                                                                                                                                                                                name: Implicit,
                                                                                                                                                                                            },
                                                                                                                                                                                        ),
                                                                                                                                                                                    ],
                                                                                                                                                                                    bindings: [],
                                                                                                                                                                                    parenthesized: false,
                                                                                                                                                                                    span_ext: qubit.rs:5:39: 5:39 (#7),
                                                                                                                                                                                },
                                                                                                                                                                            ),
                                                                                                                                                                            infer_args: true,
                                                                                                                                                                        },
                                                                                                                                                                    ],
                                                                                                                                                                },
                                                                                                                                                            ),
                                                                                                                                                        ),
                                                                                                                                                        span: qubit.rs:5:31: 5:31 (#7),
                                                                                                                                                    },
                                                                                                                                                    PathSegment {
                                                                                                                                                        ident: new_display#0,
                                                                                                                                                        hir_id: Some(
                                                                                                                                                            HirId {
                                                                                                                                                                owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                local_id: 73,
                                                                                                                                                            },
                                                                                                                                                        ),
                                                                                                                                                        res: Some(
                                                                                                                                                            Err,
                                                                                                                                                        ),
                                                                                                                                                        args: None,
                                                                                                                                                        infer_args: true,
                                                                                                                                                    },
                                                                                                                                                ),
                                                                                                                                            ),
                                                                                                                                            span: qubit.rs:5:31: 5:39 (#7),
                                                                                                                                        },
                                                                                                                                        [
                                                                                                                                            Expr {
                                                                                                                                                hir_id: HirId {
                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                    local_id: 78,
                                                                                                                                                },
                                                                                                                                                kind: AddrOf(
                                                                                                                                                    Ref,
                                                                                                                                                    Not,
                                                                                                                                                    Expr {
                                                                                                                                                        hir_id: HirId {
                                                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                            local_id: 77,
                                                                                                                                                        },
                                                                                                                                                        kind: Field(
                                                                                                                                                            Expr {
                                                                                                                                                                hir_id: HirId {
                                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                    local_id: 76,
                                                                                                                                                                },
                                                                                                                                                                kind: Path(
                                                                                                                                                                    Resolved(
                                                                                                                                                                        None,
                                                                                                                                                                        Path {
                                                                                                                                                                            span: qubit.rs:5:31: 5:34 (#0),
                                                                                                                                                                            res: Local(
                                                                                                                                                                                HirId {
                                                                                                                                                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                                    local_id: 12,
                                                                                                                                                                                },
                                                                                                                                                                            ),
                                                                                                                                                                            segments: [
                                                                                                                                                                                PathSegment {
                                                                                                                                                                                    ident: _q1#0,
                                                                                                                                                                                    hir_id: Some(
                                                                                                                                                                                        HirId {
                                                                                                                                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                                            local_id: 75,
                                                                                                                                                                                        },
                                                                                                                                                                                    ),
                                                                                                                                                                                    res: Some(
                                                                                                                                                                                        Local(
                                                                                                                                                                                            HirId {
                                                                                                                                                                                                owner: DefId(0:3 ~ qubit[53be]::main),
                                                                                                                                                                                                local_id: 12,
                                                                                                                                                                                            },
                                                                                                                                                                                        ),
                                                                                                                                                                                    ),
                                                                                                                                                                                    args: None,
                                                                                                                                                                                    infer_args: true,
                                                                                                                                                                                },
                                                                                                                                                                            ],
                                                                                                                                                                        },
                                                                                                                                                                    ),
                                                                                                                                                                ),
                                                                                                                                                                span: qubit.rs:5:31: 5:34 (#0),
                                                                                                                                                            },
                                                                                                                                                            down#0,
                                                                                                                                                        ),
                                                                                                                                                        span: qubit.rs:5:31: 5:39 (#0),
                                                                                                                                                    },
                                                                                                                                                ),
                                                                                                                                                span: qubit.rs:5:31: 5:39 (#7),
                                                                                                                                            },
                                                                                                                                        ],
                                                                                                                                    ),
                                                                                                                                    span: qubit.rs:5:31: 5:39 (#7),
                                                                                                                                },
                                                                                                                            ],
                                                                                                                        ),
                                                                                                                        span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
                                                                                                                    },
                                                                                                                ),
                                                                                                                span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
                                                                                                            },
                                                                                                        ],
                                                                                                    ),
                                                                                                    span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:28: 106:61 (#7),
                                                                                                },
                                                                                            ],
                                                                                        ),
                                                                                        span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:62 (#6),
                                                                                    },
                                                                                ),
                                                                                span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:106:9: 106:63 (#6),
                                                                            },
                                                                        ],
                                                                        expr: None,
                                                                        hir_id: HirId {
                                                                            owner: DefId(0:3 ~ qubit[53be]::main),
                                                                            local_id: 85,
                                                                        },
                                                                        rules: DefaultBlock,
                                                                        span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:105:23: 107:6 (#6),
                                                                        targeted_by_break: false,
                                                                    },
                                                                    None,
                                                                ),
                                                                span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:105:23: 107:6 (#6),
                                                            },
                                                        ),
                                                        span: /rustc/ca122c7ebb3ab50149c9d3d24ddb59c252b32272\library\std\src\macros.rs:105:23: 107:6 (#6),
                                                    },
                                                ],
                                                expr: None,
                                                hir_id: HirId {
                                                    owner: DefId(0:3 ~ qubit[53be]::main),
                                                    local_id: 88,
                                                },
                                                rules: DefaultBlock,
                                                span: qubit.rs:1:11: 6:2 (#0),
                                                targeted_by_break: false,
                                            },
                                            None,
                                        ),
                                        span: qubit.rs:1:11: 6:2 (#0),
                                    },
                                    generator_kind: None,
                                },
                            ),
                        ],
                    },
                    local_id_to_def_id: SortedMap {
                        data: [],
                    },
                    hash_without_bodies: Fingerprint(
                        7440859001717414612,
                        6025650533827533663,
                    ),
                    hash_including_bodies: Fingerprint(
                        10035193336676396660,
                        5875280825421020908,
                    ),
                },
                parenting: {},
                attrs: AttributeMap {
                    map: SortedMap {
                        data: [],
                    },
                    hash: Fingerprint(
                        9785122672296426403,
                        8173264106939382879,
                    ),
                },
                trait_map: {
                    16: [],
                    77: [],
                    42: [],
                    7: [],
                    39: [],
                    74: [],
                    63: [],
                    28: [],
                },
            },
        ),
        Owner(
            OwnerInfo {
                nodes: OwnerNodes {
                    node: Some(
                        ParentedNode {
                            parent: 4294967040,
                            node: Item(
                                Item {
                                    ident: Qubit#0,
                                    def_id: DefId(0:4 ~ qubit[53be]::Qubit),
                                    kind: Struct(
                                        Struct(
                                            [
                                                FieldDef {
                                                    span: qubit.rs:9:7: 9:14 (#0),
                                                    vis_span: qubit.rs:9:7: 9:7 (#0),
                                                    ident: up#0,
                                                    hir_id: HirId {
                                                        owner: DefId(0:4 ~ qubit[53be]::Qubit),
                                                        local_id: 3,
                                                    },
                                                    ty: Ty {
                                                        hir_id: HirId {
                                                            owner: DefId(0:4 ~ qubit[53be]::Qubit),
                                                            local_id: 1,
                                                        },
                                                        kind: Path(
                                                            Resolved(
                                                                None,
                                                                Path {
                                                                    span: qubit.rs:9:11: 9:14 (#0),
                                                                    res: PrimTy(
                                                                        Int(
                                                                            I64,
                                                                        ),
                                                                    ),
                                                                    segments: [
                                                                        PathSegment {
                                                                            ident: i64#0,
                                                                            hir_id: Some(
                                                                                HirId {
                                                                                    owner: DefId(0:4 ~ qubit[53be]::Qubit),
                                                                                    local_id: 2,
                                                                                },
                                                                            ),
                                                                            res: Some(
                                                                                Err,
                                                                            ),
                                                                            args: None,
                                                                            infer_args: false,
                                                                        },
                                                                    ],
                                                                },
                                                            ),
                                                        ),
                                                        span: qubit.rs:9:11: 9:14 (#0),
                                                    },
                                                },
                                                FieldDef {
                                                    span: qubit.rs:10:5: 10:14 (#0),
                                                    vis_span: qubit.rs:10:5: 10:5 (#0),
                                                    ident: down#0,
                                                    hir_id: HirId {
                                                        owner: DefId(0:4 ~ qubit[53be]::Qubit),
                                                        local_id: 6,
                                                    },
                                                    ty: Ty {
                                                        hir_id: HirId {
                                                            owner: DefId(0:4 ~ qubit[53be]::Qubit),
                                                            local_id: 4,
                                                        },
                                                        kind: Path(
                                                            Resolved(
                                                                None,
                                                                Path {
                                                                    span: qubit.rs:10:11: 10:14 (#0),
                                                                    res: PrimTy(
                                                                        Int(
                                                                            I64,
                                                                        ),
                                                                    ),
                                                                    segments: [
                                                                        PathSegment {
                                                                            ident: i64#0,
                                                                            hir_id: Some(
                                                                                HirId {
                                                                                    owner: DefId(0:4 ~ qubit[53be]::Qubit),
                                                                                    local_id: 5,
                                                                                },
                                                                            ),
                                                                            res: Some(
                                                                                Err,
                                                                            ),
                                                                            args: None,
                                                                            infer_args: false,
                                                                        },
                                                                    ],
                                                                },
                                                            ),
                                                        ),
                                                        span: qubit.rs:10:11: 10:14 (#0),
                                                    },
                                                },
                                            ],
                                            false,
                                        ),
                                        Generics {
                                            params: [],
                                            predicates: [],
                                            has_where_clause_predicates: false,
                                            where_clause_span: qubit.rs:8:13: 8:13 (#0),
                                            span: qubit.rs:8:13: 8:13 (#0),
                                        },
                                    ),
                                    span: qubit.rs:8:1: 11:2 (#0),
                                    vis_span: qubit.rs:8:1: 8:1 (#0),
                                },
                            ),
                        },
                    ),
                    bodies: SortedMap {
                        data: [],
                    },
                    local_id_to_def_id: SortedMap {
                        data: [
                            (
                                3,
                                DefId(0:5 ~ qubit[53be]::Qubit::up),
                            ),
                            (
                                6,
                                DefId(0:6 ~ qubit[53be]::Qubit::down),
                            ),
                        ],
                    },
                    hash_without_bodies: Fingerprint(
                        9221748623458224496,
                        3662930747267362012,
                    ),
                    hash_including_bodies: Fingerprint(
                        9221748623458224496,
                        3662930747267362012,
                    ),
                },
                parenting: {},
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
        NonOwner(
            HirId {
                owner: DefId(0:4 ~ qubit[53be]::Qubit),
                local_id: 3,
            },
        ),
        NonOwner(
            HirId {
                owner: DefId(0:4 ~ qubit[53be]::Qubit),
                local_id: 6,
            },
        ),
        Owner(
            OwnerInfo {
                nodes: OwnerNodes {
                    node: Some(
                        ParentedNode {
                            parent: 4294967040,
                            node: Item(
                                Item {
                                    ident: #0,
                                    def_id: DefId(0:7 ~ qubit[53be]::{impl#0}),
                                    kind: Impl(
                                        Impl {
                                            unsafety: Normal,
                                            polarity: "positive",
                                            defaultness: Final,
                                            defaultness_span: None,
                                            constness: NotConst,
                                            generics: Generics {
                                                params: [],
                                                predicates: [],
                                                has_where_clause_predicates: false,
                                                where_clause_span: qubit.rs:13:11: 13:11 (#0),
                                                span: qubit.rs:13:5: 13:5 (#0),
                                            },
                                            of_trait: None,
                                            self_ty: Ty {
                                                hir_id: HirId {
                                                    owner: DefId(0:7 ~ qubit[53be]::{impl#0}),
                                                    local_id: 1,
                                                },
                                                kind: Path(
                                                    Resolved(
                                                        None,
                                                        Path {
                                                            span: qubit.rs:13:6: 13:11 (#0),
                                                            res: Def(
                                                                Struct,
                                                                DefId(0:4 ~ qubit[53be]::Qubit),
                                                            ),
                                                            segments: [
                                                                PathSegment {
                                                                    ident: Qubit#0,
                                                                    hir_id: Some(
                                                                        HirId {
                                                                            owner: DefId(0:7 ~ qubit[53be]::{impl#0}),
                                                                            local_id: 2,
                                                                        },
                                                                    ),
                                                                    res: Some(
                                                                        Err,
                                                                    ),
                                                                    args: None,
                                                                    infer_args: false,
                                                                },
                                                            ],
                                                        },
                                                    ),
                                                ),
                                                span: qubit.rs:13:6: 13:11 (#0),
                                            },
                                            items: [
                                                ImplItemRef {
                                                    id: ImplItemId {
                                                        def_id: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                    },
                                                    ident: new#0,
                                                    kind: Fn {
                                                        has_self: false,
                                                    },
                                                    span: qubit.rs:14:5: 19:6 (#0),
                                                    defaultness: Final,
                                                    trait_item_def_id: None,
                                                },
                                                ImplItemRef {
                                                    id: ImplItemId {
                                                        def_id: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                    },
                                                    ident: X#0,
                                                    kind: Fn {
                                                        has_self: true,
                                                    },
                                                    span: qubit.rs:21:5: 25:6 (#0),
                                                    defaultness: Final,
                                                    trait_item_def_id: None,
                                                },
                                            ],
                                        },
                                    ),
                                    span: qubit.rs:13:1: 27:2 (#0),
                                    vis_span: qubit.rs:13:1: 13:1 (#0),
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
                        16575036897498923644,
                        13830909552896892226,
                    ),
                    hash_including_bodies: Fingerprint(
                        16575036897498923644,
                        13830909552896892226,
                    ),
                },
                parenting: {
                    DefId(0:8 ~ qubit[53be]::{impl#0}::new): 0,
                    DefId(0:9 ~ qubit[53be]::{impl#0}::X): 0,
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
        Owner(
            OwnerInfo {
                nodes: OwnerNodes {
                    node: Some(
                        ParentedNode {
                            parent: 4294967040,
                            node: ImplItem(
                                ImplItem {
                                    ident: new#0,
                                    def_id: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                    generics: Generics {
                                        params: [],
                                        predicates: [],
                                        has_where_clause_predicates: false,
                                        where_clause_span: qubit.rs:14:40: 14:40 (#0),
                                        span: qubit.rs:14:11: 14:11 (#0),
                                    },
                                    kind: Fn(
                                        FnSig {
                                            header: FnHeader {
                                                unsafety: Normal,
                                                constness: NotConst,
                                                asyncness: NotAsync,
                                                abi: Rust,
                                            },
                                            decl: FnDecl {
                                                inputs: [
                                                    Ty {
                                                        hir_id: HirId {
                                                            owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                            local_id: 15,
                                                        },
                                                        kind: Path(
                                                            Resolved(
                                                                None,
                                                                Path {
                                                                    span: qubit.rs:14:16: 14:19 (#0),
                                                                    res: PrimTy(
                                                                        Int(
                                                                            I64,
                                                                        ),
                                                                    ),
                                                                    segments: [
                                                                        PathSegment {
                                                                            ident: i64#0,
                                                                            hir_id: Some(
                                                                                HirId {
                                                                                    owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                                                    local_id: 16,
                                                                                },
                                                                            ),
                                                                            res: Some(
                                                                                Err,
                                                                            ),
                                                                            args: None,
                                                                            infer_args: false,
                                                                        },
                                                                    ],
                                                                },
                                                            ),
                                                        ),
                                                        span: qubit.rs:14:16: 14:19 (#0),
                                                    },
                                                    Ty {
                                                        hir_id: HirId {
                                                            owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                            local_id: 17,
                                                        },
                                                        kind: Path(
                                                            Resolved(
                                                                None,
                                                                Path {
                                                                    span: qubit.rs:14:27: 14:30 (#0),
                                                                    res: PrimTy(
                                                                        Int(
                                                                            I64,
                                                                        ),
                                                                    ),
                                                                    segments: [
                                                                        PathSegment {
                                                                            ident: i64#0,
                                                                            hir_id: Some(
                                                                                HirId {
                                                                                    owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                                                    local_id: 18,
                                                                                },
                                                                            ),
                                                                            res: Some(
                                                                                Err,
                                                                            ),
                                                                            args: None,
                                                                            infer_args: false,
                                                                        },
                                                                    ],
                                                                },
                                                            ),
                                                        ),
                                                        span: qubit.rs:14:27: 14:30 (#0),
                                                    },
                                                ],
                                                output: Return(
                                                    Ty {
                                                        hir_id: HirId {
                                                            owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                            local_id: 19,
                                                        },
                                                        kind: Path(
                                                            Resolved(
                                                                None,
                                                                Path {
                                                                    span: qubit.rs:14:35: 14:40 (#0),
                                                                    res: Def(
                                                                        Struct,
                                                                        DefId(0:4 ~ qubit[53be]::Qubit),
                                                                    ),
                                                                    segments: [
                                                                        PathSegment {
                                                                            ident: Qubit#0,
                                                                            hir_id: Some(
                                                                                HirId {
                                                                                    owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                                                    local_id: 20,
                                                                                },
                                                                            ),
                                                                            res: Some(
                                                                                Err,
                                                                            ),
                                                                            args: None,
                                                                            infer_args: false,
                                                                        },
                                                                    ],
                                                                },
                                                            ),
                                                        ),
                                                        span: qubit.rs:14:35: 14:40 (#0),
                                                    },
                                                ),
                                                c_variadic: false,
                                                implicit_self: None,
                                            },
                                            span: qubit.rs:14:5: 14:40 (#0),
                                        },
                                        BodyId {
                                            hir_id: HirId {
                                                owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                local_id: 14,
                                            },
                                        },
                                    ),
                                    span: qubit.rs:14:5: 19:6 (#0),
                                    vis_span: qubit.rs:14:5: 14:5 (#0),
                                },
                            ),
                        },
                    ),
                    bodies: SortedMap {
                        data: [
                            (
                                14,
                                Body {
                                    params: [
                                        Param {
                                            hir_id: HirId {
                                                owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                local_id: 1,
                                            },
                                            pat: Pat {
                                                hir_id: HirId {
                                                    owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                    local_id: 2,
                                                },
                                                kind: Binding(
                                                    Unannotated,
                                                    HirId {
                                                        owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                        local_id: 2,
                                                    },
                                                    up#0,
                                                    None,
                                                ),
                                                span: qubit.rs:14:12: 14:14 (#0),
                                                default_binding_modes: true,
                                            },
                                            ty_span: qubit.rs:14:16: 14:19 (#0),
                                            span: qubit.rs:14:12: 14:19 (#0),
                                        },
                                        Param {
                                            hir_id: HirId {
                                                owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                local_id: 3,
                                            },
                                            pat: Pat {
                                                hir_id: HirId {
                                                    owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                    local_id: 4,
                                                },
                                                kind: Binding(
                                                    Unannotated,
                                                    HirId {
                                                        owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                        local_id: 4,
                                                    },
                                                    down#0,
                                                    None,
                                                ),
                                                span: qubit.rs:14:21: 14:25 (#0),
                                                default_binding_modes: true,
                                            },
                                            ty_span: qubit.rs:14:27: 14:30 (#0),
                                            span: qubit.rs:14:21: 14:30 (#0),
                                        },
                                    ],
                                    value: Expr {
                                        hir_id: HirId {
                                            owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                            local_id: 14,
                                        },
                                        kind: Block(
                                            Block {
                                                stmts: [],
                                                expr: Some(
                                                    Expr {
                                                        hir_id: HirId {
                                                            owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                            local_id: 12,
                                                        },
                                                        kind: Struct(
                                                            Resolved(
                                                                None,
                                                                Path {
                                                                    span: qubit.rs:15:9: 15:14 (#0),
                                                                    res: Def(
                                                                        Struct,
                                                                        DefId(0:4 ~ qubit[53be]::Qubit),
                                                                    ),
                                                                    segments: [
                                                                        PathSegment {
                                                                            ident: Qubit#0,
                                                                            hir_id: Some(
                                                                                HirId {
                                                                                    owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                                                    local_id: 5,
                                                                                },
                                                                            ),
                                                                            res: Some(
                                                                                Err,
                                                                            ),
                                                                            args: None,
                                                                            infer_args: true,
                                                                        },
                                                                    ],
                                                                },
                                                            ),
                                                            [
                                                                ExprField {
                                                                    hir_id: HirId {
                                                                        owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                                        local_id: 6,
                                                                    },
                                                                    ident: up#0,
                                                                    expr: Expr {
                                                                        hir_id: HirId {
                                                                            owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                                            local_id: 8,
                                                                        },
                                                                        kind: Path(
                                                                            Resolved(
                                                                                None,
                                                                                Path {
                                                                                    span: qubit.rs:16:19: 16:21 (#0),
                                                                                    res: Local(
                                                                                        HirId {
                                                                                            owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                                                            local_id: 2,
                                                                                        },
                                                                                    ),
                                                                                    segments: [
                                                                                        PathSegment {
                                                                                            ident: up#0,
                                                                                            hir_id: Some(
                                                                                                HirId {
                                                                                                    owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                                                                    local_id: 7,
                                                                                                },
                                                                                            ),
                                                                                            res: Some(
                                                                                                Local(
                                                                                                    HirId {
                                                                                                        owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                                                                        local_id: 2,
                                                                                                    },
                                                                                                ),
                                                                                            ),
                                                                                            args: None,
                                                                                            infer_args: true,
                                                                                        },
                                                                                    ],
                                                                                },
                                                                            ),
                                                                        ),
                                                                        span: qubit.rs:16:19: 16:21 (#0),
                                                                    },
                                                                    span: qubit.rs:16:15: 16:21 (#0),
                                                                    is_shorthand: false,
                                                                },
                                                                ExprField {
                                                                    hir_id: HirId {
                                                                        owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                                        local_id: 9,
                                                                    },
                                                                    ident: down#0,
                                                                    expr: Expr {
                                                                        hir_id: HirId {
                                                                            owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                                            local_id: 11,
                                                                        },
                                                                        kind: Path(
                                                                            Resolved(
                                                                                None,
                                                                                Path {
                                                                                    span: qubit.rs:17:19: 17:23 (#0),
                                                                                    res: Local(
                                                                                        HirId {
                                                                                            owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                                                            local_id: 4,
                                                                                        },
                                                                                    ),
                                                                                    segments: [
                                                                                        PathSegment {
                                                                                            ident: down#0,
                                                                                            hir_id: Some(
                                                                                                HirId {
                                                                                                    owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                                                                    local_id: 10,
                                                                                                },
                                                                                            ),
                                                                                            res: Some(
                                                                                                Local(
                                                                                                    HirId {
                                                                                                        owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                                                                        local_id: 4,
                                                                                                    },
                                                                                                ),
                                                                                            ),
                                                                                            args: None,
                                                                                            infer_args: true,
                                                                                        },
                                                                                    ],
                                                                                },
                                                                            ),
                                                                        ),
                                                                        span: qubit.rs:17:19: 17:23 (#0),
                                                                    },
                                                                    span: qubit.rs:17:13: 17:23 (#0),
                                                                    is_shorthand: false,
                                                                },
                                                            ],
                                                            None,
                                                        ),
                                                        span: qubit.rs:15:9: 18:10 (#0),
                                                    },
                                                ),
                                                hir_id: HirId {
                                                    owner: DefId(0:8 ~ qubit[53be]::{impl#0}::new),
                                                    local_id: 13,
                                                },
                                                rules: DefaultBlock,
                                                span: qubit.rs:14:41: 19:6 (#0),
                                                targeted_by_break: false,
                                            },
                                            None,
                                        ),
                                        span: qubit.rs:14:41: 19:6 (#0),
                                    },
                                    generator_kind: None,
                                },
                            ),
                        ],
                    },
                    local_id_to_def_id: SortedMap {
                        data: [],
                    },
                    hash_without_bodies: Fingerprint(
                        7982062410754243509,
                        5884533055368785881,
                    ),
                    hash_including_bodies: Fingerprint(
                        8204990293983116136,
                        4548485958655347796,
                    ),
                },
                parenting: {},
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
        Owner(
            OwnerInfo {
                nodes: OwnerNodes {
                    node: Some(
                        ParentedNode {
                            parent: 4294967040,
                            node: ImplItem(
                                ImplItem {
                                    ident: X#0,
                                    def_id: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                    generics: Generics {
                                        params: [],
                                        predicates: [],
                                        has_where_clause_predicates: false,
                                        where_clause_span: qubit.rs:21:20: 21:20 (#0),
                                        span: qubit.rs:21:9: 21:9 (#0),
                                    },
                                    kind: Fn(
                                        FnSig {
                                            header: FnHeader {
                                                unsafety: Normal,
                                                constness: NotConst,
                                                asyncness: NotAsync,
                                                abi: Rust,
                                            },
                                            decl: FnDecl {
                                                inputs: [
                                                    Ty {
                                                        hir_id: HirId {
                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                            local_id: 30,
                                                        },
                                                        kind: Rptr(
                                                            Lifetime {
                                                                hir_id: HirId {
                                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                    local_id: 28,
                                                                },
                                                                span: qubit.rs:21:10: 21:11 (#0),
                                                                name: Implicit,
                                                            },
                                                            MutTy {
                                                                ty: Ty {
                                                                    hir_id: HirId {
                                                                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                        local_id: 29,
                                                                    },
                                                                    kind: Path(
                                                                        Resolved(
                                                                            None,
                                                                            Path {
                                                                                span: qubit.rs:21:10: 21:19 (#0),
                                                                                res: SelfTy {
                                                                                    trait_: None,
                                                                                    alias_to: Some(
                                                                                        (
                                                                                            DefId(0:7 ~ qubit[53be]::{impl#0}),
                                                                                            false,
                                                                                        ),
                                                                                    ),
                                                                                },
                                                                                segments: [
                                                                                    PathSegment {
                                                                                        ident: Self#0,
                                                                                        hir_id: None,
                                                                                        res: None,
                                                                                        args: None,
                                                                                        infer_args: true,
                                                                                    },
                                                                                ],
                                                                            },
                                                                        ),
                                                                    ),
                                                                    span: qubit.rs:21:10: 21:19 (#0),
                                                                },
                                                                mutbl: Mut,
                                                            },
                                                        ),
                                                        span: qubit.rs:21:10: 21:19 (#0),
                                                    },
                                                ],
                                                output: DefaultReturn(
                                                    qubit.rs:21:20: 21:20 (#0),
                                                ),
                                                c_variadic: false,
                                                implicit_self: MutRef,
                                            },
                                            span: qubit.rs:21:5: 21:20 (#0),
                                        },
                                        BodyId {
                                            hir_id: HirId {
                                                owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                local_id: 27,
                                            },
                                        },
                                    ),
                                    span: qubit.rs:21:5: 25:6 (#0),
                                    vis_span: qubit.rs:21:5: 21:5 (#0),
                                },
                            ),
                        },
                    ),
                    bodies: SortedMap {
                        data: [
                            (
                                27,
                                Body {
                                    params: [
                                        Param {
                                            hir_id: HirId {
                                                owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                local_id: 1,
                                            },
                                            pat: Pat {
                                                hir_id: HirId {
                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                    local_id: 2,
                                                },
                                                kind: Binding(
                                                    Unannotated,
                                                    HirId {
                                                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                        local_id: 2,
                                                    },
                                                    self#0,
                                                    None,
                                                ),
                                                span: qubit.rs:21:10: 21:19 (#0),
                                                default_binding_modes: true,
                                            },
                                            ty_span: qubit.rs:21:10: 21:19 (#0),
                                            span: qubit.rs:21:10: 21:19 (#0),
                                        },
                                    ],
                                    value: Expr {
                                        hir_id: HirId {
                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                            local_id: 27,
                                        },
                                        kind: Block(
                                            Block {
                                                stmts: [
                                                    Stmt {
                                                        hir_id: HirId {
                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                            local_id: 3,
                                                        },
                                                        kind: Local(
                                                            Local {
                                                                pat: Pat {
                                                                    hir_id: HirId {
                                                                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                        local_id: 10,
                                                                    },
                                                                    kind: Binding(
                                                                        Unannotated,
                                                                        HirId {
                                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                            local_id: 10,
                                                                        },
                                                                        temp#0,
                                                                        None,
                                                                    ),
                                                                    span: qubit.rs:22:13: 22:17 (#0),
                                                                    default_binding_modes: true,
                                                                },
                                                                ty: Some(
                                                                    Ty {
                                                                        hir_id: HirId {
                                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                            local_id: 4,
                                                                        },
                                                                        kind: Path(
                                                                            Resolved(
                                                                                None,
                                                                                Path {
                                                                                    span: qubit.rs:22:19: 22:22 (#0),
                                                                                    res: PrimTy(
                                                                                        Int(
                                                                                            I64,
                                                                                        ),
                                                                                    ),
                                                                                    segments: [
                                                                                        PathSegment {
                                                                                            ident: i64#0,
                                                                                            hir_id: Some(
                                                                                                HirId {
                                                                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                                    local_id: 5,
                                                                                                },
                                                                                            ),
                                                                                            res: Some(
                                                                                                Err,
                                                                                            ),
                                                                                            args: None,
                                                                                            infer_args: false,
                                                                                        },
                                                                                    ],
                                                                                },
                                                                            ),
                                                                        ),
                                                                        span: qubit.rs:22:19: 22:22 (#0),
                                                                    },
                                                                ),
                                                                init: Some(
                                                                    Expr {
                                                                        hir_id: HirId {
                                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                            local_id: 8,
                                                                        },
                                                                        kind: Field(
                                                                            Expr {
                                                                                hir_id: HirId {
                                                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                    local_id: 7,
                                                                                },
                                                                                kind: Path(
                                                                                    Resolved(
                                                                                        None,
                                                                                        Path {
                                                                                            span: qubit.rs:22:25: 22:29 (#0),
                                                                                            res: Local(
                                                                                                HirId {
                                                                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                                    local_id: 2,
                                                                                                },
                                                                                            ),
                                                                                            segments: [
                                                                                                PathSegment {
                                                                                                    ident: self#0,
                                                                                                    hir_id: Some(
                                                                                                        HirId {
                                                                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                                            local_id: 6,
                                                                                                        },
                                                                                                    ),
                                                                                                    res: Some(
                                                                                                        Local(
                                                                                                            HirId {
                                                                                                                owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                                                local_id: 2,
                                                                                                            },
                                                                                                        ),
                                                                                                    ),
                                                                                                    args: None,
                                                                                                    infer_args: true,
                                                                                                },
                                                                                            ],
                                                                                        },
                                                                                    ),
                                                                                ),
                                                                                span: qubit.rs:22:25: 22:29 (#0),
                                                                            },
                                                                            up#0,
                                                                        ),
                                                                        span: qubit.rs:22:25: 22:32 (#0),
                                                                    },
                                                                ),
                                                                hir_id: HirId {
                                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                    local_id: 9,
                                                                },
                                                                span: qubit.rs:22:9: 22:33 (#0),
                                                                source: Normal,
                                                            },
                                                        ),
                                                        span: qubit.rs:22:9: 22:33 (#0),
                                                    },
                                                    Stmt {
                                                        hir_id: HirId {
                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                            local_id: 18,
                                                        },
                                                        kind: Semi(
                                                            Expr {
                                                                hir_id: HirId {
                                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                    local_id: 17,
                                                                },
                                                                kind: Assign(
                                                                    Expr {
                                                                        hir_id: HirId {
                                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                            local_id: 13,
                                                                        },
                                                                        kind: Field(
                                                                            Expr {
                                                                                hir_id: HirId {
                                                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                    local_id: 12,
                                                                                },
                                                                                kind: Path(
                                                                                    Resolved(
                                                                                        None,
                                                                                        Path {
                                                                                            span: qubit.rs:23:9: 23:13 (#0),
                                                                                            res: Local(
                                                                                                HirId {
                                                                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                                    local_id: 2,
                                                                                                },
                                                                                            ),
                                                                                            segments: [
                                                                                                PathSegment {
                                                                                                    ident: self#0,
                                                                                                    hir_id: Some(
                                                                                                        HirId {
                                                                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                                            local_id: 11,
                                                                                                        },
                                                                                                    ),
                                                                                                    res: Some(
                                                                                                        Local(
                                                                                                            HirId {
                                                                                                                owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                                                local_id: 2,
                                                                                                            },
                                                                                                        ),
                                                                                                    ),
                                                                                                    args: None,
                                                                                                    infer_args: true,
                                                                                                },
                                                                                            ],
                                                                                        },
                                                                                    ),
                                                                                ),
                                                                                span: qubit.rs:23:9: 23:13 (#0),
                                                                            },
                                                                            up#0,
                                                                        ),
                                                                        span: qubit.rs:23:9: 23:16 (#0),
                                                                    },
                                                                    Expr {
                                                                        hir_id: HirId {
                                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                            local_id: 16,
                                                                        },
                                                                        kind: Field(
                                                                            Expr {
                                                                                hir_id: HirId {
                                                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                    local_id: 15,
                                                                                },
                                                                                kind: Path(
                                                                                    Resolved(
                                                                                        None,
                                                                                        Path {
                                                                                            span: qubit.rs:23:19: 23:23 (#0),
                                                                                            res: Local(
                                                                                                HirId {
                                                                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                                    local_id: 2,
                                                                                                },
                                                                                            ),
                                                                                            segments: [
                                                                                                PathSegment {
                                                                                                    ident: self#0,
                                                                                                    hir_id: Some(
                                                                                                        HirId {
                                                                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                                            local_id: 14,
                                                                                                        },
                                                                                                    ),
                                                                                                    res: Some(
                                                                                                        Local(
                                                                                                            HirId {
                                                                                                                owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                                                local_id: 2,
                                                                                                            },
                                                                                                        ),
                                                                                                    ),
                                                                                                    args: None,
                                                                                                    infer_args: true,
                                                                                                },
                                                                                            ],
                                                                                        },
                                                                                    ),
                                                                                ),
                                                                                span: qubit.rs:23:19: 23:23 (#0),
                                                                            },
                                                                            down#0,
                                                                        ),
                                                                        span: qubit.rs:23:19: 23:28 (#0),
                                                                    },
                                                                    qubit.rs:23:17: 23:18 (#0),
                                                                ),
                                                                span: qubit.rs:23:9: 23:28 (#0),
                                                            },
                                                        ),
                                                        span: qubit.rs:23:9: 23:29 (#0),
                                                    },
                                                    Stmt {
                                                        hir_id: HirId {
                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                            local_id: 25,
                                                        },
                                                        kind: Semi(
                                                            Expr {
                                                                hir_id: HirId {
                                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                    local_id: 24,
                                                                },
                                                                kind: Assign(
                                                                    Expr {
                                                                        hir_id: HirId {
                                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                            local_id: 21,
                                                                        },
                                                                        kind: Field(
                                                                            Expr {
                                                                                hir_id: HirId {
                                                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                    local_id: 20,
                                                                                },
                                                                                kind: Path(
                                                                                    Resolved(
                                                                                        None,
                                                                                        Path {
                                                                                            span: qubit.rs:24:9: 24:13 (#0),
                                                                                            res: Local(
                                                                                                HirId {
                                                                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                                    local_id: 2,
                                                                                                },
                                                                                            ),
                                                                                            segments: [
                                                                                                PathSegment {
                                                                                                    ident: self#0,
                                                                                                    hir_id: Some(
                                                                                                        HirId {
                                                                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                                            local_id: 19,
                                                                                                        },
                                                                                                    ),
                                                                                                    res: Some(
                                                                                                        Local(
                                                                                                            HirId {
                                                                                                                owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                                                local_id: 2,
                                                                                                            },
                                                                                                        ),
                                                                                                    ),
                                                                                                    args: None,
                                                                                                    infer_args: true,
                                                                                                },
                                                                                            ],
                                                                                        },
                                                                                    ),
                                                                                ),
                                                                                span: qubit.rs:24:9: 24:13 (#0),
                                                                            },
                                                                            down#0,
                                                                        ),
                                                                        span: qubit.rs:24:9: 24:18 (#0),
                                                                    },
                                                                    Expr {
                                                                        hir_id: HirId {
                                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                            local_id: 23,
                                                                        },
                                                                        kind: Path(
                                                                            Resolved(
                                                                                None,
                                                                                Path {
                                                                                    span: qubit.rs:24:21: 24:25 (#0),
                                                                                    res: Local(
                                                                                        HirId {
                                                                                            owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                            local_id: 10,
                                                                                        },
                                                                                    ),
                                                                                    segments: [
                                                                                        PathSegment {
                                                                                            ident: temp#0,
                                                                                            hir_id: Some(
                                                                                                HirId {
                                                                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                                    local_id: 22,
                                                                                                },
                                                                                            ),
                                                                                            res: Some(
                                                                                                Local(
                                                                                                    HirId {
                                                                                                        owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                                                                        local_id: 10,
                                                                                                    },
                                                                                                ),
                                                                                            ),
                                                                                            args: None,
                                                                                            infer_args: true,
                                                                                        },
                                                                                    ],
                                                                                },
                                                                            ),
                                                                        ),
                                                                        span: qubit.rs:24:21: 24:25 (#0),
                                                                    },
                                                                    qubit.rs:24:19: 24:20 (#0),
                                                                ),
                                                                span: qubit.rs:24:9: 24:25 (#0),
                                                            },
                                                        ),
                                                        span: qubit.rs:24:9: 24:26 (#0),
                                                    },
                                                ],
                                                expr: None,
                                                hir_id: HirId {
                                                    owner: DefId(0:9 ~ qubit[53be]::{impl#0}::X),
                                                    local_id: 26,
                                                },
                                                rules: DefaultBlock,
                                                span: qubit.rs:21:20: 25:6 (#0),
                                                targeted_by_break: false,
                                            },
                                            None,
                                        ),
                                        span: qubit.rs:21:20: 25:6 (#0),
                                    },
                                    generator_kind: None,
                                },
                            ),
                        ],
                    },
                    local_id_to_def_id: SortedMap {
                        data: [],
                    },
                    hash_without_bodies: Fingerprint(
                        15027013999870564150,
                        250618476172438214,
                    ),
                    hash_including_bodies: Fingerprint(
                        4510816971911868875,
                        14519665980469104811,
                    ),
                },
                parenting: {},
                attrs: AttributeMap {
                    map: SortedMap {
                        data: [],
                    },
                    hash: Fingerprint(
                        9785122672296426403,
                        8173264106939382879,
                    ),
                },
                trait_map: {
                    8: [],
                    13: [],
                    16: [],
                    21: [],
                },
            },
        ),
    ],
    hir_hash: Fingerprint(
        86733569784813740,
        16074469440839269697,
    ),
}
