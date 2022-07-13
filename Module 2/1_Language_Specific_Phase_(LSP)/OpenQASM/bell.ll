; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

%qreg = type opaque
%Array = type opaque
%Result = type opaque
%Qubit = type opaque

declare i8* @malloc(i64 %0)

declare void @free(i8* %0)

declare void @__quantum__rt__set_external_qreg(%qreg* %0)

declare void @__quantum__rt__qubit_release_array(%Array* %0)

declare %Result* @__quantum__qis__mz(%Qubit* %0)

declare void @__quantum__qis__cnot(%Qubit* %0, %Qubit* %1)

declare void @__quantum__qis__u3(double %0, double %1, double %2, %Qubit* %3)

declare i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %0, i64 %1)

declare %Array* @__quantum__rt__qubit_allocate_array(i64 %0)

declare void @__quantum__rt__finalize()

declare i32 @__quantum__rt__initialize(i32 %0, i8** %1)

define i32 @main(i32 %0, i8** %1) {
  %3 = call i32 @__quantum__rt__initialize(i32 %0, i8** %1)
  %4 = call i32 @__internal_mlir_bell()
  call void @__quantum__rt__finalize()
  ret i32 %4
}

define i32 @__internal_mlir_bell() {
  %1 = call %Array* @__quantum__rt__qubit_allocate_array(i64 2)
  %2 = alloca i1, i64 mul (i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i64 2), align 1
  %3 = insertvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } undef, i1* %2, 0
  %4 = insertvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %3, i1* %2, 1
  %5 = insertvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %4, i64 0, 2
  %6 = insertvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %5, i64 2, 3, 0
  %7 = insertvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %6, i64 1, 4, 0
  %8 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %7, 1
  %9 = getelementptr i1, i1* %8, i64 0
  store i1 false, i1* %9, align 1
  %10 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %7, 1
  %11 = getelementptr i1, i1* %10, i64 1
  store i1 false, i1* %11, align 1
  %12 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %1, i64 0)
  %13 = bitcast i8* %12 to %Qubit**
  %14 = load %Qubit*, %Qubit** %13, align 8
  call void @__quantum__qis__u3(double 0x3FF921FB54442D18, double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %14)
  %15 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %1, i64 1)
  %16 = bitcast i8* %15 to %Qubit**
  %17 = load %Qubit*, %Qubit** %16, align 8
  call void @__quantum__qis__cnot(%Qubit* %14, %Qubit* %17)
  %18 = call %Result* @__quantum__qis__mz(%Qubit* %14)
  %19 = bitcast %Result* %18 to i1*
  %20 = load i1, i1* %19, align 1
  %21 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %7, 1
  %22 = getelementptr i1, i1* %21, i64 0
  store i1 %20, i1* %22, align 1
  %23 = call %Result* @__quantum__qis__mz(%Qubit* %17)
  %24 = bitcast %Result* %23 to i1*
  %25 = load i1, i1* %24, align 1
  %26 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %7, 1
  %27 = getelementptr i1, i1* %26, i64 1
  store i1 %25, i1* %27, align 1
  call void @__quantum__rt__qubit_release_array(%Array* %1)
  ret i32 0
}

define i32 @bell(%qreg* %0) {
  call void @__quantum__rt__set_external_qreg(%qreg* %0)
  %2 = call i32 @__internal_mlir_bell()
  call void @__quantum__rt__finalize()
  ret i32 %2
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}