module  {
  func @main(%arg0: i32, %arg1: !quantum.ArgvType) -> i32 {
    q.init(%arg0, %arg1) []
    %0 = call @"__internal_mlir_B-V_transpiled_Superconducting_qc3"() : () -> i32
    q.finalize()
    return %0 : i32
  }
  func @"__internal_mlir_B-V_transpiled_Superconducting_qc3"() -> i32 {
    %0 = q.qalloc(20) { name = q } : !quantum.Array
    %false = constant false
    %c0 = constant 0 : index
    %c1 = constant 1 : index
    %c2 = constant 2 : index
    %1 = alloca() : memref<3xi1>
    store %false, %1[%c0] : memref<3xi1>
    store %false, %1[%c1] : memref<3xi1>
    store %false, %1[%c2] : memref<3xi1>
    %cst = constant 0.000000e+00 : f64
    %cst_0 = constant 3.1415926535897931 : f64
    %c0_i64 = constant 0 : i64
    %c0_i64_1 = constant 0 : i64
    %2 = q.extract(%0, %c0_i64_1) : !quantum.Qubit
    %3 = qvs.u2(%2, %cst, %cst_0) : !quantum.Qubit
    %cst_2 = constant 0.000000e+00 : f64
    %cst_3 = constant 3.1415926535897931 : f64
    %c11_i64 = constant 11 : i64
    %c11_i64_4 = constant 11 : i64
    %4 = q.extract(%0, %c11_i64_4) : !quantum.Qubit
    %5 = qvs.u2(%4, %cst_2, %cst_3) : !quantum.Qubit
    %cst_5 = constant 0.000000e+00 : f64
    %cst_6 = constant 3.1415926535897931 : f64
    %c15_i64 = constant 15 : i64
    %c15_i64_7 = constant 15 : i64
    %6 = q.extract(%0, %c15_i64_7) : !quantum.Qubit
    %7 = qvs.u2(%6, %cst_5, %cst_6) : !quantum.Qubit
    %cst_8 = constant 3.1415926535897931 : f64
    %cst_9 = constant -1.000000e+00 : f64
    %8 = mulf %cst_9, %cst_8 : f64
    %cst_10 = constant 3.1415926535897931 : f64
    %cst_11 = constant -1.000000e+00 : f64
    %9 = mulf %cst_11, %cst_10 : f64
    %c16_i64 = constant 16 : i64
    %c16_i64_12 = constant 16 : i64
    %10 = q.extract(%0, %c16_i64_12) : !quantum.Qubit
    %11 = qvs.u2(%10, %8, %9) : !quantum.Qubit
    %12:2 = qvs.cx(%5, %11) : !quantum.Qubit, !quantum.Qubit
    %13:2 = qvs.cx(%7, %12#1) : !quantum.Qubit, !quantum.Qubit
    %cst_13 = constant 0.000000e+00 : f64
    %cst_14 = constant 3.1415926535897931 : f64
    %c0_i64_15 = constant 0 : i64
    %14 = qvs.u2(%3, %cst_13, %cst_14) : !quantum.Qubit
    %cst_16 = constant 0.000000e+00 : f64
    %cst_17 = constant 3.1415926535897931 : f64
    %c11_i64_18 = constant 11 : i64
    %15 = qvs.u2(%12#0, %cst_16, %cst_17) : !quantum.Qubit
    %cst_19 = constant 0.000000e+00 : f64
    %cst_20 = constant 3.1415926535897931 : f64
    %c15_i64_21 = constant 15 : i64
    %16 = qvs.u2(%13#0, %cst_19, %cst_20) : !quantum.Qubit
    %17 = q.mz(%15) : !quantum.Result
    %c0_i64_22 = constant 0 : i64
    %18 = index_cast %c0_i64_22 : i64 to index
    %19 = q.resultCast(%17) : i1
    store %19, %1[%18] : memref<3xi1>
    %20 = q.mz(%16) : !quantum.Result
    %c1_i64 = constant 1 : i64
    %21 = index_cast %c1_i64 : i64 to index
    %22 = q.resultCast(%20) : i1
    store %22, %1[%21] : memref<3xi1>
    %23 = q.mz(%14) : !quantum.Result
    %c2_i64 = constant 2 : i64
    %24 = index_cast %c2_i64 : i64 to index
    %25 = q.resultCast(%23) : i1
    store %25, %1[%24] : memref<3xi1>
    q.dealloc(%0)
    %c0_i32 = constant 0 : i32
    return %c0_i32 : i32
  }
  func @"B-V_transpiled_Superconducting_qc3"(%arg0: !quantum.qreg) -> i32 {
    q.set_qreg(%arg0)
    %0 = call @"__internal_mlir_B-V_transpiled_Superconducting_qc3"() : () -> i32
    q.finalize()
    return %0 : i32
  }
}