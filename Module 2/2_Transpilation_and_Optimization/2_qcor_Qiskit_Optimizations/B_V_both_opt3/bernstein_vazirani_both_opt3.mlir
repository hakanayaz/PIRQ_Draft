module  {
  func @main(%arg0: i32, %arg1: !quantum.ArgvType) -> i32 {
    q.init(%arg0, %arg1) []
    %0 = call @__internal_mlir_bernstein_vazirani2_3() : () -> i32
    q.finalize()
    return %0 : i32
  }
  func @__internal_mlir_bernstein_vazirani2_3() -> i32 {
    %false = constant false
    %cst = constant 0.000000e+00 : f64
    %cst_0 = constant 3.1415926535897931 : f64
    %c8_i64 = constant 8 : i64
    %c3_i64 = constant 3 : i64
    %c7_i64 = constant 7 : i64
    %c12_i64 = constant 12 : i64
    %c11_i64 = constant 11 : i64
    %c0 = constant 0 : index
    %c1 = constant 1 : index
    %c2 = constant 2 : index
    %c3 = constant 3 : index
    %c4 = constant 4 : index
    %c0_i32 = constant 0 : i32
    %0 = q.qalloc(20) { name = q } : !quantum.Array
    %1 = alloca() : memref<5xi1>
    store %false, %1[%c0] : memref<5xi1>
    store %false, %1[%c1] : memref<5xi1>
    store %false, %1[%c2] : memref<5xi1>
    store %false, %1[%c3] : memref<5xi1>
    store %false, %1[%c4] : memref<5xi1>
    %2 = q.extract(%0, %c8_i64) : !quantum.Qubit
    %3 = qvs.u2(%2, %cst, %cst_0) : !quantum.Qubit
    %4 = q.extract(%0, %c3_i64) : !quantum.Qubit
    %5:2 = qvs.cx(%3, %4) : !quantum.Qubit, !quantum.Qubit
    %6 = q.extract(%0, %c7_i64) : !quantum.Qubit
    %7:2 = qvs.cx(%6, %5#0) : !quantum.Qubit, !quantum.Qubit
    %8:2 = qvs.cx(%7#1, %7#0) : !quantum.Qubit, !quantum.Qubit
    %9 = q.extract(%0, %c12_i64) : !quantum.Qubit
    %10:2 = qvs.cx(%8#1, %9) : !quantum.Qubit, !quantum.Qubit
    %11 = q.extract(%0, %c11_i64) : !quantum.Qubit
    %12:2 = qvs.cx(%11, %10#1) : !quantum.Qubit, !quantum.Qubit
    %13:2 = qvs.cx(%12#1, %12#0) : !quantum.Qubit, !quantum.Qubit
    %14:2 = qvs.cx(%13#1, %13#0) : !quantum.Qubit, !quantum.Qubit
    %15:2 = qvs.cx(%10#0, %14#1) : !quantum.Qubit, !quantum.Qubit
    %16 = q.mz(%15#0) : !quantum.Result
    %17 = q.resultCast(%16) : i1
    store %17, %1[%c0] : memref<5xi1>
    %18 = q.mz(%5#1) : !quantum.Result
    %19 = q.resultCast(%18) : i1
    store %19, %1[%c1] : memref<5xi1>
    %20 = q.mz(%14#0) : !quantum.Result
    %21 = q.resultCast(%20) : i1
    store %21, %1[%c2] : memref<5xi1>
    %22 = q.mz(%15#1) : !quantum.Result
    %23 = q.resultCast(%22) : i1
    store %23, %1[%c3] : memref<5xi1>
    %24 = q.mz(%8#0) : !quantum.Result
    %25 = q.resultCast(%24) : i1
    store %25, %1[%c4] : memref<5xi1>
    q.dealloc(%0)
    return %c0_i32 : i32
  }
  func @bernstein_vazirani2_3(%arg0: !quantum.qreg) -> i32 {
    q.set_qreg(%arg0)
    %0 = call @__internal_mlir_bernstein_vazirani2_3() : () -> i32
    q.finalize()
    return %0 : i32
  }
}