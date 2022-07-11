module  {
  func @main(%arg0: i32, %arg1: !quantum.ArgvType) -> i32 {
    q.init(%arg0, %arg1) []
    %0 = call @__internal_mlir_Bernstein_Vazirani_no_opt() : () -> i32
    q.finalize()
    return %0 : i32
  }
  func @__internal_mlir_Bernstein_Vazirani_no_opt() -> i32 {
    %false = constant false
    %c0 = constant 0 : index
    %c1 = constant 1 : index
    %c2 = constant 2 : index
    %0 = alloca() : memref<3xi1>
    store %false, %0[%c0] : memref<3xi1>
    store %false, %0[%c1] : memref<3xi1>
    store %false, %0[%c2] : memref<3xi1>
    %1 = q.qalloc(20) { name = q } : !quantum.Array
    %cst = constant 0.000000e+00 : f64
    %cst_0 = constant 3.1415926535897931 : f64
    %c0_i64 = constant 0 : i64
    %c0_i64_1 = constant 0 : i64
    %2 = q.extract(%1, %c0_i64_1) : !quantum.Qubit
    %3 = qvs.u2(%2, %cst, %cst_0) : !quantum.Qubit
    %cst_2 = constant 0.000000e+00 : f64
    %cst_3 = constant 3.1415926535897931 : f64
    %c1_i64 = constant 1 : i64
    %c1_i64_4 = constant 1 : i64
    %4 = q.extract(%1, %c1_i64_4) : !quantum.Qubit
    %5 = qvs.u2(%4, %cst_2, %cst_3) : !quantum.Qubit
    %cst_5 = constant 0.000000e+00 : f64
    %cst_6 = constant 3.1415926535897931 : f64
    %c2_i64 = constant 2 : i64
    %c2_i64_7 = constant 2 : i64
    %6 = q.extract(%1, %c2_i64_7) : !quantum.Qubit
    %7 = qvs.u2(%6, %cst_5, %cst_6) : !quantum.Qubit
    %cst_8 = constant 0.000000e+00 : f64
    %cst_9 = constant 3.1415926535897931 : f64
    %c3_i64 = constant 3 : i64
    %c3_i64_10 = constant 3 : i64
    %8 = q.extract(%1, %c3_i64_10) : !quantum.Qubit
    %9 = qvs.u2(%8, %cst_8, %cst_9) : !quantum.Qubit
    %cst_11 = constant 3.1415926535897931 : f64
    %c3_i64_12 = constant 3 : i64
    %10 = qvs.u1(%9, %cst_11) : !quantum.Qubit
    %11:2 = qvs.cx(%3, %5) : !quantum.Qubit, !quantum.Qubit
    %12:2 = qvs.cx(%11#1, %11#0) : !quantum.Qubit, !quantum.Qubit
    %13:2 = qvs.cx(%12#1, %12#0) : !quantum.Qubit, !quantum.Qubit
    %14:2 = qvs.cx(%7, %10) : !quantum.Qubit, !quantum.Qubit
    %15:2 = qvs.cx(%14#1, %14#0) : !quantum.Qubit, !quantum.Qubit
    %16:2 = qvs.cx(%15#1, %15#0) : !quantum.Qubit, !quantum.Qubit
    %17:2 = qvs.cx(%13#1, %16#0) : !quantum.Qubit, !quantum.Qubit
    %18:2 = qvs.cx(%13#0, %17#0) : !quantum.Qubit, !quantum.Qubit
    %19:2 = qvs.cx(%18#1, %18#0) : !quantum.Qubit, !quantum.Qubit
    %20:2 = qvs.cx(%19#1, %19#0) : !quantum.Qubit, !quantum.Qubit
    %21:2 = qvs.cx(%20#1, %17#1) : !quantum.Qubit, !quantum.Qubit
    %22 = qvs.id(%16#1) : !quantum.Qubit
    %cst_13 = constant 0.000000e+00 : f64
    %cst_14 = constant 3.1415926535897931 : f64
    %c0_i64_15 = constant 0 : i64
    %23 = qvs.u2(%20#0, %cst_13, %cst_14) : !quantum.Qubit
    %cst_16 = constant 0.000000e+00 : f64
    %cst_17 = constant 3.1415926535897931 : f64
    %c1_i64_18 = constant 1 : i64
    %24 = qvs.u2(%21#0, %cst_16, %cst_17) : !quantum.Qubit
    %cst_19 = constant 0.000000e+00 : f64
    %cst_20 = constant 3.1415926535897931 : f64
    %c3_i64_21 = constant 3 : i64
    %25 = qvs.u2(%22, %cst_19, %cst_20) : !quantum.Qubit
    %26 = q.mz(%23) : !quantum.Result
    %c0_i64_22 = constant 0 : i64
    %27 = index_cast %c0_i64_22 : i64 to index
    %28 = q.resultCast(%26) : i1
    store %28, %0[%27] : memref<3xi1>
    %29 = q.mz(%24) : !quantum.Result
    %c1_i64_23 = constant 1 : i64
    %30 = index_cast %c1_i64_23 : i64 to index
    %31 = q.resultCast(%29) : i1
    store %31, %0[%30] : memref<3xi1>
    %32 = q.mz(%25) : !quantum.Result
    %c2_i64_24 = constant 2 : i64
    %33 = index_cast %c2_i64_24 : i64 to index
    %34 = q.resultCast(%32) : i1
    store %34, %0[%33] : memref<3xi1>
    q.dealloc(%1)
    %c0_i32 = constant 0 : i32
    return %c0_i32 : i32
  }
  func @Bernstein_Vazirani_no_opt(%arg0: !quantum.qreg) -> i32 {
    q.set_qreg(%arg0)
    %0 = call @__internal_mlir_Bernstein_Vazirani_no_opt() : () -> i32
    q.finalize()
    return %0 : i32
  }
}