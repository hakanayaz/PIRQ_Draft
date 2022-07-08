; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

%Qubit = type opaque
%qreg = type opaque
%Array = type opaque
%Result = type opaque
%Range = type { i64, i64, i64 }

declare i8* @malloc(i64 %0)

declare void @free(i8* %0)

declare void @__quantum__qis__rz(double %0, %Qubit* %1)

declare void @__quantum__qis__cnot(%Qubit* %0, %Qubit* %1)

declare void @__quantum__qis__h(%Qubit* %0)

declare void @__quantum__rt__set_external_qreg(%qreg* %0)

declare void @__quantum__rt__qubit_release_array(%Array* %0)

declare %Result* @__quantum__qis__mz(%Qubit* %0)

declare void @__quantum__qis__rx(double %0, %Qubit* %1)

declare void @__quantum__qis__ry(double %0, %Qubit* %1)

declare i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %0, i64 %1)

declare %Array* @__quantum__rt__array_slice(%Array* %0, i32 %1, %Range %2)

declare %Array* @__quantum__rt__qubit_allocate_array(i64 %0)

declare void @__quantum__rt__finalize()

declare i32 @__quantum__rt__initialize(i32 %0, i8** %1)

define i32 @main(i32 %0, i8** %1) {
  %3 = call i32 @__quantum__rt__initialize(i32 %0, i8** %1)
  %4 = call i32 @__internal_mlir_B-V_transpiled_IonTrap_qc3()
  call void @__quantum__rt__finalize()
  ret i32 %4
}

