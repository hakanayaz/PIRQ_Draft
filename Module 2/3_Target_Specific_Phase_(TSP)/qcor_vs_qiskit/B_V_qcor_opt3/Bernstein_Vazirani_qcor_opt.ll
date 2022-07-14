; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

%qreg = type opaque
%Array = type opaque
%Result = type opaque
%Qubit = type opaque

declare void @__quantum__rt__set_external_qreg(%qreg* %0) local_unnamed_addr

declare void @__quantum__rt__qubit_release_array(%Array* %0) local_unnamed_addr

declare %Result* @__quantum__qis__mz(%Qubit* %0) local_unnamed_addr

declare void @__quantum__qis__id(%Qubit* %0) local_unnamed_addr

declare void @__quantum__qis__cnot(%Qubit* %0, %Qubit* %1) local_unnamed_addr

declare void @__quantum__qis__u1(double %0, %Qubit* %1) local_unnamed_addr

declare void @__quantum__qis__u2(double %0, double %1, %Qubit* %2) local_unnamed_addr

declare i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %0, i64 %1) local_unnamed_addr

declare %Array* @__quantum__rt__qubit_allocate_array(i64 %0) local_unnamed_addr

declare void @__quantum__rt__finalize() local_unnamed_addr

declare i32 @__quantum__rt__initialize(i32 %0, i8** %1) local_unnamed_addr

define i32 @main(i32 %0, i8** %1) local_unnamed_addr {
  %3 = tail call i32 @__quantum__rt__initialize(i32 %0, i8** %1)
  %4 = tail call i32 @__internal_mlir_Bernstein_Vazirani_no_opt()
  tail call void @__quantum__rt__finalize()
  ret i32 0
}

define i32 @__internal_mlir_Bernstein_Vazirani_no_opt() local_unnamed_addr {
  %1 = tail call %Array* @__quantum__rt__qubit_allocate_array(i64 20)
  %2 = tail call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %1, i64 0)
  %3 = bitcast i8* %2 to %Qubit**
  %4 = load %Qubit*, %Qubit** %3, align 8
  tail call void @__quantum__qis__u2(double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %4)
  %5 = tail call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %1, i64 1)
  %6 = bitcast i8* %5 to %Qubit**
  %7 = load %Qubit*, %Qubit** %6, align 8
  tail call void @__quantum__qis__u2(double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %7)
  %8 = tail call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %1, i64 2)
  %9 = bitcast i8* %8 to %Qubit**
  %10 = load %Qubit*, %Qubit** %9, align 8
  tail call void @__quantum__qis__u2(double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %10)
  %11 = tail call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %1, i64 3)
  %12 = bitcast i8* %11 to %Qubit**
  %13 = load %Qubit*, %Qubit** %12, align 8
  tail call void @__quantum__qis__u2(double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %13)
  tail call void @__quantum__qis__u1(double 0x400921FB54442D18, %Qubit* %13)
  tail call void @__quantum__qis__cnot(%Qubit* %4, %Qubit* %7)
  tail call void @__quantum__qis__cnot(%Qubit* %7, %Qubit* %4)
  tail call void @__quantum__qis__cnot(%Qubit* %4, %Qubit* %7)
  tail call void @__quantum__qis__cnot(%Qubit* %10, %Qubit* %13)
  tail call void @__quantum__qis__cnot(%Qubit* %13, %Qubit* %10)
  tail call void @__quantum__qis__cnot(%Qubit* %10, %Qubit* %13)
  tail call void @__quantum__qis__cnot(%Qubit* %7, %Qubit* %10)
  tail call void @__quantum__qis__cnot(%Qubit* %4, %Qubit* %7)
  tail call void @__quantum__qis__cnot(%Qubit* %7, %Qubit* %4)
  tail call void @__quantum__qis__cnot(%Qubit* %4, %Qubit* %7)
  tail call void @__quantum__qis__cnot(%Qubit* %7, %Qubit* %10)
  tail call void @__quantum__qis__id(%Qubit* %13)
  tail call void @__quantum__qis__u2(double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %4)
  tail call void @__quantum__qis__u2(double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %7)
  tail call void @__quantum__qis__u2(double 0.000000e+00, double 0x400921FB54442D18, %Qubit* %13)
  %14 = tail call %Result* @__quantum__qis__mz(%Qubit* %4)
  %15 = tail call %Result* @__quantum__qis__mz(%Qubit* %7)
  %16 = tail call %Result* @__quantum__qis__mz(%Qubit* %13)
  tail call void @__quantum__rt__qubit_release_array(%Array* %1)
  ret i32 0
}

define i32 @Bernstein_Vazirani_no_opt(%qreg* %0) local_unnamed_addr {
  tail call void @__quantum__rt__set_external_qreg(%qreg* %0)
  %2 = tail call i32 @__internal_mlir_Bernstein_Vazirani_no_opt()
  tail call void @__quantum__rt__finalize()
  ret i32 0
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}