module  {
  func @main(%arg0: i32, %arg1: !quantum.ArgvType) -> i32 {
    q.init(%arg0, %arg1) []
    %0 = call @__internal_mlir_bell() : () -> i32
    q.finalize()
    return %0 : i32
  }
  func @__internal_mlir_bell() -> i32 {
    %0 = q.qalloc(2) { name = q } : !quantum.Array
    %false = constant false
    %c0 = constant 0 : index
    %c1 = constant 1 : index
    %1 = alloca() : memref<2xi1>
    store %false, %1[%c0] : memref<2xi1>
    store %false, %1[%c1] : memref<2xi1>
    %cst = constant 3.1415926535897931 : f64
    %c2_i64 = constant 2 : i64
    %2 = sitofp %c2_i64 : i64 to f64
    %3 = divf %cst, %2 : f64
    %cst_0 = constant 0.000000e+00 : f64
    %cst_1 = constant 3.1415926535897931 : f64
    %c0_i64 = constant 0 : i64
    %4 = q.extract(%0, %c0_i64) : !quantum.Qubit
    %5 = qvs.u3(%4, %3, %cst_0, %cst_1) : !quantum.Qubit
    %c1_i64 = constant 1 : i64
    %6 = q.extract(%0, %c1_i64) : !quantum.Qubit
    %7:2 = qvs.cnot(%5, %6) : !quantum.Qubit, !quantum.Qubit
    %8 = q.mz(%7#0) : !quantum.Result
    %c0_i64_2 = constant 0 : i64
    %9 = index_cast %c0_i64_2 : i64 to index
    %10 = q.resultCast(%8) : i1
    store %10, %1[%9] : memref<2xi1>
    %11 = q.mz(%7#1) : !quantum.Result
    %c1_i64_3 = constant 1 : i64
    %12 = index_cast %c1_i64_3 : i64 to index
    %13 = q.resultCast(%11) : i1
    store %13, %1[%12] : memref<2xi1>
    q.dealloc(%0)
    %c0_i32 = constant 0 : i32
    return %c0_i32 : i32
  }
  func @bell(%arg0: !quantum.qreg) -> i32 {
    q.set_qreg(%arg0)
    %0 = call @__internal_mlir_bell() : () -> i32
    q.finalize()
    return %0 : i32
  }
}