define i32 @__internal_mlir_B-V_transpiled_IonTrap_qc3() {
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
  %13 = call %Array* @__quantum__rt__qubit_allocate_array(i64 4)
  %14 = call %Array* @__quantum__rt__array_slice(%Array* %13, i32 0, %Range { i64 0, i64 1, i64 3 })
  %15 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %13, i64 0)
  %16 = bitcast i8* %15 to %Qubit**
  %17 = load %Qubit*, %Qubit** %16, align 8
  %18 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %13, i64 1)
  %19 = bitcast i8* %18 to %Qubit**
  %20 = load %Qubit*, %Qubit** %19, align 8
  %21 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %13, i64 2)
  %22 = bitcast i8* %21 to %Qubit**
  %23 = load %Qubit*, %Qubit** %22, align 8
  %24 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %13, i64 3)
  %25 = bitcast i8* %24 to %Qubit**
  %26 = load %Qubit*, %Qubit** %25, align 8
  call void @__quantum__qis__ry(double 0x3FF921FB54442D18, %Qubit* %17)
  call void @__quantum__qis__rx(double 0x400921FB54442D18, %Qubit* %17)
  call void @__quantum__qis__ry(double 0x3FF921FB54442D18, %Qubit* %20)
  call void @__quantum__qis__rx(double 0x400921FB54442D18, %Qubit* %20)
  call void @__quantum__qis__ry(double 0x3FF921FB54442D18, %Qubit* %23)
  call void @__quantum__qis__rx(double 0x400921FB54442D18, %Qubit* %23)
  call void @__quantum__qis__ry(double 0xBFF921FB54442D18, %Qubit* %26)
  call void @__quantum__qis__ry(double 0x3FF921FB54442D18, %Qubit* %17)
  call void @__quantum__qis__h(%Qubit* %17), !dbg !3
  call void @__quantum__qis__h(%Qubit* %26), !dbg !10
  call void @__quantum__qis__cnot(%Qubit* %17, %Qubit* %26), !dbg !11
  call void @__quantum__qis__rz(double 0x3FF921FB54442D18, %Qubit* %26), !dbg !12
  call void @__quantum__qis__cnot(%Qubit* %17, %Qubit* %26), !dbg !13
  call void @__quantum__qis__h(%Qubit* %26), !dbg !14
  call void @__quantum__qis__h(%Qubit* %17), !dbg !15
  %27 = insertvalue { double, %Qubit*, %Qubit* } { double 0x3FF921FB54442D18, %Qubit* undef, %Qubit* undef }, %Qubit* %17, 1
  %28 = insertvalue { double, %Qubit*, %Qubit* } %27, %Qubit* %26, 2
  %29 = extractvalue { double, %Qubit*, %Qubit* } %28, 0
  %30 = extractvalue { double, %Qubit*, %Qubit* } %28, 1
  %31 = extractvalue { double, %Qubit*, %Qubit* } %28, 2
  call void @__quantum__qis__rx(double 0xBFF921FB54442D18, %Qubit* %17)
  call void @__quantum__qis__ry(double 0xBFF921FB54442D18, %Qubit* %17)
  call void @__quantum__qis__ry(double 0x3FF921FB54442D18, %Qubit* %20)
  call void @__quantum__qis__rx(double 0xC00921FB54442D18, %Qubit* %26)
  call void @__quantum__qis__h(%Qubit* %20), !dbg !16
  call void @__quantum__qis__h(%Qubit* %26), !dbg !19
  call void @__quantum__qis__cnot(%Qubit* %20, %Qubit* %26), !dbg !20
  call void @__quantum__qis__rz(double 0x3FF921FB54442D18, %Qubit* %26), !dbg !21
  call void @__quantum__qis__cnot(%Qubit* %20, %Qubit* %26), !dbg !22
  call void @__quantum__qis__h(%Qubit* %26), !dbg !23
  call void @__quantum__qis__h(%Qubit* %20), !dbg !24
  %32 = insertvalue { double, %Qubit*, %Qubit* } { double 0x3FF921FB54442D18, %Qubit* undef, %Qubit* undef }, %Qubit* %20, 1
  %33 = insertvalue { double, %Qubit*, %Qubit* } %32, %Qubit* %26, 2
  %34 = extractvalue { double, %Qubit*, %Qubit* } %33, 0
  %35 = extractvalue { double, %Qubit*, %Qubit* } %33, 1
  %36 = extractvalue { double, %Qubit*, %Qubit* } %33, 2
  call void @__quantum__qis__rx(double 0xBFF921FB54442D18, %Qubit* %20)
  call void @__quantum__qis__ry(double 0xBFF921FB54442D18, %Qubit* %20)
  call void @__quantum__qis__ry(double 0x3FF921FB54442D18, %Qubit* %17)
  call void @__quantum__qis__rx(double 0x400921FB54442D18, %Qubit* %17)
  call void @__quantum__qis__ry(double 0x3FF921FB54442D18, %Qubit* %20)
  call void @__quantum__qis__rx(double 0x400921FB54442D18, %Qubit* %20)
  call void @__quantum__qis__ry(double 0x3FF921FB54442D18, %Qubit* %23)
  call void @__quantum__qis__rx(double 0x400921FB54442D18, %Qubit* %23)
  %37 = call %Result* @__quantum__qis__mz(%Qubit* %17)
  %38 = bitcast %Result* %37 to i1*
  %39 = load i1, i1* %38, align 1
  %40 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %6, 1
  %41 = getelementptr i1, i1* %40, i64 0
  store i1 %39, i1* %41, align 1
  %42 = call %Result* @__quantum__qis__mz(%Qubit* %20)
  %43 = bitcast %Result* %42 to i1*
  %44 = load i1, i1* %43, align 1
  %45 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %6, 1
  %46 = getelementptr i1, i1* %45, i64 1
  store i1 %44, i1* %46, align 1
  %47 = call %Result* @__quantum__qis__mz(%Qubit* %23)
  %48 = bitcast %Result* %47 to i1*
  %49 = load i1, i1* %48, align 1
  %50 = extractvalue { i1*, i1*, i64, [1 x i64], [1 x i64] } %6, 1
  %51 = getelementptr i1, i1* %50, i64 2
  store i1 %49, i1* %51, align 1
  call void @__quantum__rt__qubit_release_array(%Array* %13)
  ret i32 0
}

define i32 @B-V_transpiled_IonTrap_qc3(%qreg* %0) {
  call void @__quantum__rt__set_external_qreg(%qreg* %0)
  %2 = call i32 @__internal_mlir_B-V_transpiled_IonTrap_qc3()
  call void @__quantum__rt__finalize()
  ret i32 %2
}

