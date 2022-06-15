digraph __crate__ {
subgraph cluster_Mir_0_3 {
    graph [fontname="Courier, monospace"];
    node [fontname="Courier, monospace"];
    edge [fontname="Courier, monospace"];
    label=<fn main() -&gt; ()<br align="left"/>let mut _1: Qubit;<br align="left"/>let _2: ();<br align="left"/>let mut _3: &amp;mut Qubit;<br align="left"/>let _4: ();<br align="left"/>let mut _5: std::fmt::Arguments;<br align="left"/>let mut _6: &amp;[&amp;str];<br align="left"/>let mut _7: &amp;[&amp;str; 2];<br align="left"/>let _8: &amp;[&amp;str; 2];<br align="left"/>let mut _9: &amp;[std::fmt::ArgumentV1];<br align="left"/>let mut _10: &amp;[std::fmt::ArgumentV1; 1];<br align="left"/>let _11: &amp;[std::fmt::ArgumentV1; 1];<br align="left"/>let _12: [std::fmt::ArgumentV1; 1];<br align="left"/>let mut _13: std::fmt::ArgumentV1;<br align="left"/>let mut _14: &amp;i64;<br align="left"/>let _15: &amp;i64;<br align="left"/>let _16: ();<br align="left"/>let mut _17: std::fmt::Arguments;<br align="left"/>let mut _18: &amp;[&amp;str];<br align="left"/>let mut _19: &amp;[&amp;str; 2];<br align="left"/>let _20: &amp;[&amp;str; 2];<br align="left"/>let mut _21: &amp;[std::fmt::ArgumentV1];<br align="left"/>let mut _22: &amp;[std::fmt::ArgumentV1; 1];<br align="left"/>let _23: &amp;[std::fmt::ArgumentV1; 1];<br align="left"/>let _24: [std::fmt::ArgumentV1; 1];<br align="left"/>let mut _25: std::fmt::ArgumentV1;<br align="left"/>let mut _26: &amp;i64;<br align="left"/>let _27: &amp;i64;<br align="left"/>let mut _28: &amp;[&amp;str; 2];<br align="left"/>let mut _29: &amp;[&amp;str; 2];<br align="left"/>debug _q1 =&gt; _1;<br align="left"/>>;
    bb0__0_3 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">0</td></tr><tr><td align="left">_1 = Qubit::new(const 1_i64, const 0_i64)</td></tr></table>>];
    bb1__0_3 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">1</td></tr><tr><td align="left" balign="left">_3 = &amp;mut _1<br/></td></tr><tr><td align="left">_2 = Qubit::X(move _3)</td></tr></table>>];
    bb2__0_3 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">2</td></tr><tr><td align="left" balign="left">_29 = const main::promoted[1]<br/>_8 = _29<br/>_7 = _8<br/>_6 = move _7 as &amp;[&amp;str] (Pointer(Unsize))<br/>_15 = &amp;(_1.0: i64)<br/>_14 = _15<br/></td></tr><tr><td align="left">_13 = ArgumentV1::new_display::&lt;i64&gt;(move _14)</td></tr></table>>];
    bb3__0_3 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">3</td></tr><tr><td align="left" balign="left">_12 = [move _13]<br/>_11 = &amp;_12<br/>_10 = _11<br/>_9 = move _10 as &amp;[std::fmt::ArgumentV1] (Pointer(Unsize))<br/></td></tr><tr><td align="left">_5 = Arguments::new_v1(move _6, move _9)</td></tr></table>>];
    bb4__0_3 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">4</td></tr><tr><td align="left">_4 = _print(move _5)</td></tr></table>>];
    bb5__0_3 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">5</td></tr><tr><td align="left" balign="left">_28 = const main::promoted[0]<br/>_20 = _28<br/>_19 = _20<br/>_18 = move _19 as &amp;[&amp;str] (Pointer(Unsize))<br/>_27 = &amp;(_1.1: i64)<br/>_26 = _27<br/></td></tr><tr><td align="left">_25 = ArgumentV1::new_display::&lt;i64&gt;(move _26)</td></tr></table>>];
    bb6__0_3 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">6</td></tr><tr><td align="left" balign="left">_24 = [move _25]<br/>_23 = &amp;_24<br/>_22 = _23<br/>_21 = move _22 as &amp;[std::fmt::ArgumentV1] (Pointer(Unsize))<br/></td></tr><tr><td align="left">_17 = Arguments::new_v1(move _18, move _21)</td></tr></table>>];
    bb7__0_3 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">7</td></tr><tr><td align="left">_16 = _print(move _17)</td></tr></table>>];
    bb8__0_3 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">8</td></tr><tr><td align="left">return</td></tr></table>>];
    bb0__0_3 -> bb1__0_3 [label="return"];
    bb1__0_3 -> bb2__0_3 [label="return"];
    bb2__0_3 -> bb3__0_3 [label="return"];
    bb3__0_3 -> bb4__0_3 [label="return"];
    bb4__0_3 -> bb5__0_3 [label="return"];
    bb5__0_3 -> bb6__0_3 [label="return"];
    bb6__0_3 -> bb7__0_3 [label="return"];
    bb7__0_3 -> bb8__0_3 [label="return"];
}
subgraph cluster_Mir_0_8 {
    graph [fontname="Courier, monospace"];
    node [fontname="Courier, monospace"];
    edge [fontname="Courier, monospace"];
    label=<fn Qubit::new(_1: i64, _2: i64) -&gt; Qubit<br align="left"/>let mut _3: i64;<br align="left"/>let mut _4: i64;<br align="left"/>debug up =&gt; _1;<br align="left"/>debug down =&gt; _2;<br align="left"/>>;
    bb0__0_8 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">0</td></tr><tr><td align="left" balign="left">_3 = _1<br/>_4 = _2<br/>Deinit(_0)<br/>(_0.0: i64) = move _3<br/>(_0.1: i64) = move _4<br/></td></tr><tr><td align="left">return</td></tr></table>>];
}
subgraph cluster_Mir_0_9 {
    graph [fontname="Courier, monospace"];
    node [fontname="Courier, monospace"];
    edge [fontname="Courier, monospace"];
    label=<fn Qubit::X(_1: &amp;mut Qubit) -&gt; ()<br align="left"/>let _2: i64;<br align="left"/>let mut _3: i64;<br align="left"/>let mut _4: i64;<br align="left"/>debug self =&gt; _1;<br align="left"/>debug temp =&gt; _2;<br align="left"/>>;
    bb0__0_9 [shape="none", label=<<table border="0" cellborder="1" cellspacing="0"><tr><td bgcolor="gray" align="center" colspan="1">0</td></tr><tr><td align="left" balign="left">_2 = ((*_1).0: i64)<br/>_3 = ((*_1).1: i64)<br/>((*_1).0: i64) = move _3<br/>_4 = _2<br/>((*_1).1: i64) = move _4<br/></td></tr><tr><td align="left">return</td></tr></table>>];
}
}
