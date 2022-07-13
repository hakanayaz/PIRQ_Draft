module  {
  llvm.func @__quantum__rt__set_external_qreg(!llvm.ptr<struct<"qreg", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz(!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__id(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__u1(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__u2(f64, f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__quantum__rt__finalize()
  llvm.func @__quantum__rt__initialize(i32, !llvm.ptr<ptr<i8>>) -> i32
  llvm.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %0 = llvm.call @__quantum__rt__initialize(%arg0, %arg1) : (i32, !llvm.ptr<ptr<i8>>) -> i32
    %1 = llvm.call @__internal_mlir_Bernstein_Vazirani_no_opt() : () -> i32
    %2 = llvm.call @__quantum__rt__finalize() : () -> !llvm.void
    llvm.return %1 : i32
  }
  llvm.func @__internal_mlir_Bernstein_Vazirani_no_opt() -> i32 {
    %0 = llvm.mlir.constant(false) : i1
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(2 : index) : i64
    %4 = llvm.mlir.constant(3 : index) : i64
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.null : !llvm.ptr<i1>
    %7 = llvm.getelementptr %6[%4] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %8 = llvm.ptrtoint %7 : !llvm.ptr<i1> to i64
    %9 = llvm.alloca %8 x i1 : (i64) -> !llvm.ptr<i1>
    %10 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %11 = llvm.insertvalue %9, %10[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %12 = llvm.insertvalue %9, %11[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.insertvalue %13, %12[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %4, %14[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.insertvalue %5, %15[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.getelementptr %17[%1] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %0, %18 : !llvm.ptr<i1>
    %19 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.getelementptr %19[%2] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %0, %20 : !llvm.ptr<i1>
    %21 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.getelementptr %21[%3] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %0, %22 : !llvm.ptr<i1>
    %23 = llvm.mlir.constant(20 : i64) : i64
    %24 = llvm.call @__quantum__rt__qubit_allocate_array(%23) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %25 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %26 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %27 = llvm.mlir.constant(0 : i64) : i64
    %28 = llvm.mlir.constant(0 : i64) : i64
    %29 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%24, %28) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %30 = llvm.bitcast %29 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %32 = llvm.call @__quantum__qis__u2(%25, %26, %31) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %33 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %34 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %35 = llvm.mlir.constant(1 : i64) : i64
    %36 = llvm.mlir.constant(1 : i64) : i64
    %37 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%24, %36) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %38 = llvm.bitcast %37 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %39 = llvm.load %38 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %40 = llvm.call @__quantum__qis__u2(%33, %34, %39) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %41 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %42 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %43 = llvm.mlir.constant(2 : i64) : i64
    %44 = llvm.mlir.constant(2 : i64) : i64
    %45 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%24, %44) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %46 = llvm.bitcast %45 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %47 = llvm.load %46 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %48 = llvm.call @__quantum__qis__u2(%41, %42, %47) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %49 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %50 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %51 = llvm.mlir.constant(3 : i64) : i64
    %52 = llvm.mlir.constant(3 : i64) : i64
    %53 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%24, %52) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %54 = llvm.bitcast %53 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %55 = llvm.load %54 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %56 = llvm.call @__quantum__qis__u2(%49, %50, %55) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %57 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %58 = llvm.mlir.constant(3 : i64) : i64
    %59 = llvm.call @__quantum__qis__u1(%57, %55) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %60 = llvm.call @__quantum__qis__cnot(%31, %39) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %61 = llvm.call @__quantum__qis__cnot(%39, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %62 = llvm.call @__quantum__qis__cnot(%31, %39) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %63 = llvm.call @__quantum__qis__cnot(%47, %55) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %64 = llvm.call @__quantum__qis__cnot(%55, %47) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %65 = llvm.call @__quantum__qis__cnot(%47, %55) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %66 = llvm.call @__quantum__qis__cnot(%39, %47) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %67 = llvm.call @__quantum__qis__cnot(%31, %39) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %68 = llvm.call @__quantum__qis__cnot(%39, %31) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %69 = llvm.call @__quantum__qis__cnot(%31, %39) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %70 = llvm.call @__quantum__qis__cnot(%39, %47) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %71 = llvm.call @__quantum__qis__id(%55) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %72 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %73 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %74 = llvm.mlir.constant(0 : i64) : i64
    %75 = llvm.call @__quantum__qis__u2(%72, %73, %31) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %76 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %77 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %78 = llvm.mlir.constant(1 : i64) : i64
    %79 = llvm.call @__quantum__qis__u2(%76, %77, %39) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %80 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %81 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %82 = llvm.mlir.constant(3 : i64) : i64
    %83 = llvm.call @__quantum__qis__u2(%80, %81, %55) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %84 = llvm.call @__quantum__qis__mz(%31) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %85 = llvm.mlir.constant(0 : i64) : i64
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.bitcast %84 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %88 = llvm.load %87 : !llvm.ptr<i1>
    %89 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %90 = llvm.getelementptr %89[%86] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %88, %90 : !llvm.ptr<i1>
    %91 = llvm.call @__quantum__qis__mz(%39) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %92 = llvm.mlir.constant(1 : i64) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.bitcast %91 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %95 = llvm.load %94 : !llvm.ptr<i1>
    %96 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %97 = llvm.getelementptr %96[%93] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %95, %97 : !llvm.ptr<i1>
    %98 = llvm.call @__quantum__qis__mz(%55) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %99 = llvm.mlir.constant(2 : i64) : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.bitcast %98 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %102 = llvm.load %101 : !llvm.ptr<i1>
    %103 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %104 = llvm.getelementptr %103[%100] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %102, %104 : !llvm.ptr<i1>
    %105 = llvm.call @__quantum__rt__qubit_release_array(%24) : (!llvm.ptr<struct<"Array", opaque>>) -> !llvm.void
    %106 = llvm.mlir.constant(0 : i32) : i32
    llvm.return %106 : i32
  }
  llvm.func @Bernstein_Vazirani_no_opt(%arg0: !llvm.ptr<struct<"qreg", opaque>>) -> i32 {
    %0 = llvm.call @__quantum__rt__set_external_qreg(%arg0) : (!llvm.ptr<struct<"qreg", opaque>>) -> !llvm.void
    %1 = llvm.call @__internal_mlir_Bernstein_Vazirani_no_opt() : () -> i32
    %2 = llvm.call @__quantum__rt__finalize() : () -> !llvm.void
    llvm.return %1 : i32
  }
}