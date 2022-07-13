module  {
  func @main(%arg0: i32, %arg1: !quantum.ArgvType) -> i32 {
    q.init(%arg0, %arg1) []
    %0 = call @__internal_mlir_bernstein_vazirani2_3() : () -> i32
    q.finalize()
    return %0 : i32
  }
  func @__internal_mlir_bernstein_vazirani2_3() -> i32 {
    %0 = q.qalloc(20) { name = q } : !quantum.Array
    %false = constant false
    %c0 = constant 0 : index
    %c1 = constant 1 : index
    %c2 = constant 2 : index
    %c3 = constant 3 : index
    %c4 = constant 4 : index
    %1 = alloca() : memref<5xi1>
    store %false, %1[%c0] : memref<5xi1>
    store %false, %1[%c1] : memref<5xi1>
    store %false, %1[%c2] : memref<5xi1>
    store %false, %1[%c3] : memref<5xi1>
    store %false, %1[%c4] : memref<5xi1>
    %cst = constant 0.000000e+00 : f64
    %cst_0 = constant 3.1415926535897931 : f64
    %c8_i64 = constant 8 : i64
    %c8_i64_1 = constant 8 : i64
    %2 = q.extract(%0, %c8_i64_1) : !quantum.Qubit
    %3 = qvs.u2(%2, %cst, %cst_0) : !quantum.Qubit
    %c3_i64 = constant 3 : i64
    %4 = q.extract(%0, %c3_i64) : !quantum.Qubit
    %5:2 = qvs.cx(%3, %4) : !quantum.Qubit, !quantum.Qubit
    %c7_i64 = constant 7 : i64
    %6 = q.extract(%0, %c7_i64) : !quantum.Qubit
    %7:2 = qvs.cx(%6, %5#0) : !quantum.Qubit, !quantum.Qubit
    %8:2 = qvs.cx(%7#1, %7#0) : !quantum.Qubit, !quantum.Qubit
    %c12_i64 = constant 12 : i64
    %9 = q.extract(%0, %c12_i64) : !quantum.Qubit
    %10:2 = qvs.cx(%8#1, %9) : !quantum.Qubit, !quantum.Qubit
    %c11_i64 = constant 11 : i64
    %11 = q.extract(%0, %c11_i64) : !quantum.Qubit
    %12:2 = qvs.cx(%11, %10#1) : !quantum.Qubit, !quantum.Qubit
    %13:2 = qvs.cx(%12#1, %12#0) : !quantum.Qubit, !quantum.Qubit
    %14:2 = qvs.cx(%13#1, %13#0) : !quantum.Qubit, !quantum.Qubit
    %15:2 = qvs.cx(%10#0, %14#1) : !quantum.Qubit, !quantum.Qubit
    %16 = q.mz(%15#0) : !quantum.Result
    %c0_i64 = constant 0 : i64
    %17 = index_cast %c0_i64 : i64 to index
    %18 = q.resultCast(%16) : i1
    store %18, %1[%17] : memref<5xi1>
    %19 = q.mz(%5#1) : !quantum.Result
    %c1_i64 = constant 1 : i64
    %20 = index_cast %c1_i64 : i64 to index
    %21 = q.resultCast(%19) : i1
    store %21, %1[%20] : memref<5xi1>
    %22 = q.mz(%14#0) : !quantum.Result
    %c2_i64 = constant 2 : i64
    %23 = index_cast %c2_i64 : i64 to index
    %24 = q.resultCast(%22) : i1
    store %24, %1[%23] : memref<5xi1>
    %25 = q.mz(%15#1) : !quantum.Result
    %c3_i64_2 = constant 3 : i64
    %26 = index_cast %c3_i64_2 : i64 to index
    %27 = q.resultCast(%25) : i1
    store %27, %1[%26] : memref<5xi1>
    %28 = q.mz(%8#0) : !quantum.Result
    %c4_i64 = constant 4 : i64
    %29 = index_cast %c4_i64 : i64 to index
    %30 = q.resultCast(%28) : i1
    store %30, %1[%29] : memref<5xi1>
    q.dealloc(%0)
    %c0_i32 = constant 0 : i32
    return %c0_i32 : i32
  }
  func @bernstein_vazirani2_3(%arg0: !quantum.qreg) -> i32 {
    q.set_qreg(%arg0)
    %0 = call @__internal_mlir_bernstein_vazirani2_3() : () -> i32
    q.finalize()
    return %0 : i32
  }
}