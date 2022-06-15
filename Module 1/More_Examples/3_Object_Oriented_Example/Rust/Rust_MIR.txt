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
