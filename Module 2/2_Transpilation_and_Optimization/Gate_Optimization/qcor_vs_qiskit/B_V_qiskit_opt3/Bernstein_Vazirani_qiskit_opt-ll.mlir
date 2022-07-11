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
    %1 = llvm.call @__internal_mlir_bernstein_vazirani2_3() : () -> i32
    %2 = llvm.call @__quantum__rt__finalize() : () -> !llvm.void
    llvm.return %1 : i32
  }
  llvm.func @__internal_mlir_bernstein_vazirani2_3() -> i32 {
    %0 = llvm.mlir.constant(20 : i64) : i64
    %1 = llvm.call @__quantum__rt__qubit_allocate_array(%0) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %2 = llvm.mlir.constant(false) : i1
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = llvm.mlir.constant(2 : index) : i64
    %6 = llvm.mlir.constant(3 : index) : i64
    %7 = llvm.mlir.constant(4 : index) : i64
    %8 = llvm.mlir.constant(5 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.null : !llvm.ptr<i1>
    %11 = llvm.getelementptr %10[%8] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %12 = llvm.ptrtoint %11 : !llvm.ptr<i1> to i64
    %13 = llvm.alloca %12 x i1 : (i64) -> !llvm.ptr<i1>
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %13, %14[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.insertvalue %13, %15[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.insertvalue %17, %16[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %8, %18[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.insertvalue %9, %19[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.getelementptr %21[%3] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %2, %22 : !llvm.ptr<i1>
    %23 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.getelementptr %23[%4] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %2, %24 : !llvm.ptr<i1>
    %25 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %26 = llvm.getelementptr %25[%5] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %2, %26 : !llvm.ptr<i1>
    %27 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %28 = llvm.getelementptr %27[%6] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %2, %28 : !llvm.ptr<i1>
    %29 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.getelementptr %29[%7] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %2, %30 : !llvm.ptr<i1>
    %31 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %32 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %33 = llvm.mlir.constant(8 : i64) : i64
    %34 = llvm.mlir.constant(8 : i64) : i64
    %35 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%1, %34) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %37 = llvm.load %36 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %38 = llvm.call @__quantum__qis__u2(%31, %32, %37) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %39 = llvm.mlir.constant(3 : i64) : i64
    %40 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%1, %39) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %41 = llvm.bitcast %40 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %42 = llvm.load %41 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %43 = llvm.call @__quantum__qis__cnot(%37, %42) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %44 = llvm.mlir.constant(7 : i64) : i64
    %45 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%1, %44) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %46 = llvm.bitcast %45 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %47 = llvm.load %46 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %48 = llvm.call @__quantum__qis__cnot(%47, %37) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %49 = llvm.call @__quantum__qis__cnot(%37, %47) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %50 = llvm.mlir.constant(12 : i64) : i64
    %51 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%1, %50) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %52 = llvm.bitcast %51 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %53 = llvm.load %52 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %54 = llvm.call @__quantum__qis__cnot(%47, %53) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %55 = llvm.mlir.constant(11 : i64) : i64
    %56 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%1, %55) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %58 = llvm.load %57 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %59 = llvm.call @__quantum__qis__cnot(%58, %53) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %60 = llvm.call @__quantum__qis__cnot(%53, %58) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %61 = llvm.call @__quantum__qis__cnot(%58, %53) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %62 = llvm.call @__quantum__qis__cnot(%47, %53) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %63 = llvm.call @__quantum__qis__mz(%47) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %64 = llvm.mlir.constant(0 : i64) : i64
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.bitcast %63 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %67 = llvm.load %66 : !llvm.ptr<i1>
    %68 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %69 = llvm.getelementptr %68[%65] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %67, %69 : !llvm.ptr<i1>
    %70 = llvm.call @__quantum__qis__mz(%42) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.bitcast %70 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %74 = llvm.load %73 : !llvm.ptr<i1>
    %75 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %76 = llvm.getelementptr %75[%72] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %74, %76 : !llvm.ptr<i1>
    %77 = llvm.call @__quantum__qis__mz(%58) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.bitcast %77 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %81 = llvm.load %80 : !llvm.ptr<i1>
    %82 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %83 = llvm.getelementptr %82[%79] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %81, %83 : !llvm.ptr<i1>
    %84 = llvm.call @__quantum__qis__mz(%53) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %85 = llvm.mlir.constant(3 : i64) : i64
    %86 = llvm.mlir.constant(3 : index) : i64
    %87 = llvm.bitcast %84 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %88 = llvm.load %87 : !llvm.ptr<i1>
    %89 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %90 = llvm.getelementptr %89[%86] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %88, %90 : !llvm.ptr<i1>
    %91 = llvm.call @__quantum__qis__mz(%37) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %92 = llvm.mlir.constant(4 : i64) : i64
    %93 = llvm.mlir.constant(4 : index) : i64
    %94 = llvm.bitcast %91 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %95 = llvm.load %94 : !llvm.ptr<i1>
    %96 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %97 = llvm.getelementptr %96[%93] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %95, %97 : !llvm.ptr<i1>
    %98 = llvm.call @__quantum__rt__qubit_release_array(%1) : (!llvm.ptr<struct<"Array", opaque>>) -> !llvm.void
    %99 = llvm.mlir.constant(0 : i32) : i32
    llvm.return %99 : i32
  }
  llvm.func @bernstein_vazirani2_3(%arg0: !llvm.ptr<struct<"qreg", opaque>>) -> i32 {
    %0 = llvm.call @__quantum__rt__set_external_qreg(%arg0) : (!llvm.ptr<struct<"qreg", opaque>>) -> !llvm.void
    %1 = llvm.call @__internal_mlir_bernstein_vazirani2_3() : () -> i32
    %2 = llvm.call @__quantum__rt__finalize() : () -> !llvm.void
    llvm.return %1 : i32
  }
}