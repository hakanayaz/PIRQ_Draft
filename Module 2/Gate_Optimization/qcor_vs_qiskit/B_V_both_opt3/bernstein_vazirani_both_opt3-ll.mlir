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
    %0 = llvm.mlir.constant(false) : i1
    %1 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %3 = llvm.mlir.constant(8 : i64) : i64
    %4 = llvm.mlir.constant(3 : i64) : i64
    %5 = llvm.mlir.constant(7 : i64) : i64
    %6 = llvm.mlir.constant(12 : i64) : i64
    %7 = llvm.mlir.constant(11 : i64) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(2 : index) : i64
    %11 = llvm.mlir.constant(3 : index) : i64
    %12 = llvm.mlir.constant(4 : index) : i64
    %13 = llvm.mlir.constant(0 : i32) : i32
    %14 = llvm.mlir.constant(20 : i64) : i64
    %15 = llvm.call @__quantum__rt__qubit_allocate_array(%14) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %16 = llvm.mlir.constant(5 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.null : !llvm.ptr<i1>
    %19 = llvm.getelementptr %18[%16] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %20 = llvm.ptrtoint %19 : !llvm.ptr<i1> to i64
    %21 = llvm.alloca %20 x i1 : (i64) -> !llvm.ptr<i1>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %27 = llvm.insertvalue %16, %26[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %28 = llvm.insertvalue %17, %27[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %29 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.getelementptr %29[%8] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %0, %30 : !llvm.ptr<i1>
    %31 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %32 = llvm.getelementptr %31[%9] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %0, %32 : !llvm.ptr<i1>
    %33 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %34 = llvm.getelementptr %33[%10] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %0, %34 : !llvm.ptr<i1>
    %35 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.getelementptr %35[%11] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %0, %36 : !llvm.ptr<i1>
    %37 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.getelementptr %37[%12] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %0, %38 : !llvm.ptr<i1>
    %39 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%15, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %40 = llvm.bitcast %39 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %41 = llvm.load %40 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %42 = llvm.call @__quantum__qis__u2(%1, %2, %41) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %43 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%15, %4) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %44 = llvm.bitcast %43 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %45 = llvm.load %44 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %46 = llvm.call @__quantum__qis__cnot(%41, %45) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %47 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%15, %5) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %49 = llvm.load %48 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %50 = llvm.call @__quantum__qis__cnot(%49, %41) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %51 = llvm.call @__quantum__qis__cnot(%41, %49) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %52 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%15, %6) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %53 = llvm.bitcast %52 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %54 = llvm.load %53 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %55 = llvm.call @__quantum__qis__cnot(%49, %54) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %56 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%15, %7) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %58 = llvm.load %57 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %59 = llvm.call @__quantum__qis__cnot(%58, %54) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %60 = llvm.call @__quantum__qis__cnot(%54, %58) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %61 = llvm.call @__quantum__qis__cnot(%58, %54) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %62 = llvm.call @__quantum__qis__cnot(%49, %54) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %63 = llvm.call @__quantum__qis__mz(%49) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %64 = llvm.bitcast %63 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %65 = llvm.load %64 : !llvm.ptr<i1>
    %66 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %67 = llvm.getelementptr %66[%8] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %65, %67 : !llvm.ptr<i1>
    %68 = llvm.call @__quantum__qis__mz(%45) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %69 = llvm.bitcast %68 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %70 = llvm.load %69 : !llvm.ptr<i1>
    %71 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %72 = llvm.getelementptr %71[%9] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %70, %72 : !llvm.ptr<i1>
    %73 = llvm.call @__quantum__qis__mz(%58) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %74 = llvm.bitcast %73 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %75 = llvm.load %74 : !llvm.ptr<i1>
    %76 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %77 = llvm.getelementptr %76[%10] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %75, %77 : !llvm.ptr<i1>
    %78 = llvm.call @__quantum__qis__mz(%54) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %79 = llvm.bitcast %78 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %80 = llvm.load %79 : !llvm.ptr<i1>
    %81 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %82 = llvm.getelementptr %81[%11] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %80, %82 : !llvm.ptr<i1>
    %83 = llvm.call @__quantum__qis__mz(%41) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %84 = llvm.bitcast %83 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %85 = llvm.load %84 : !llvm.ptr<i1>
    %86 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %87 = llvm.getelementptr %86[%12] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %85, %87 : !llvm.ptr<i1>
    %88 = llvm.call @__quantum__rt__qubit_release_array(%15) : (!llvm.ptr<struct<"Array", opaque>>) -> !llvm.void
    llvm.return %13 : i32
  }
  llvm.func @bernstein_vazirani2_3(%arg0: !llvm.ptr<struct<"qreg", opaque>>) -> i32 {
    %0 = llvm.call @__quantum__rt__set_external_qreg(%arg0) : (!llvm.ptr<struct<"qreg", opaque>>) -> !llvm.void
    %1 = llvm.call @__internal_mlir_bernstein_vazirani2_3() : () -> i32
    %2 = llvm.call @__quantum__rt__finalize() : () -> !llvm.void
    llvm.return %1 : i32
  }
}