define { double, %Qubit*, %Qubit* } @rxx_1693535957680(double %0, %Qubit* %1, %Qubit* %2) !dbg !6 {
  call void @__quantum__qis__h(%Qubit* %1), !dbg !3
  call void @__quantum__qis__h(%Qubit* %2), !dbg !10
  call void @__quantum__qis__cnot(%Qubit* %1, %Qubit* %2), !dbg !11
  call void @__quantum__qis__rz(double 0x3FF921FB54442D18, %Qubit* %2), !dbg !12
  call void @__quantum__qis__cnot(%Qubit* %1, %Qubit* %2), !dbg !13
  call void @__quantum__qis__h(%Qubit* %2), !dbg !14
  call void @__quantum__qis__h(%Qubit* %1), !dbg !15
  %4 = insertvalue { double, %Qubit*, %Qubit* } undef, double %0, 0
  %5 = insertvalue { double, %Qubit*, %Qubit* } %4, %Qubit* %1, 1
  %6 = insertvalue { double, %Qubit*, %Qubit* } %5, %Qubit* %2, 2
  ret { double, %Qubit*, %Qubit* } %6
}

define { double, %Qubit*, %Qubit* } @rxx_1693535959120(double %0, %Qubit* %1, %Qubit* %2) !dbg !18 {
  call void @__quantum__qis__h(%Qubit* %1), !dbg !16
  call void @__quantum__qis__h(%Qubit* %2), !dbg !19
  call void @__quantum__qis__cnot(%Qubit* %1, %Qubit* %2), !dbg !20
  call void @__quantum__qis__rz(double 0x3FF921FB54442D18, %Qubit* %2), !dbg !21
  call void @__quantum__qis__cnot(%Qubit* %1, %Qubit* %2), !dbg !22
  call void @__quantum__qis__h(%Qubit* %2), !dbg !23
  call void @__quantum__qis__h(%Qubit* %1), !dbg !24
  %4 = insertvalue { double, %Qubit*, %Qubit* } undef, double %0, 0
  %5 = insertvalue { double, %Qubit*, %Qubit* } %4, %Qubit* %1, 1
  %6 = insertvalue { double, %Qubit*, %Qubit* } %5, %Qubit* %2, 2
  ret { double, %Qubit*, %Qubit* } %6
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !DILocation(line: 4, column: 2, scope: !4)
!4 = !DILexicalBlockFile(scope: !6, file: !5, discriminator: 0)
!5 = !DIFile(filename: "B-V_transpiled_IonTrap_qc3", directory: "/home/coder/PIRQ")
!6 = distinct !DISubprogram(name: "rxx_1693535957680", linkageName: "rxx_1693535957680", scope: null, file: !7, type: !8, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!7 = !DIFile(filename: "<unknown>", directory: "/home/coder/PIRQ")
!8 = !DISubroutineType(types: !9)
!9 = !{}
!10 = !DILocation(line: 5, column: 2, scope: !4)
!11 = !DILocation(line: 6, column: 2, scope: !4)
!12 = !DILocation(line: 7, column: 2, scope: !4)
!13 = !DILocation(line: 8, column: 2, scope: !4)
!14 = !DILocation(line: 9, column: 2, scope: !4)
!15 = !DILocation(line: 10, column: 2, scope: !4)
!16 = !DILocation(line: 13, column: 2, scope: !17)
!17 = !DILexicalBlockFile(scope: !18, file: !5, discriminator: 0)
!18 = distinct !DISubprogram(name: "rxx_1693535959120", linkageName: "rxx_1693535959120", scope: null, file: !7, type: !8, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!19 = !DILocation(line: 14, column: 2, scope: !17)
!20 = !DILocation(line: 15, column: 2, scope: !17)
!21 = !DILocation(line: 16, column: 2, scope: !17)
!22 = !DILocation(line: 17, column: 2, scope: !17)
!23 = !DILocation(line: 18, column: 2, scope: !17)
!24 = !DILocation(line: 19, column: 2, scope: !17)