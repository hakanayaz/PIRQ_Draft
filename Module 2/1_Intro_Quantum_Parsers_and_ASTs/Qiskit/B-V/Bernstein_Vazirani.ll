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

declare void @__quantum__qis__u2(double %0, double %1, %Qubit* %2)

declare i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %0, i64 %1)

declare %Array* @__quantum__rt__qubit_allocate_array(i64 %0)

declare void @__quantum__rt__finalize()

declare i32 @__quantum__rt__initialize(i32 %0, i8** %1)

define i32 @main(i32 %0, i8** %1) {
  %3 = call i32 @__quantum__rt__initialize(i32 %0, i8** %1)
  %4 = call i32 @__internal_mlir_bernstein_vazirani2_3()
  call void @__quantum__rt__finalize()
  ret i32 %4
}

define i32 @__internal_mlir_bernstein_vazirani2_3() {
  %1 = call %Array* @__quantum__rt__qubit_allocate_array(i64 20)
  %2 = alloca i1, i64 mul (i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i64 5), align 1
  %3 = insertvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } undef, i1* %2, 0
  %4 = insertvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %3, i1* %2, 1
  %5 = insertvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %4, i64 0, 2
  %6 = insertvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %5, i64 5, 3, 0
  %7 = insertvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %6, i64 1, 4, 0
  %8 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %7, 1
  %9 = getelementptr i1, i1* %8, i64 0
  store i1 false, i1* %9, align 1
  %10 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %7, 1
  %11 = getelementptr i1, i1* %10, i64 1
  store i1 false, i1* %11, align 1
  %12 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %7, 1
  %13 = getelementptr i1, i1* %12, i64 2
  store i1 false, i1* %13, align 1
  %14 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %7, 1
  %15 = getelementptr i1, i1* %14, i64 3
  store i1 false, i1* %15, align 1
  %16 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %7, 1
  %17 = getelementptr i1, i1* %16, i64 4
  store i1 false, i1* %17, align 1
  %18 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %1, i64 8)
  %19 = bitcast i8* %18 to %Qubit**
  %20 = load %Qubit*, %Qubit** %19, align 8
  call void @__quantum__qis__u2(double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %20)
  %21 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %1, i64 3)
  %22 = bitcast i8* %21 to %Qubit**
  %23 = load %Qubit*, %Qubit** %22, align 8
  call void @__quantum__qis__cnot(%Qubit* %20, %Qubit* %23)
  %24 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %1, i64 7)
  %25 = bitcast i8* %24 to %Qubit**
  %26 = load %Qubit*, %Qubit** %25, align 8
  call void @__quantum__qis__cnot(%Qubit* %26, %Qubit* %20)
  call void @__quantum__qis__cnot(%Qubit* %20, %Qubit* %26)
  %27 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %1, i64 12)
  %28 = bitcast i8* %27 to %Qubit**
  %29 = load %Qubit*, %Qubit** %28, align 8
  call void @__quantum__qis__cnot(%Qubit* %26, %Qubit* %29)
  %30 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %1, i64 11)
  %31 = bitcast i8* %30 to %Qubit**
  %32 = load %Qubit*, %Qubit** %31, align 8
  call void @__quantum__qis__cnot(%Qubit* %32, %Qubit* %29)
  call void @__quantum__qis__cnot(%Qubit* %29, %Qubit* %32)
  call void @__quantum__qis__cnot(%Qubit* %32, %Qubit* %29)
  call void @__quantum__qis__cnot(%Qubit* %26, %Qubit* %29)
  %33 = call %Result* @__quantum__qis__mz(%Qubit* %26)
  %34 = bitcast %Result* %33 to i1*
  %35 = load i1, i1* %34, align 1
  %36 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %7, 1
  %37 = getelementptr i1, i1* %36, i64 0
  store i1 %35, i1* %37, align 1
  %38 = call %Result* @__quantum__qis__mz(%Qubit* %23)
  %39 = bitcast %Result* %38 to i1*
  %40 = load i1, i1* %39, align 1
  %41 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %7, 1
  %42 = getelementptr i1, i1* %41, i64 1
  store i1 %40, i1* %42, align 1
  %43 = call %Result* @__quantum__qis__mz(%Qubit* %32)
  %44 = bitcast %Result* %43 to i1*
  %45 = load i1, i1* %44, align 1
  %46 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %7, 1
  %47 = getelementptr i1, i1* %46, i64 2
  store i1 %45, i1* %47, align 1
  %48 = call %Result* @__quantum__qis__mz(%Qubit* %29)
  %49 = bitcast %Result* %48 to i1*
  %50 = load i1, i1* %49, align 1
  %51 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %7, 1
  %52 = getelementptr i1, i1* %51, i64 3
  store i1 %50, i1* %52, align 1
  %53 = call %Result* @__quantum__qis__mz(%Qubit* %20)
  %54 = bitcast %Result* %53 to i1*
  %55 = load i1, i1* %54, align 1
  %56 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %7, 1
  %57 = getelementptr i1, i1* %56, i64 4
  store i1 %55, i1* %57, align 1
  call void @__quantum__rt__qubit_release_array(%Array* %1)
  ret i32 0
}

define i32 @bernstein_vazirani2_3(%qreg* %0) {
  call void @__quantum__rt__set_external_qreg(%qreg* %0)
  %2 = call i32 @__internal_mlir_bernstein_vazirani2_3()
  call void @__quantum__rt__finalize()
  ret i32 %2
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}