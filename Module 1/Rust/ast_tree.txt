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
        Owner(
            OwnerInfo {
                nodes: OwnerNodes {
                    node: Some(
                        ParentedNode {
                            parent: 4294967040,
                            node: Item(
                                Item {
                                    ident: #0,
                                    def_id: DefId(0:1 ~ f[67f6]::{use#0}),
                                    kind: Use(
                                        Path {
                                            span: no-location (#1),
                                            res: Err,
                                            segments: [
                                                PathSegment {
                                                    ident: {{root}}#1,
                                                    hir_id: Some(
                                                        HirId {
                                                            owner: DefId(0:1 ~ f[67f6]::{use#0}),
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
                                                            owner: DefId(0:1 ~ f[67f6]::{use#0}),
                                                            local_id: 2,
                                                        },
                                                    ),
                                                    res: Some(
                                                        Def(
                                                            Mod,
                                                            DefId(1:0 ~ std[e6cb]),
                                                        ),
                                                    ),
                                                    args: None,
                                                    infer_args: false,
                                                },
                                                PathSegment {
                                                    ident: prelude#1,
                                                    hir_id: Some(
                                                        HirId {
                                                            owner: DefId(0:1 ~ f[67f6]::{use#0}),
                                                            local_id: 3,
                                                        },
                                                    ),
                                                    res: Some(
                                                        Def(
                                                            Mod,
                                                            DefId(1:69 ~ std[e6cb]::prelude),
                                                        ),
                                                    ),
                                                    args: None,
                                                    infer_args: false,
                                                },
                                                PathSegment {
                                                    ident: rust_2015#1,
                                                    hir_id: Some(
                                                        HirId {
                                                            owner: DefId(0:1 ~ f[67f6]::{use#0}),
                                                            local_id: 4,
                                                        },
                                                    ),
                                                    res: Some(
                                                        Def(
                                                            Mod,
                                                            DefId(1:283 ~ std[e6cb]::prelude::rust_2015),
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
                        9270103568430827198,
                        18031258114526930359,
                    ),
                    hash_including_bodies: Fingerprint(
                        9270103568430827198,
                        18031258114526930359,
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
                        52483635354336677,
                        2631291094741331970,
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
                                    def_id: DefId(0:2 ~ f[67f6]::std),
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
                        17142112341724922334,
                        1535139762343168047,
                    ),
                    hash_including_bodies: Fingerprint(
                        17142112341724922334,
                        1535139762343168047,
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
                        11652684933067280516,
                        11793467371433883284,
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
                                    def_id: DefId(0:3 ~ f[67f6]::main),
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
                                                    f.rs:1:11: 1:11 (#0),
                                                ),
                                                c_variadic: false,
                                                implicit_self: None,
                                            },
                                            span: f.rs:1:1: 1:10 (#0),
                                        },
                                        Generics {
                                            params: [],
                                            predicates: [],
                                            has_where_clause: false,
                                            where_clause_span: f.rs:1:10: 1:10 (#0),
                                            span: f.rs:1:8: 1:8 (#0),
                                        },
                                        BodyId {
                                            hir_id: HirId {
                                                owner: DefId(0:3 ~ f[67f6]::main),
                                                local_id: 2,
                                            },
                                        },
                                    ),
                                    span: f.rs:1:1: 3:2 (#0),
                                    vis_span: no-location (#0),
                                },
                            ),
                        },
                    ),
                    bodies: SortedMap {
                        data: [
                            (
                                2,
                                Body {
                                    params: [],
                                    value: Expr {
                                        hir_id: HirId {
                                            owner: DefId(0:3 ~ f[67f6]::main),
                                            local_id: 2,
                                        },
                                        kind: Block(
                                            Block {
                                                stmts: [],
                                                expr: None,
                                                hir_id: HirId {
                                                    owner: DefId(0:3 ~ f[67f6]::main),
                                                    local_id: 1,
                                                },
                                                rules: DefaultBlock,
                                                span: f.rs:1:11: 3:2 (#0),
                                                targeted_by_break: false,
                                            },
                                            None,
                                        ),
                                        span: f.rs:1:11: 3:2 (#0),
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
                        9970693872615460436,
                        7153077246147144256,
                    ),
                    hash_including_bodies: Fingerprint(
                        12262900074336564250,
                        15161844260126831268,
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
                            node: Item(
                                Item {
                                    ident: f#0,
                                    def_id: DefId(0:4 ~ f[67f6]::f),
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
                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                            local_id: 37,
                                                        },
                                                        kind: Path(
                                                            Resolved(
                                                                None,
                                                                Path {
                                                                    span: f.rs:5:9: 5:11 (#0),
                                                                    res: PrimTy(
                                                                        Int(
                                                                            I8,
                                                                        ),
                                                                    ),
                                                                    segments: [
                                                                        PathSegment {
                                                                            ident: i8#0,
                                                                            hir_id: Some(
                                                                                HirId {
                                                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                                                    local_id: 38,
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
                                                        span: f.rs:5:9: 5:11 (#0),
                                                    },
                                                    Ty {
                                                        hir_id: HirId {
                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                            local_id: 39,
                                                        },
                                                        kind: Path(
                                                            Resolved(
                                                                None,
                                                                Path {
                                                                    span: f.rs:5:16: 5:18 (#0),
                                                                    res: PrimTy(
                                                                        Int(
                                                                            I8,
                                                                        ),
                                                                    ),
                                                                    segments: [
                                                                        PathSegment {
                                                                            ident: i8#0,
                                                                            hir_id: Some(
                                                                                HirId {
                                                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                                                    local_id: 40,
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
                                                        span: f.rs:5:16: 5:18 (#0),
                                                    },
                                                ],
                                                output: Return(
                                                    Ty {
                                                        hir_id: HirId {
                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                            local_id: 41,
                                                        },
                                                        kind: Path(
                                                            Resolved(
                                                                None,
                                                                Path {
                                                                    span: f.rs:5:23: 5:25 (#0),
                                                                    res: PrimTy(
                                                                        Int(
                                                                            I8,
                                                                        ),
                                                                    ),
                                                                    segments: [
                                                                        PathSegment {
                                                                            ident: i8#0,
                                                                            hir_id: Some(
                                                                                HirId {
                                                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                                                    local_id: 42,
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
                                                        span: f.rs:5:23: 5:25 (#0),
                                                    },
                                                ),
                                                c_variadic: false,
                                                implicit_self: None,
                                            },
                                            span: f.rs:5:1: 5:25 (#0),
                                        },
                                        Generics {
                                            params: [],
                                            predicates: [],
                                            has_where_clause: false,
                                            where_clause_span: f.rs:5:25: 5:25 (#0),
                                            span: f.rs:5:5: 5:5 (#0),
                                        },
                                        BodyId {
                                            hir_id: HirId {
                                                owner: DefId(0:4 ~ f[67f6]::f),
                                                local_id: 36,
                                            },
                                        },
                                    ),
                                    span: f.rs:5:1: 14:2 (#0),
                                    vis_span: f.rs:5:1: 5:1 (#0),
                                },
                            ),
                        },
                    ),
                    bodies: SortedMap {
                        data: [
                            (
                                36,
                                Body {
                                    params: [
                                        Param {
                                            hir_id: HirId {
                                                owner: DefId(0:4 ~ f[67f6]::f),
                                                local_id: 1,
                                            },
                                            pat: Pat {
                                                hir_id: HirId {
                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                    local_id: 2,
                                                },
                                                kind: Binding(
                                                    Unannotated,
                                                    HirId {
                                                        owner: DefId(0:4 ~ f[67f6]::f),
                                                        local_id: 2,
                                                    },
                                                    a#0,
                                                    None,
                                                ),
                                                span: f.rs:5:6: 5:7 (#0),
                                                default_binding_modes: true,
                                            },
                                            ty_span: f.rs:5:9: 5:11 (#0),
                                            span: f.rs:5:6: 5:11 (#0),
                                        },
                                        Param {
                                            hir_id: HirId {
                                                owner: DefId(0:4 ~ f[67f6]::f),
                                                local_id: 3,
                                            },
                                            pat: Pat {
                                                hir_id: HirId {
                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                    local_id: 4,
                                                },
                                                kind: Binding(
                                                    Unannotated,
                                                    HirId {
                                                        owner: DefId(0:4 ~ f[67f6]::f),
                                                        local_id: 4,
                                                    },
                                                    b#0,
                                                    None,
                                                ),
                                                span: f.rs:5:13: 5:14 (#0),
                                                default_binding_modes: true,
                                            },
                                            ty_span: f.rs:5:16: 5:18 (#0),
                                            span: f.rs:5:13: 5:18 (#0),
                                        },
                                    ],
                                    value: Expr {
                                        hir_id: HirId {
                                            owner: DefId(0:4 ~ f[67f6]::f),
                                            local_id: 36,
                                        },
                                        kind: Block(
                                            Block {
                                                stmts: [
                                                    Stmt {
                                                        hir_id: HirId {
                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                            local_id: 5,
                                                        },
                                                        kind: Local(
                                                            Local {
                                                                pat: Pat {
                                                                    hir_id: HirId {
                                                                        owner: DefId(0:4 ~ f[67f6]::f),
                                                                        local_id: 9,
                                                                    },
                                                                    kind: Binding(
                                                                        Mutable,
                                                                        HirId {
                                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                                            local_id: 9,
                                                                        },
                                                                        x#0,
                                                                        None,
                                                                    ),
                                                                    span: f.rs:7:9: 7:14 (#0),
                                                                    default_binding_modes: true,
                                                                },
                                                                ty: None,
                                                                init: Some(
                                                                    Expr {
                                                                        hir_id: HirId {
                                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                                            local_id: 7,
                                                                        },
                                                                        kind: Path(
                                                                            Resolved(
                                                                                None,
                                                                                Path {
                                                                                    span: f.rs:7:17: 7:18 (#0),
                                                                                    res: Local(
                                                                                        HirId {
                                                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                                                            local_id: 2,
                                                                                        },
                                                                                    ),
                                                                                    segments: [
                                                                                        PathSegment {
                                                                                            ident: a#0,
                                                                                            hir_id: Some(
                                                                                                HirId {
                                                                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                    local_id: 6,
                                                                                                },
                                                                                            ),
                                                                                            res: Some(
                                                                                                Local(
                                                                                                    HirId {
                                                                                                        owner: DefId(0:4 ~ f[67f6]::f),
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
                                                                        span: f.rs:7:17: 7:18 (#0),
                                                                    },
                                                                ),
                                                                hir_id: HirId {
                                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                                    local_id: 8,
                                                                },
                                                                span: f.rs:7:5: 7:19 (#0),
                                                                source: Normal,
                                                            },
                                                        ),
                                                        span: f.rs:7:5: 7:19 (#0),
                                                    },
                                                    Stmt {
                                                        hir_id: HirId {
                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                            local_id: 30,
                                                        },
                                                        kind: Expr(
                                                            Expr {
                                                                hir_id: HirId {
                                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                                    local_id: 29,
                                                                },
                                                                kind: If(
                                                                    Expr {
                                                                        hir_id: HirId {
                                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                                            local_id: 15,
                                                                        },
                                                                        kind: DropTemps(
                                                                            Expr {
                                                                                hir_id: HirId {
                                                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                                                    local_id: 14,
                                                                                },
                                                                                kind: Binary(
                                                                                    Spanned {
                                                                                        node: Gt,
                                                                                        span: f.rs:8:10: 8:11 (#0),
                                                                                    },
                                                                                    Expr {
                                                                                        hir_id: HirId {
                                                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                                                            local_id: 11,
                                                                                        },
                                                                                        kind: Path(
                                                                                            Resolved(
                                                                                                None,
                                                                                                Path {
                                                                                                    span: f.rs:8:8: 8:9 (#0),
                                                                                                    res: Local(
                                                                                                        HirId {
                                                                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                            local_id: 2,
                                                                                                        },
                                                                                                    ),
                                                                                                    segments: [
                                                                                                        PathSegment {
                                                                                                            ident: a#0,
                                                                                                            hir_id: Some(
                                                                                                                HirId {
                                                                                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                                    local_id: 10,
                                                                                                                },
                                                                                                            ),
                                                                                                            res: Some(
                                                                                                                Local(
                                                                                                                    HirId {
                                                                                                                        owner: DefId(0:4 ~ f[67f6]::f),
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
                                                                                        span: f.rs:8:8: 8:9 (#0),
                                                                                    },
                                                                                    Expr {
                                                                                        hir_id: HirId {
                                                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                                                            local_id: 13,
                                                                                        },
                                                                                        kind: Path(
                                                                                            Resolved(
                                                                                                None,
                                                                                                Path {
                                                                                                    span: f.rs:8:12: 8:13 (#0),
                                                                                                    res: Local(
                                                                                                        HirId {
                                                                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                            local_id: 4,
                                                                                                        },
                                                                                                    ),
                                                                                                    segments: [
                                                                                                        PathSegment {
                                                                                                            ident: b#0,
                                                                                                            hir_id: Some(
                                                                                                                HirId {
                                                                                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                                    local_id: 12,
                                                                                                                },
                                                                                                            ),
                                                                                                            res: Some(
                                                                                                                Local(
                                                                                                                    HirId {
                                                                                                                        owner: DefId(0:4 ~ f[67f6]::f),
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
                                                                                        span: f.rs:8:12: 8:13 (#0),
                                                                                    },
                                                                                ),
                                                                                span: f.rs:8:8: 8:13 (#0),
                                                                            },
                                                                        ),
                                                                        span: f.rs:8:8: 8:13 (#4),
                                                                    },
                                                                    Expr {
                                                                        hir_id: HirId {
                                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                                            local_id: 21,
                                                                        },
                                                                        kind: Block(
                                                                            Block {
                                                                                stmts: [],
                                                                                expr: Some(
                                                                                    Expr {
                                                                                        hir_id: HirId {
                                                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                                                            local_id: 19,
                                                                                        },
                                                                                        kind: AssignOp(
                                                                                            Spanned {
                                                                                                node: Add,
                                                                                                span: f.rs:9:11: 9:13 (#0),
                                                                                            },
                                                                                            Expr {
                                                                                                hir_id: HirId {
                                                                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                    local_id: 17,
                                                                                                },
                                                                                                kind: Path(
                                                                                                    Resolved(
                                                                                                        None,
                                                                                                        Path {
                                                                                                            span: f.rs:9:9: 9:10 (#0),
                                                                                                            res: Local(
                                                                                                                HirId {
                                                                                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                                    local_id: 9,
                                                                                                                },
                                                                                                            ),
                                                                                                            segments: [
                                                                                                                PathSegment {
                                                                                                                    ident: x#0,
                                                                                                                    hir_id: Some(
                                                                                                                        HirId {
                                                                                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                                            local_id: 16,
                                                                                                                        },
                                                                                                                    ),
                                                                                                                    res: Some(
                                                                                                                        Local(
                                                                                                                            HirId {
                                                                                                                                owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                                                local_id: 9,
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
                                                                                                span: f.rs:9:9: 9:10 (#0),
                                                                                            },
                                                                                            Expr {
                                                                                                hir_id: HirId {
                                                                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                    local_id: 18,
                                                                                                },
                                                                                                kind: Lit(
                                                                                                    Spanned {
                                                                                                        node: Int(
                                                                                                            20,
                                                                                                            Unsuffixed,
                                                                                                        ),
                                                                                                        span: f.rs:9:14: 9:16 (#0),
                                                                                                    },
                                                                                                ),
                                                                                                span: f.rs:9:14: 9:16 (#0),
                                                                                            },
                                                                                        ),
                                                                                        span: f.rs:9:9: 9:16 (#0),
                                                                                    },
                                                                                ),
                                                                                hir_id: HirId {
                                                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                                                    local_id: 20,
                                                                                },
                                                                                rules: DefaultBlock,
                                                                                span: f.rs:8:14: 10:6 (#0),
                                                                                targeted_by_break: false,
                                                                            },
                                                                            None,
                                                                        ),
                                                                        span: f.rs:8:14: 10:6 (#0),
                                                                    },
                                                                    Some(
                                                                        Expr {
                                                                            hir_id: HirId {
                                                                                owner: DefId(0:4 ~ f[67f6]::f),
                                                                                local_id: 28,
                                                                            },
                                                                            kind: Block(
                                                                                Block {
                                                                                    stmts: [],
                                                                                    expr: Some(
                                                                                        Expr {
                                                                                            hir_id: HirId {
                                                                                                owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                local_id: 26,
                                                                                            },
                                                                                            kind: AssignOp(
                                                                                                Spanned {
                                                                                                    node: Add,
                                                                                                    span: f.rs:11:11: 11:13 (#0),
                                                                                                },
                                                                                                Expr {
                                                                                                    hir_id: HirId {
                                                                                                        owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                        local_id: 23,
                                                                                                    },
                                                                                                    kind: Path(
                                                                                                        Resolved(
                                                                                                            None,
                                                                                                            Path {
                                                                                                                span: f.rs:11:9: 11:10 (#0),
                                                                                                                res: Local(
                                                                                                                    HirId {
                                                                                                                        owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                                        local_id: 9,
                                                                                                                    },
                                                                                                                ),
                                                                                                                segments: [
                                                                                                                    PathSegment {
                                                                                                                        ident: x#0,
                                                                                                                        hir_id: Some(
                                                                                                                            HirId {
                                                                                                                                owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                                                local_id: 22,
                                                                                                                            },
                                                                                                                        ),
                                                                                                                        res: Some(
                                                                                                                            Local(
                                                                                                                                HirId {
                                                                                                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                                                    local_id: 9,
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
                                                                                                    span: f.rs:11:9: 11:10 (#0),
                                                                                                },
                                                                                                Expr {
                                                                                                    hir_id: HirId {
                                                                                                        owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                        local_id: 25,
                                                                                                    },
                                                                                                    kind: Path(
                                                                                                        Resolved(
                                                                                                            None,
                                                                                                            Path {
                                                                                                                span: f.rs:11:14: 11:15 (#0),
                                                                                                                res: Local(
                                                                                                                    HirId {
                                                                                                                        owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                                        local_id: 4,
                                                                                                                    },
                                                                                                                ),
                                                                                                                segments: [
                                                                                                                    PathSegment {
                                                                                                                        ident: b#0,
                                                                                                                        hir_id: Some(
                                                                                                                            HirId {
                                                                                                                                owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                                                local_id: 24,
                                                                                                                            },
                                                                                                                        ),
                                                                                                                        res: Some(
                                                                                                                            Local(
                                                                                                                                HirId {
                                                                                                                                    owner: DefId(0:4 ~ f[67f6]::f),
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
                                                                                                    span: f.rs:11:14: 11:15 (#0),
                                                                                                },
                                                                                            ),
                                                                                            span: f.rs:11:9: 11:15 (#0),
                                                                                        },
                                                                                    ),
                                                                                    hir_id: HirId {
                                                                                        owner: DefId(0:4 ~ f[67f6]::f),
                                                                                        local_id: 27,
                                                                                    },
                                                                                    rules: DefaultBlock,
                                                                                    span: f.rs:10:12: 12:6 (#0),
                                                                                    targeted_by_break: false,
                                                                                },
                                                                                None,
                                                                            ),
                                                                            span: f.rs:10:12: 12:6 (#0),
                                                                        },
                                                                    ),
                                                                ),
                                                                span: f.rs:8:5: 12:6 (#0),
                                                            },
                                                        ),
                                                        span: f.rs:8:5: 12:6 (#0),
                                                    },
                                                    Stmt {
                                                        hir_id: HirId {
                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                            local_id: 34,
                                                        },
                                                        kind: Semi(
                                                            Expr {
                                                                hir_id: HirId {
                                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                                    local_id: 33,
                                                                },
                                                                kind: Ret(
                                                                    Some(
                                                                        Expr {
                                                                            hir_id: HirId {
                                                                                owner: DefId(0:4 ~ f[67f6]::f),
                                                                                local_id: 32,
                                                                            },
                                                                            kind: Path(
                                                                                Resolved(
                                                                                    None,
                                                                                    Path {
                                                                                        span: f.rs:13:12: 13:13 (#0),
                                                                                        res: Local(
                                                                                            HirId {
                                                                                                owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                local_id: 9,
                                                                                            },
                                                                                        ),
                                                                                        segments: [
                                                                                            PathSegment {
                                                                                                ident: x#0,
                                                                                                hir_id: Some(
                                                                                                    HirId {
                                                                                                        owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                        local_id: 31,
                                                                                                    },
                                                                                                ),
                                                                                                res: Some(
                                                                                                    Local(
                                                                                                        HirId {
                                                                                                            owner: DefId(0:4 ~ f[67f6]::f),
                                                                                                            local_id: 9,
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
                                                                            span: f.rs:13:12: 13:13 (#0),
                                                                        },
                                                                    ),
                                                                ),
                                                                span: f.rs:13:5: 13:13 (#0),
                                                            },
                                                        ),
                                                        span: f.rs:13:5: 13:14 (#0),
                                                    },
                                                ],
                                                expr: None,
                                                hir_id: HirId {
                                                    owner: DefId(0:4 ~ f[67f6]::f),
                                                    local_id: 35,
                                                },
                                                rules: DefaultBlock,
                                                span: f.rs:5:26: 14:2 (#0),
                                                targeted_by_break: false,
                                            },
                                            None,
                                        ),
                                        span: f.rs:5:26: 14:2 (#0),
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
                        18401373915695472477,
                        8273284833058606729,
                    ),
                    hash_including_bodies: Fingerprint(
                        1383868660416704485,
                        12528187684536851841,
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
    ],
    hir_hash: Fingerprint(
        8934828471764275999,
        8303285160027785483,
    ),
}%       
