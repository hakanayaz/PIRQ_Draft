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

declare void @__quantum__qis__id(%Qubit* %0)

declare void @__quantum__qis__cnot(%Qubit* %0, %Qubit* %1)

declare void @__quantum__qis__u1(double %0, %Qubit* %1)

declare void @__quantum__qis__u2(double %0, double %1, %Qubit* %2)

declare i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %0, i64 %1)

declare %Array* @__quantum__rt__qubit_allocate_array(i64 %0)

declare void @__quantum__rt__finalize()

declare i32 @__quantum__rt__initialize(i32 %0, i8** %1)

define i32 @main(i32 %0, i8** %1) {
  %3 = call i32 @__quantum__rt__initialize(i32 %0, i8** %1)
  %4 = call i32 @__internal_mlir_Bernstein_Vazirani_no_opt()
  call void @__quantum__rt__finalize()
  ret i32 %4
}

define i32 @__internal_mlir_Bernstein_Vazirani_no_opt() {
  %1 = alloca i1, i64 mul (i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i64 3), align 1
  %2 = insertvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } undef, i1* %1, 0
  %3 = insertvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %2, i1* %1, 1
  %4 = insertvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %3, i64 0, 2
  %5 = insertvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %4, i64 3, 3, 0
  %6 = insertvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %5, i64 1, 4, 0
  %7 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %6, 1
  %8 = getelementptr i1, i1* %7, i64 0
  store i1 false, i1* %8, align 1
  %9 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %6, 1
  %10 = getelementptr i1, i1* %9, i64 1
  store i1 false, i1* %10, align 1
  %11 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %6, 1
  %12 = getelementptr i1, i1* %11, i64 2
  store i1 false, i1* %12, align 1
  %13 = call %Array* @__quantum__rt__qubit_allocate_array(i64 20)
  %14 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %13, i64 0)
  %15 = bitcast i8* %14 to %Qubit**
  %16 = load %Qubit*, %Qubit** %15, align 8
  call void @__quantum__qis__u2(double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %16)
  %17 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %13, i64 1)
  %18 = bitcast i8* %17 to %Qubit**
  %19 = load %Qubit*, %Qubit** %18, align 8
  call void @__quantum__qis__u2(double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %19)
  %20 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %13, i64 2)
  %21 = bitcast i8* %20 to %Qubit**
  %22 = load %Qubit*, %Qubit** %21, align 8
  call void @__quantum__qis__u2(double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %22)
  %23 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %13, i64 3)
  %24 = bitcast i8* %23 to %Qubit**
  %25 = load %Qubit*, %Qubit** %24, align 8
  call void @__quantum__qis__u2(double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %25)
  call void @__quantum__qis__u1(double 0x400921FB54442D18, %Qubit* %25)
  call void @__quantum__qis__cnot(%Qubit* %16, %Qubit* %19)
  call void @__quantum__qis__cnot(%Qubit* %19, %Qubit* %16)
  call void @__quantum__qis__cnot(%Qubit* %16, %Qubit* %19)
  call void @__quantum__qis__cnot(%Qubit* %22, %Qubit* %25)
  call void @__quantum__qis__cnot(%Qubit* %25, %Qubit* %22)
  call void @__quantum__qis__cnot(%Qubit* %22, %Qubit* %25)
  call void @__quantum__qis__cnot(%Qubit* %19, %Qubit* %22)
  call void @__quantum__qis__cnot(%Qubit* %16, %Qubit* %19)
  call void @__quantum__qis__cnot(%Qubit* %19, %Qubit* %16)
  call void @__quantum__qis__cnot(%Qubit* %16, %Qubit* %19)
  call void @__quantum__qis__cnot(%Qubit* %19, %Qubit* %22)
  call void @__quantum__qis__id(%Qubit* %25)
  call void @__quantum__qis__u2(double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %16)
  call void @__quantum__qis__u2(double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %19)
  call void @__quantum__qis__u2(double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %25)
  %26 = call %Result* @__quantum__qis__mz(%Qubit* %16)
  %27 = bitcast %Result* %26 to i1*
  %28 = load i1, i1* %27, align 1
  %29 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %6, 1
  %30 = getelementptr i1, i1* %29, i64 0
  store i1 %28, i1* %30, align 1
  %31 = call %Result* @__quantum__qis__mz(%Qubit* %19)
  %32 = bitcast %Result* %31 to i1*
  %33 = load i1, i1* %32, align 1
  %34 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %6, 1
  %35 = getelementptr i1, i1* %34, i64 1
  store i1 %33, i1* %35, align 1
  %36 = call %Result* @__quantum__qis__mz(%Qubit* %25)
  %37 = bitcast %Result* %36 to i1*
  %38 = load i1, i1* %37, align 1
  %39 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %6, 1
  %40 = getelementptr i1, i1* %39, i64 2
  store i1 %38, i1* %40, align 1
  call void @__quantum__rt__qubit_release_array(%Array* %13)
  ret i32 0
}

define i32 @Bernstein_Vazirani_no_opt(%qreg* %0) {
  call void @__quantum__rt__set_external_qreg(%qreg* %0)
  %2 = call i32 @__internal_mlir_Bernstein_Vazirani_no_opt()
  call void @__quantum__rt__finalize()
  ret i32 %2
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}