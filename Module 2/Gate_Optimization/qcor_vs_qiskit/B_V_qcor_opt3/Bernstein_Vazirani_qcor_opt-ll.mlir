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
    %1 = llvm.mlir.constant(0 : i64) : i64
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.mlir.constant(2 : i64) : i64
    %4 = llvm.mlir.constant(3 : i64) : i64
    %5 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.constant(1 : index) : i64
    %9 = llvm.mlir.constant(2 : index) : i64
    %10 = llvm.mlir.constant(0 : i32) : i32
    %11 = llvm.mlir.constant(3 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.null : !llvm.ptr<i1>
    %14 = llvm.getelementptr %13[%11] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %15 = llvm.ptrtoint %14 : !llvm.ptr<i1> to i64
    %16 = llvm.alloca %15 x i1 : (i64) -> !llvm.ptr<i1>
    %17 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.insertvalue %11, %21[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.insertvalue %12, %22[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.getelementptr %24[%7] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %0, %25 : !llvm.ptr<i1>
    %26 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %27 = llvm.getelementptr %26[%8] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %0, %27 : !llvm.ptr<i1>
    %28 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %29 = llvm.getelementptr %28[%9] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %0, %29 : !llvm.ptr<i1>
    %30 = llvm.mlir.constant(20 : i64) : i64
    %31 = llvm.call @__quantum__rt__qubit_allocate_array(%30) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %32 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%31, %1) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %33 = llvm.bitcast %32 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %34 = llvm.load %33 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %35 = llvm.call @__quantum__qis__u2(%5, %6, %34) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %36 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%31, %2) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %37 = llvm.bitcast %36 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %38 = llvm.load %37 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %39 = llvm.call @__quantum__qis__u2(%5, %6, %38) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %40 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%31, %3) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %41 = llvm.bitcast %40 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %42 = llvm.load %41 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %43 = llvm.call @__quantum__qis__u2(%5, %6, %42) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %44 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%31, %4) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %45 = llvm.bitcast %44 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %47 = llvm.call @__quantum__qis__u2(%5, %6, %46) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %48 = llvm.call @__quantum__qis__u1(%6, %46) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %49 = llvm.call @__quantum__qis__cnot(%34, %38) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %50 = llvm.call @__quantum__qis__cnot(%38, %34) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %51 = llvm.call @__quantum__qis__cnot(%34, %38) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %52 = llvm.call @__quantum__qis__cnot(%42, %46) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %53 = llvm.call @__quantum__qis__cnot(%46, %42) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %54 = llvm.call @__quantum__qis__cnot(%42, %46) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %55 = llvm.call @__quantum__qis__cnot(%38, %42) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %56 = llvm.call @__quantum__qis__cnot(%34, %38) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %57 = llvm.call @__quantum__qis__cnot(%38, %34) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %58 = llvm.call @__quantum__qis__cnot(%34, %38) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %59 = llvm.call @__quantum__qis__cnot(%38, %42) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %60 = llvm.call @__quantum__qis__id(%46) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %61 = llvm.call @__quantum__qis__u2(%5, %6, %34) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %62 = llvm.call @__quantum__qis__u2(%5, %6, %38) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %63 = llvm.call @__quantum__qis__u2(%5, %6, %46) : (f64, f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %64 = llvm.call @__quantum__qis__mz(%34) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %65 = llvm.bitcast %64 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %66 = llvm.load %65 : !llvm.ptr<i1>
    %67 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %68 = llvm.getelementptr %67[%7] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %66, %68 : !llvm.ptr<i1>
    %69 = llvm.call @__quantum__qis__mz(%38) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %70 = llvm.bitcast %69 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %71 = llvm.load %70 : !llvm.ptr<i1>
    %72 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %73 = llvm.getelementptr %72[%8] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %71, %73 : !llvm.ptr<i1>
    %74 = llvm.call @__quantum__qis__mz(%46) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %75 = llvm.bitcast %74 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %76 = llvm.load %75 : !llvm.ptr<i1>
    %77 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %78 = llvm.getelementptr %77[%9] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %76, %78 : !llvm.ptr<i1>
    %79 = llvm.call @__quantum__rt__qubit_release_array(%31) : (!llvm.ptr<struct<"Array", opaque>>) -> !llvm.void
    llvm.return %10 : i32
  }
  llvm.func @Bernstein_Vazirani_no_opt(%arg0: !llvm.ptr<struct<"qreg", opaque>>) -> i32 {
    %0 = llvm.call @__quantum__rt__set_external_qreg(%arg0) : (!llvm.ptr<struct<"qreg", opaque>>) -> !llvm.void
    %1 = llvm.call @__internal_mlir_Bernstein_Vazirani_no_opt() : () -> i32
    %2 = llvm.call @__quantum__rt__finalize() : () -> !llvm.void
    llvm.return %1 : i32
  }
}