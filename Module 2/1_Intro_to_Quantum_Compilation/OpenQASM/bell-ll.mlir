module  {
  llvm.func @__quantum__rt__set_external_qreg(!llvm.ptr<struct<"qreg", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz(!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__u3(f64, f64, f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__quantum__rt__finalize()
  llvm.func @__quantum__rt__initialize(i32, !llvm.ptr<ptr<i8>>) -> i32
  llvm.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %0 = llvm.call @__quantum__rt__initialize(%arg0, %arg1) : (i32, !llvm.ptr<ptr<i8>>) -> i32
    %1 = llvm.call @__internal_mlir_bell() : () -> i32
    %2 = llvm.call @__quantum__rt__finalize() : () -> !llvm.void
    llvm.return %1 : i32
  }
  llvm.func @__internal_mlir_bell() -> i32 {
    %0 = llvm.mlir.constant(2 : i64) : i64
    %1 = llvm.call @__quantum__rt__qubit_allocate_array(%0) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %2 = llvm.mlir.constant(false) : i1
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = llvm.mlir.constant(2 : index) : i64
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.mlir.null : !llvm.ptr<i1>
    %8 = llvm.getelementptr %7[%5] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %9 = llvm.ptrtoint %8 : !llvm.ptr<i1> to i64
    %10 = llvm.alloca %9 x i1 : (i64) -> !llvm.ptr<i1>
    %11 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %12 = llvm.insertvalue %10, %11[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %10, %12[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.insertvalue %14, %13[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.insertvalue %5, %15[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %6, %16[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.getelementptr %18[%3] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %2, %19 : !llvm.ptr<i1>
    %20 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.getelementptr %20[%4] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %2, %21 : !llvm.ptr<i1>
    %22 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %23 = llvm.mlir.constant(2 : i64) : i64
    %24 = llvm.sitofp %23 : i64 to f64
    %25 = llvm.fdiv %22, %24  : f64
    %26 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %27 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %28 = llvm.mlir.constant(0 : i64) : i64
    %29 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%1, %28) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %30 = llvm.bitcast %29 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %32 = llvm.call @__quantum__qis__u3(%25, %26, %27, %31) : (f64, f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %33 = llvm.mlir.constant(1 : i64) : i64
    %34 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%1, %33) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %35 = llvm.bitcast %34 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %36 = llvm.load %35 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %37 = llvm.call @__quantum__qis__cnot(%31, %36) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %38 = llvm.call @__quantum__qis__mz(%31) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %39 = llvm.mlir.constant(0 : i64) : i64
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.bitcast %38 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %42 = llvm.load %41 : !llvm.ptr<i1>
    %43 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %44 = llvm.getelementptr %43[%40] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %42, %44 : !llvm.ptr<i1>
    %45 = llvm.call @__quantum__qis__mz(%36) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %46 = llvm.mlir.constant(1 : i64) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.bitcast %45 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %49 = llvm.load %48 : !llvm.ptr<i1>
    %50 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %51 = llvm.getelementptr %50[%47] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %49, %51 : !llvm.ptr<i1>
    %52 = llvm.call @__quantum__rt__qubit_release_array(%1) : (!llvm.ptr<struct<"Array", opaque>>) -> !llvm.void
    %53 = llvm.mlir.constant(0 : i32) : i32
    llvm.return %53 : i32
  }
  llvm.func @bell(%arg0: !llvm.ptr<struct<"qreg", opaque>>) -> i32 {
    %0 = llvm.call @__quantum__rt__set_external_qreg(%arg0) : (!llvm.ptr<struct<"qreg", opaque>>) -> !llvm.void
    %1 = llvm.call @__internal_mlir_bell() : () -> i32
    %2 = llvm.call @__quantum__rt__finalize() : () -> !llvm.void
    llvm.return %1 : i32
  }
}