module  {
  llvm.func @__quantum__rt__set_external_qreg(!llvm.ptr<struct<"qreg", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz(!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__u2(f64, f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__quantum__rt__finalize()
  llvm.func @__quantum__rt__initialize(i32, !llvm.ptr<ptr<i8>>) -> i32
  llvm.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %0 = llvm.call @__quantum__rt__initialize(%arg0, %arg1) : (i32, !llvm.ptr<ptr<i8>>) -> i32
    %1 = llvm.call @"__internal_mlir_B-V_transpiled_Superconducting_qc3"() : () -> i32
    %2 = llvm.call @__quantum__rt__finalize() : () -> !llvm.void
    llvm.return %1 : i32
  }
  llvm.func @"__internal_mlir_B-V_transpiled_Superconducting_qc3"() -> i32 {
    %0 = llvm.mlir.constant(20 : i64) : i64
    %1 = llvm.call @__quantum__rt__qubit_allocate_array(%0) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %2 = llvm.mlir.constant(false) : i1
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = llvm.mlir.constant(2 : index) : i64
    %6 = llvm.mlir.constant(3 : index) : i64
    %7 = llvm.mlir.constant(1 : index) : i64
    %8 = llvm.mlir.null : !llvm.ptr<i1>
    %9 = llvm.getelementptr %8[%6] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %10 = llvm.ptrtoint %9 : !llvm.ptr<i1> to i64
    %11 = llvm.alloca %10 x i1 : (i64) -> !llvm.ptr<i1>
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %11, %12[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %14 = llvm.insertvalue %11, %13[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.insertvalue %15, %14[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %6, %16[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.insertvalue %7, %17[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.getelementptr %19[%3] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %2, %20 : !llvm.ptr<i1>
    %21 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.getelementptr %21[%4] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %2, %22 : !llvm.ptr<i1>
    %23 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.getelementptr %23[%5] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %2, %24 : !llvm.ptr<i1>
    %25 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %26 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %27 = llvm.mlir.constant(0 : i64) : i64
    %28 = llvm.mlir.constant(0 : i64) : i64
    %29 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%1, %28) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %30 = llvm.bitcast %29 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %32 = llvm.call @__quantum__qis__u2(%25, %26, %31) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %33 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %34 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %35 = llvm.mlir.constant(11 : i64) : i64
    %36 = llvm.mlir.constant(11 : i64) : i64
    %37 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%1, %36) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %38 = llvm.bitcast %37 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %39 = llvm.load %38 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %40 = llvm.call @__quantum__qis__u2(%33, %34, %39) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %41 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %42 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %43 = llvm.mlir.constant(15 : i64) : i64
    %44 = llvm.mlir.constant(15 : i64) : i64
    %45 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%1, %44) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %46 = llvm.bitcast %45 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %47 = llvm.load %46 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %48 = llvm.call @__quantum__qis__u2(%41, %42, %47) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %49 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %50 = llvm.mlir.constant(-1.000000e+00 : f64) : f64
    %51 = llvm.mlir.constant(-3.1415926535897931 : f64) : f64
    %52 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %53 = llvm.mlir.constant(-1.000000e+00 : f64) : f64
    %54 = llvm.mlir.constant(-3.1415926535897931 : f64) : f64
    %55 = llvm.mlir.constant(16 : i64) : i64
    %56 = llvm.mlir.constant(16 : i64) : i64
    %57 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%1, %56) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %58 = llvm.bitcast %57 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %59 = llvm.load %58 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %60 = llvm.call @__quantum__qis__u2(%51, %54, %59) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %61 = llvm.call @__quantum__qis__cnot(%39, %59) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %62 = llvm.call @__quantum__qis__cnot(%47, %59) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %63 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %64 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %65 = llvm.mlir.constant(0 : i64) : i64
    %66 = llvm.call @__quantum__qis__u2(%63, %64, %31) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %67 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %68 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %69 = llvm.mlir.constant(11 : i64) : i64
    %70 = llvm.call @__quantum__qis__u2(%67, %68, %39) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %71 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %72 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %73 = llvm.mlir.constant(15 : i64) : i64
    %74 = llvm.call @__quantum__qis__u2(%71, %72, %47) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %75 = llvm.call @__quantum__qis__mz(%39) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %76 = llvm.mlir.constant(0 : i64) : i64
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.bitcast %75 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %79 = llvm.load %78 : !llvm.ptr<i1>
    %80 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %81 = llvm.getelementptr %80[%77] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %79, %81 : !llvm.ptr<i1>
    %82 = llvm.call @__quantum__qis__mz(%47) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %83 = llvm.mlir.constant(1 : i64) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.bitcast %82 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %86 = llvm.load %85 : !llvm.ptr<i1>
    %87 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %88 = llvm.getelementptr %87[%84] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %86, %88 : !llvm.ptr<i1>
    %89 = llvm.call @__quantum__qis__mz(%31) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %90 = llvm.mlir.constant(2 : i64) : i64
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.bitcast %89 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %93 = llvm.load %92 : !llvm.ptr<i1>
    %94 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %95 = llvm.getelementptr %94[%91] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %93, %95 : !llvm.ptr<i1>
    %96 = llvm.call @__quantum__rt__qubit_release_array(%1) : (!llvm.ptr<struct<"Array", opaque>>) -> !llvm.void
    %97 = llvm.mlir.constant(0 : i32) : i32
    llvm.return %97 : i32
  }
  llvm.func @"B-V_transpiled_Superconducting_qc3"(%arg0: !llvm.ptr<struct<"qreg", opaque>>) -> i32 {
    %0 = llvm.call @__quantum__rt__set_external_qreg(%arg0) : (!llvm.ptr<struct<"qreg", opaque>>) -> !llvm.void
    %1 = llvm.call @"__internal_mlir_B-V_transpiled_Superconducting_qc3"() : () -> i32
    %2 = llvm.call @__quantum__rt__finalize() : () -> !llvm.void
    llvm.return %1 : i32
  }
}