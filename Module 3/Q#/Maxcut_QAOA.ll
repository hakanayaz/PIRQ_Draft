
%Tuple = type opaque
%Array = type opaque
%Qubit = type opaque
%Callable = type opaque
%Range = type { i64, i64, i64 }
%Result = type opaque
%String = type opaque

@PartialApplication__1__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__1__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__1__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__1__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__1__ctladj__wrapper]
@Microsoft__Quantum__Intrinsic__Rx__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__Rx__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__Rx__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__Rx__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__Rx__ctladj__wrapper]
@MemoryManagement__1__FunctionTable = internal constant [2 x void (%Tuple*, i32)*] [void (%Tuple*, i32)* @MemoryManagement__1__RefCount, void (%Tuple*, i32)* @MemoryManagement__1__AliasCount]
@PartialApplication__2__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__2__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__2__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__2__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__2__ctladj__wrapper]
@PartialApplication__3__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__3__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__3__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__3__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__3__ctladj__wrapper]
@PartialApplication__4__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__4__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__4__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__4__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__4__ctladj__wrapper]
@Microsoft__Quantum__Intrinsic__H__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__H__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__H__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__H__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__H__ctladj__wrapper]
@0 = internal constant [10 x i8] c"result = \00"
@1 = internal constant [3 x i8] c", \00"
@2 = internal constant [2 x i8] c"[\00"
@3 = internal constant [5 x i8] c"true\00"
@4 = internal constant [6 x i8] c"false\00"
@5 = internal constant [2 x i8] c"]\00"
@6 = internal constant [11 x i8] c", value = \00"
@7 = internal constant [24 x i8] c"Simulation is complete\0A\00"
@8 = internal constant [23 x i8] c"Best bitstring found: \00"
@9 = internal constant [10 x i8] c", cost = \00"
@10 = internal constant [29 x i8] c"% of runs found the max cut\0A\00"
@Microsoft__Quantum__Intrinsic__M__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__M__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* null, void (%Tuple*, %Tuple*, %Tuple*)* null, void (%Tuple*, %Tuple*, %Tuple*)* null]
@Microsoft__Quantum__Convert__ResultAsBool__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Convert__ResultAsBool__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* null, void (%Tuple*, %Tuple*, %Tuple*)* null, void (%Tuple*, %Tuple*, %Tuple*)* null]
@11 = internal constant [3 x i8] c"()\00"

define internal double @Maxcut__CalculatedVal__body(%Array* %edges, %Array* %measuredResults) {
entry:
  %finalCost = alloca double, align 8
  %0 = call i64 @__quantum__rt__array_get_size_1d(%Array* %edges)
  %1 = sub i64 %0, 1
  br label %header__1

header__1:                                        ; preds = %exiting__1, %entry
  %2 = phi i64 [ 0, %entry ], [ %7, %exiting__1 ]
  %3 = icmp sle i64 %2, %1
  br i1 %3, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %4 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edges, i64 %2)
  %5 = bitcast i8* %4 to %Array**
  %6 = load %Array*, %Array** %5, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %6, i32 1)
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %7 = add i64 %2, 1
  br label %header__1

exit__1:                                          ; preds = %header__1
  call void @__quantum__rt__array_update_alias_count(%Array* %edges, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %measuredResults, i32 1)
  store double 0.000000e+00, double* %finalCost, align 8
  %8 = sub i64 %0, 1
  br label %header__2

header__2:                                        ; preds = %exiting__2, %exit__1
  %9 = phi i64 [ 0, %exit__1 ], [ %28, %exiting__2 ]
  %10 = icmp sle i64 %9, %8
  br i1 %10, label %body__2, label %exit__2

body__2:                                          ; preds = %header__2
  %11 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edges, i64 %9)
  %12 = bitcast i8* %11 to %Array**
  %edge = load %Array*, %Array** %12, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %edge, i32 1)
  %13 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edge, i64 0)
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 4
  %16 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %measuredResults, i64 %15)
  %17 = bitcast i8* %16 to i1*
  %18 = load i1, i1* %17, align 1
  %19 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edge, i64 1)
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %measuredResults, i64 %21)
  %23 = bitcast i8* %22 to i1*
  %24 = load i1, i1* %23, align 1
  %25 = call i1 @Microsoft__Quantum__Logical__Xor__body(i1 %18, i1 %24)
  br i1 %25, label %then0__1, label %continue__1

then0__1:                                         ; preds = %body__2
  %26 = load double, double* %finalCost, align 8
  %27 = fsub double %26, 1.000000e+00
  store double %27, double* %finalCost, align 8
  br label %continue__1

continue__1:                                      ; preds = %then0__1, %body__2
  call void @__quantum__rt__array_update_alias_count(%Array* %edge, i32 -1)
  br label %exiting__2

exiting__2:                                       ; preds = %continue__1
  %28 = add i64 %9, 1
  br label %header__2

exit__2:                                          ; preds = %header__2
  %29 = load double, double* %finalCost, align 8
  %30 = sub i64 %0, 1
  br label %header__3

header__3:                                        ; preds = %exiting__3, %exit__2
  %31 = phi i64 [ 0, %exit__2 ], [ %36, %exiting__3 ]
  %32 = icmp sle i64 %31, %30
  br i1 %32, label %body__3, label %exit__3

body__3:                                          ; preds = %header__3
  %33 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edges, i64 %31)
  %34 = bitcast i8* %33 to %Array**
  %35 = load %Array*, %Array** %34, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %35, i32 -1)
  br label %exiting__3

exiting__3:                                       ; preds = %body__3
  %36 = add i64 %31, 1
  br label %header__3

exit__3:                                          ; preds = %header__3
  call void @__quantum__rt__array_update_alias_count(%Array* %edges, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %measuredResults, i32 -1)
  ret double %29
}

declare i64 @__quantum__rt__array_get_size_1d(%Array*)

declare i8* @__quantum__rt__array_get_element_ptr_1d(%Array*, i64)

declare void @__quantum__rt__array_update_alias_count(%Array*, i32)

define internal i1 @Microsoft__Quantum__Logical__Xor__body(i1 %a, i1 %b) {
entry:
  %0 = or i1 %a, %b
  br i1 %0, label %condTrue__1, label %condContinue__1

condTrue__1:                                      ; preds = %entry
  %1 = xor i1 %a, true
  %2 = xor i1 %1, true
  br i1 %2, label %condTrue__2, label %condContinue__2

condTrue__2:                                      ; preds = %condTrue__1
  %3 = xor i1 %b, true
  br label %condContinue__2

condContinue__2:                                  ; preds = %condTrue__2, %condTrue__1
  %4 = phi i1 [ %3, %condTrue__2 ], [ %1, %condTrue__1 ]
  br label %condContinue__1

condContinue__1:                                  ; preds = %condContinue__2, %entry
  %5 = phi i1 [ %4, %condContinue__2 ], [ %0, %entry ]
  ret i1 %5
}

define internal void @Maxcut__InstanceHamiltonian__body(double %gamma, %Array* %edges, %Array* %target) {
entry:
  %0 = call i64 @__quantum__rt__array_get_size_1d(%Array* %edges)
  %1 = sub i64 %0, 1
  br label %header__1

header__1:                                        ; preds = %exiting__1, %entry
  %2 = phi i64 [ 0, %entry ], [ %7, %exiting__1 ]
  %3 = icmp sle i64 %2, %1
  br i1 %3, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %4 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edges, i64 %2)
  %5 = bitcast i8* %4 to %Array**
  %6 = load %Array*, %Array** %5, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %6, i32 1)
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %7 = add i64 %2, 1
  br label %header__1

exit__1:                                          ; preds = %header__1
  call void @__quantum__rt__array_update_alias_count(%Array* %edges, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %target, i32 1)
  %8 = sub i64 %0, 1
  br label %header__2

header__2:                                        ; preds = %exiting__2, %exit__1
  %9 = phi i64 [ 0, %exit__1 ], [ %43, %exiting__2 ]
  %10 = icmp sle i64 %9, %8
  br i1 %10, label %body__2, label %exit__2

body__2:                                          ; preds = %header__2
  %11 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edges, i64 %9)
  %12 = bitcast i8* %11 to %Array**
  %edge = load %Array*, %Array** %12, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %edge, i32 1)
  %13 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edge, i64 0)
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 4
  %16 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %target, i64 %15)
  %17 = bitcast i8* %16 to %Qubit**
  %18 = load %Qubit*, %Qubit** %17, align 8
  %19 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edge, i64 1)
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %target, i64 %21)
  %23 = bitcast i8* %22 to %Qubit**
  %24 = load %Qubit*, %Qubit** %23, align 8
  call void @Microsoft__Quantum__Intrinsic__CNOT__body(%Qubit* %18, %Qubit* %24)
  %25 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edge, i64 1)
  %26 = bitcast i8* %25 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %target, i64 %27)
  %29 = bitcast i8* %28 to %Qubit**
  %30 = load %Qubit*, %Qubit** %29, align 8
  call void @Microsoft__Quantum__Intrinsic__Rz__body(double %gamma, %Qubit* %30)
  %31 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edge, i64 0)
  %32 = bitcast i8* %31 to i64*
  %33 = load i64, i64* %32, align 4
  %34 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %target, i64 %33)
  %35 = bitcast i8* %34 to %Qubit**
  %36 = load %Qubit*, %Qubit** %35, align 8
  %37 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edge, i64 1)
  %38 = bitcast i8* %37 to i64*
  %39 = load i64, i64* %38, align 4
  %40 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %target, i64 %39)
  %41 = bitcast i8* %40 to %Qubit**
  %42 = load %Qubit*, %Qubit** %41, align 8
  call void @Microsoft__Quantum__Intrinsic__CNOT__body(%Qubit* %36, %Qubit* %42)
  call void @__quantum__rt__array_update_alias_count(%Array* %edge, i32 -1)
  br label %exiting__2

exiting__2:                                       ; preds = %body__2
  %43 = add i64 %9, 1
  br label %header__2

exit__2:                                          ; preds = %header__2
  %44 = sub i64 %0, 1
  br label %header__3

header__3:                                        ; preds = %exiting__3, %exit__2
  %45 = phi i64 [ 0, %exit__2 ], [ %50, %exiting__3 ]
  %46 = icmp sle i64 %45, %44
  br i1 %46, label %body__3, label %exit__3

body__3:                                          ; preds = %header__3
  %47 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edges, i64 %45)
  %48 = bitcast i8* %47 to %Array**
  %49 = load %Array*, %Array** %48, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %49, i32 -1)
  br label %exiting__3

exiting__3:                                       ; preds = %body__3
  %50 = add i64 %45, 1
  br label %header__3

exit__3:                                          ; preds = %header__3
  call void @__quantum__rt__array_update_alias_count(%Array* %edges, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %target, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__CNOT__body(%Qubit* %control, %Qubit* %target) {
entry:
  %__controlQubits__ = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 1)
  %0 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %__controlQubits__, i64 0)
  %1 = bitcast i8* %0 to %Qubit**
  store %Qubit* %control, %Qubit** %1, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  call void @__quantum__qis__x__ctl(%Array* %__controlQubits__, %Qubit* %target)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__Rz__body(double %theta, %Qubit* %qubit) {
entry:
  call void @__quantum__qis__r__body(i2 -2, double %theta, %Qubit* %qubit)
  ret void
}

define internal void @Maxcut__MixerHamiltonian__body(double %beta, %Array* %target) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %target, i32 1)
  %0 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Intrinsic__Rx__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %1 = fmul double -2.000000e+00, %beta
  %2 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, double }* getelementptr ({ %Callable*, double }, { %Callable*, double }* null, i32 1) to i64))
  %3 = bitcast %Tuple* %2 to { %Callable*, double }*
  %4 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %3, i32 0, i32 0
  %5 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %3, i32 0, i32 1
  store %Callable* %0, %Callable** %4, align 8
  store double %1, double* %5, align 8
  %6 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__1__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__1__FunctionTable, %Tuple* %2)
  call void @Microsoft__Quantum__Canon___cabda6aec895469d9c3c1b00f9be0bee_ApplyToEachCA__body(%Callable* %6, %Array* %target)
  call void @__quantum__rt__array_update_alias_count(%Array* %target, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %6, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %6, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__Canon___cabda6aec895469d9c3c1b00f9be0bee_ApplyToEachCA__body(%Callable* %singleElementOperation, %Array* %register) {
entry:
  call void @__quantum__rt__capture_update_alias_count(%Callable* %singleElementOperation, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %singleElementOperation, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %register, i32 1)
  %0 = call %Range @Microsoft__Quantum__Arrays___b8684c973fa94eb6827e0435b3cc6021_IndexRange__body(%Array* %register)
  %1 = extractvalue %Range %0, 0
  %2 = extractvalue %Range %0, 1
  %3 = extractvalue %Range %0, 2
  br label %preheader__1

preheader__1:                                     ; preds = %entry
  %4 = icmp sgt i64 %2, 0
  br label %header__1

header__1:                                        ; preds = %exiting__1, %preheader__1
  %idxQubit = phi i64 [ %1, %preheader__1 ], [ %14, %exiting__1 ]
  %5 = icmp sle i64 %idxQubit, %3
  %6 = icmp sge i64 %idxQubit, %3
  %7 = select i1 %4, i1 %5, i1 %6
  br i1 %7, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %8 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %register, i64 %idxQubit)
  %9 = bitcast i8* %8 to %Qubit**
  %10 = load %Qubit*, %Qubit** %9, align 8
  %11 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Qubit* }* getelementptr ({ %Qubit* }, { %Qubit* }* null, i32 1) to i64))
  %12 = bitcast %Tuple* %11 to { %Qubit* }*
  %13 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %12, i32 0, i32 0
  store %Qubit* %10, %Qubit** %13, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %singleElementOperation, %Tuple* %11, %Tuple* null)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %11, i32 -1)
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %14 = add i64 %idxQubit, %2
  br label %header__1

exit__1:                                          ; preds = %header__1
  call void @__quantum__rt__capture_update_alias_count(%Callable* %singleElementOperation, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %singleElementOperation, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %register, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__1__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %1 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 1
  %2 = load double, double* %1, align 8
  %3 = bitcast %Tuple* %arg-tuple to { %Qubit* }*
  %4 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %3, i32 0, i32 0
  %5 = load %Qubit*, %Qubit** %4, align 8
  %6 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %7 = bitcast %Tuple* %6 to { double, %Qubit* }*
  %8 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 0
  %9 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 1
  store double %2, double* %8, align 8
  store %Qubit* %5, %Qubit** %9, align 8
  %10 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %11, %Tuple* %6, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %6, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__1__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %1 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 1
  %2 = load double, double* %1, align 8
  %3 = bitcast %Tuple* %arg-tuple to { %Qubit* }*
  %4 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %3, i32 0, i32 0
  %5 = load %Qubit*, %Qubit** %4, align 8
  %6 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %7 = bitcast %Tuple* %6 to { double, %Qubit* }*
  %8 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 0
  %9 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 1
  store double %2, double* %8, align 8
  store %Qubit* %5, %Qubit** %9, align 8
  %10 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  %12 = call %Callable* @__quantum__rt__callable_copy(%Callable* %11, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %12)
  call void @__quantum__rt__callable_invoke(%Callable* %12, %Tuple* %6, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %6, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %12, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__1__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Qubit* }*
  %1 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Qubit*, %Qubit** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %6 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { double, %Qubit* }*
  %10 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 1
  store double %7, double* %10, align 8
  store %Qubit* %4, %Qubit** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { double, %Qubit* }* }* getelementptr ({ %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { double, %Qubit* }* }*
  %14 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { double, %Qubit* }* %9, { double, %Qubit* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 0
  %17 = load %Callable*, %Callable** %16, align 8
  %18 = call %Callable* @__quantum__rt__callable_copy(%Callable* %17, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %18)
  call void @__quantum__rt__callable_invoke(%Callable* %18, %Tuple* %12, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %8, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %12, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %18, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__1__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Qubit* }*
  %1 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Qubit*, %Qubit** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %6 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { double, %Qubit* }*
  %10 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 1
  store double %7, double* %10, align 8
  store %Qubit* %4, %Qubit** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { double, %Qubit* }* }* getelementptr ({ %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { double, %Qubit* }* }*
  %14 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { double, %Qubit* }* %9, { double, %Qubit* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 0
  %17 = load %Callable*, %Callable** %16, align 8
  %18 = call %Callable* @__quantum__rt__callable_copy(%Callable* %17, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %18)
  call void @__quantum__rt__callable_make_controlled(%Callable* %18)
  call void @__quantum__rt__callable_invoke(%Callable* %18, %Tuple* %12, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %8, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %12, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %18, i32 -1)
  ret void
}

declare %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]*, [2 x void (%Tuple*, i32)*]*, %Tuple*)

define internal void @Microsoft__Quantum__Intrinsic__Rx__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { double, %Qubit* }*
  %1 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %0, i32 0, i32 1
  %3 = load double, double* %1, align 8
  %4 = load %Qubit*, %Qubit** %2, align 8
  call void @Microsoft__Quantum__Intrinsic__Rx__body(double %3, %Qubit* %4)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__Rx__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { double, %Qubit* }*
  %1 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %0, i32 0, i32 1
  %3 = load double, double* %1, align 8
  %4 = load %Qubit*, %Qubit** %2, align 8
  call void @Microsoft__Quantum__Intrinsic__Rx__adj(double %3, %Qubit* %4)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__Rx__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, { double, %Qubit* }* }*
  %1 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load { double, %Qubit* }*, { double, %Qubit* }** %2, align 8
  call void @Microsoft__Quantum__Intrinsic__Rx__ctl(%Array* %3, { double, %Qubit* }* %4)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__Rx__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, { double, %Qubit* }* }*
  %1 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load { double, %Qubit* }*, { double, %Qubit* }** %2, align 8
  call void @Microsoft__Quantum__Intrinsic__Rx__ctladj(%Array* %3, { double, %Qubit* }* %4)
  ret void
}

declare %Tuple* @__quantum__rt__tuple_create(i64)

define internal void @MemoryManagement__1__RefCount(%Tuple* %capture-tuple, i32 %count-change) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %1 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 0
  %2 = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_reference_count(%Callable* %2, i32 %count-change)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %2, i32 %count-change)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %capture-tuple, i32 %count-change)
  ret void
}

define internal void @MemoryManagement__1__AliasCount(%Tuple* %capture-tuple, i32 %count-change) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %1 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 0
  %2 = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %2, i32 %count-change)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %2, i32 %count-change)
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %capture-tuple, i32 %count-change)
  ret void
}

declare void @__quantum__rt__capture_update_reference_count(%Callable*, i32)

declare void @__quantum__rt__callable_update_reference_count(%Callable*, i32)

define internal void @Microsoft__Quantum__Intrinsic__Rx__body(double %theta, %Qubit* %qubit) {
entry:
  call void @__quantum__qis__r__body(i2 1, double %theta, %Qubit* %qubit)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__Rx__adj(double %theta, %Qubit* %qubit) {
entry:
  %theta__1 = fneg double %theta
  call void @__quantum__qis__r__body(i2 1, double %theta__1, %Qubit* %qubit)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__Rx__ctl(%Array* %__controlQubits__, { double, %Qubit* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %0, i32 0, i32 0
  %theta = load double, double* %1, align 8
  %2 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %0, i32 0, i32 1
  %qubit = load %Qubit*, %Qubit** %2, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %3 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ i2, double, %Qubit* }* getelementptr ({ i2, double, %Qubit* }, { i2, double, %Qubit* }* null, i32 1) to i64))
  %4 = bitcast %Tuple* %3 to { i2, double, %Qubit* }*
  %5 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %4, i32 0, i32 0
  %6 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %4, i32 0, i32 1
  %7 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %4, i32 0, i32 2
  store i2 1, i2* %5, align 1
  store double %theta, double* %6, align 8
  store %Qubit* %qubit, %Qubit** %7, align 8
  call void @__quantum__qis__r__ctl(%Array* %__controlQubits__, { i2, double, %Qubit* }* %4)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %3, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__Rx__ctladj(%Array* %__controlQubits__, { double, %Qubit* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %0, i32 0, i32 0
  %theta = load double, double* %1, align 8
  %2 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %0, i32 0, i32 1
  %qubit = load %Qubit*, %Qubit** %2, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %theta__1 = fneg double %theta
  %3 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ i2, double, %Qubit* }* getelementptr ({ i2, double, %Qubit* }, { i2, double, %Qubit* }* null, i32 1) to i64))
  %4 = bitcast %Tuple* %3 to { i2, double, %Qubit* }*
  %5 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %4, i32 0, i32 0
  %6 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %4, i32 0, i32 1
  %7 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %4, i32 0, i32 2
  store i2 1, i2* %5, align 1
  store double %theta__1, double* %6, align 8
  store %Qubit* %qubit, %Qubit** %7, align 8
  call void @__quantum__qis__r__ctl(%Array* %__controlQubits__, { i2, double, %Qubit* }* %4)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %3, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  ret void
}

declare void @__quantum__rt__callable_invoke(%Callable*, %Tuple*, %Tuple*)

declare void @__quantum__rt__tuple_update_reference_count(%Tuple*, i32)

declare %Callable* @__quantum__rt__callable_copy(%Callable*, i1)

declare void @__quantum__rt__callable_make_adjoint(%Callable*)

declare void @__quantum__rt__callable_make_controlled(%Callable*)

declare void @__quantum__rt__capture_update_alias_count(%Callable*, i32)

declare void @__quantum__rt__callable_update_alias_count(%Callable*, i32)

declare void @__quantum__rt__tuple_update_alias_count(%Tuple*, i32)

define internal void @Maxcut__MixerHamiltonian__adj(double %beta, %Array* %target) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %target, i32 1)
  %0 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Intrinsic__Rx__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %1 = fmul double -2.000000e+00, %beta
  %2 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, double }* getelementptr ({ %Callable*, double }, { %Callable*, double }* null, i32 1) to i64))
  %3 = bitcast %Tuple* %2 to { %Callable*, double }*
  %4 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %3, i32 0, i32 0
  %5 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %3, i32 0, i32 1
  store %Callable* %0, %Callable** %4, align 8
  store double %1, double* %5, align 8
  %6 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__2__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__1__FunctionTable, %Tuple* %2)
  call void @Microsoft__Quantum__Canon___cabda6aec895469d9c3c1b00f9be0bee_ApplyToEachCA__adj(%Callable* %6, %Array* %target)
  call void @__quantum__rt__array_update_alias_count(%Array* %target, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %6, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %6, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__Canon___cabda6aec895469d9c3c1b00f9be0bee_ApplyToEachCA__adj(%Callable* %singleElementOperation, %Array* %register) {
entry:
  call void @__quantum__rt__capture_update_alias_count(%Callable* %singleElementOperation, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %singleElementOperation, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %register, i32 1)
  %0 = call %Range @Microsoft__Quantum__Arrays___b8684c973fa94eb6827e0435b3cc6021_IndexRange__body(%Array* %register)
  %1 = extractvalue %Range %0, 0
  %2 = extractvalue %Range %0, 1
  %3 = extractvalue %Range %0, 2
  %4 = sub i64 %3, %1
  %5 = sdiv i64 %4, %2
  %6 = mul i64 %2, %5
  %7 = add i64 %1, %6
  %8 = sub i64 0, %2
  %9 = insertvalue %Range zeroinitializer, i64 %7, 0
  %10 = insertvalue %Range %9, i64 %8, 1
  %11 = insertvalue %Range %10, i64 %1, 2
  %12 = extractvalue %Range %11, 0
  %13 = extractvalue %Range %11, 1
  %14 = extractvalue %Range %11, 2
  br label %preheader__1

preheader__1:                                     ; preds = %entry
  %15 = icmp sgt i64 %13, 0
  br label %header__1

header__1:                                        ; preds = %exiting__1, %preheader__1
  %__qsVar0__idxQubit__ = phi i64 [ %12, %preheader__1 ], [ %26, %exiting__1 ]
  %16 = icmp sle i64 %__qsVar0__idxQubit__, %14
  %17 = icmp sge i64 %__qsVar0__idxQubit__, %14
  %18 = select i1 %15, i1 %16, i1 %17
  br i1 %18, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %19 = call %Callable* @__quantum__rt__callable_copy(%Callable* %singleElementOperation, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %19, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %19)
  %20 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %register, i64 %__qsVar0__idxQubit__)
  %21 = bitcast i8* %20 to %Qubit**
  %22 = load %Qubit*, %Qubit** %21, align 8
  %23 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Qubit* }* getelementptr ({ %Qubit* }, { %Qubit* }* null, i32 1) to i64))
  %24 = bitcast %Tuple* %23 to { %Qubit* }*
  %25 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %24, i32 0, i32 0
  store %Qubit* %22, %Qubit** %25, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %19, %Tuple* %23, %Tuple* null)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %19, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %19, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %23, i32 -1)
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %26 = add i64 %__qsVar0__idxQubit__, %13
  br label %header__1

exit__1:                                          ; preds = %header__1
  call void @__quantum__rt__capture_update_alias_count(%Callable* %singleElementOperation, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %singleElementOperation, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %register, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__2__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %1 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 1
  %2 = load double, double* %1, align 8
  %3 = bitcast %Tuple* %arg-tuple to { %Qubit* }*
  %4 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %3, i32 0, i32 0
  %5 = load %Qubit*, %Qubit** %4, align 8
  %6 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %7 = bitcast %Tuple* %6 to { double, %Qubit* }*
  %8 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 0
  %9 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 1
  store double %2, double* %8, align 8
  store %Qubit* %5, %Qubit** %9, align 8
  %10 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %11, %Tuple* %6, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %6, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__2__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %1 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 1
  %2 = load double, double* %1, align 8
  %3 = bitcast %Tuple* %arg-tuple to { %Qubit* }*
  %4 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %3, i32 0, i32 0
  %5 = load %Qubit*, %Qubit** %4, align 8
  %6 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %7 = bitcast %Tuple* %6 to { double, %Qubit* }*
  %8 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 0
  %9 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 1
  store double %2, double* %8, align 8
  store %Qubit* %5, %Qubit** %9, align 8
  %10 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  %12 = call %Callable* @__quantum__rt__callable_copy(%Callable* %11, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %12)
  call void @__quantum__rt__callable_invoke(%Callable* %12, %Tuple* %6, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %6, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %12, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__2__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Qubit* }*
  %1 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Qubit*, %Qubit** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %6 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { double, %Qubit* }*
  %10 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 1
  store double %7, double* %10, align 8
  store %Qubit* %4, %Qubit** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { double, %Qubit* }* }* getelementptr ({ %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { double, %Qubit* }* }*
  %14 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { double, %Qubit* }* %9, { double, %Qubit* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 0
  %17 = load %Callable*, %Callable** %16, align 8
  %18 = call %Callable* @__quantum__rt__callable_copy(%Callable* %17, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %18)
  call void @__quantum__rt__callable_invoke(%Callable* %18, %Tuple* %12, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %8, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %12, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %18, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__2__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Qubit* }*
  %1 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Qubit*, %Qubit** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %6 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { double, %Qubit* }*
  %10 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 1
  store double %7, double* %10, align 8
  store %Qubit* %4, %Qubit** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { double, %Qubit* }* }* getelementptr ({ %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { double, %Qubit* }* }*
  %14 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { double, %Qubit* }* %9, { double, %Qubit* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 0
  %17 = load %Callable*, %Callable** %16, align 8
  %18 = call %Callable* @__quantum__rt__callable_copy(%Callable* %17, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %18)
  call void @__quantum__rt__callable_make_controlled(%Callable* %18)
  call void @__quantum__rt__callable_invoke(%Callable* %18, %Tuple* %12, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %8, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %12, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %18, i32 -1)
  ret void
}

define internal void @Maxcut__MixerHamiltonian__ctl(%Array* %__controlQubits__, { double, %Array* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { double, %Array* }, { double, %Array* }* %0, i32 0, i32 0
  %beta = load double, double* %1, align 8
  %2 = getelementptr inbounds { double, %Array* }, { double, %Array* }* %0, i32 0, i32 1
  %target = load %Array*, %Array** %2, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %target, i32 1)
  %3 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Intrinsic__Rx__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %4 = fmul double -2.000000e+00, %beta
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, double }* getelementptr ({ %Callable*, double }, { %Callable*, double }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, double }*
  %7 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %6, i32 0, i32 1
  store %Callable* %3, %Callable** %7, align 8
  store double %4, double* %8, align 8
  %9 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__3__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__1__FunctionTable, %Tuple* %5)
  call void @__quantum__rt__array_update_reference_count(%Array* %target, i32 1)
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Array* }* getelementptr ({ %Callable*, %Array* }, { %Callable*, %Array* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Array* }*
  %12 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %11, i32 0, i32 1
  store %Callable* %9, %Callable** %12, align 8
  store %Array* %target, %Array** %13, align 8
  call void @Microsoft__Quantum__Canon___cabda6aec895469d9c3c1b00f9be0bee_ApplyToEachCA__ctl(%Array* %__controlQubits__, { %Callable*, %Array* }* %11)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %target, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %9, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %9, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %target, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__Canon___cabda6aec895469d9c3c1b00f9be0bee_ApplyToEachCA__ctl(%Array* %__controlQubits__, { %Callable*, %Array* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 0
  %singleElementOperation = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %singleElementOperation, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %singleElementOperation, i32 1)
  %2 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 1
  %register = load %Array*, %Array** %2, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %register, i32 1)
  %3 = call %Range @Microsoft__Quantum__Arrays___b8684c973fa94eb6827e0435b3cc6021_IndexRange__body(%Array* %register)
  %4 = extractvalue %Range %3, 0
  %5 = extractvalue %Range %3, 1
  %6 = extractvalue %Range %3, 2
  br label %preheader__1

preheader__1:                                     ; preds = %entry
  %7 = icmp sgt i64 %5, 0
  br label %header__1

header__1:                                        ; preds = %exiting__1, %preheader__1
  %idxQubit = phi i64 [ %4, %preheader__1 ], [ %19, %exiting__1 ]
  %8 = icmp sle i64 %idxQubit, %6
  %9 = icmp sge i64 %idxQubit, %6
  %10 = select i1 %7, i1 %8, i1 %9
  br i1 %10, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %11 = call %Callable* @__quantum__rt__callable_copy(%Callable* %singleElementOperation, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %11, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %11)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__, i32 1)
  %12 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %register, i64 %idxQubit)
  %13 = bitcast i8* %12 to %Qubit**
  %14 = load %Qubit*, %Qubit** %13, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Qubit* }* getelementptr ({ %Array*, %Qubit* }, { %Array*, %Qubit* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, %Qubit* }*
  %17 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %16, i32 0, i32 1
  store %Array* %__controlQubits__, %Array** %17, align 8
  store %Qubit* %14, %Qubit** %18, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %11, %Tuple* %15, %Tuple* null)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %11, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %11, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %19 = add i64 %idxQubit, %5
  br label %header__1

exit__1:                                          ; preds = %header__1
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %singleElementOperation, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %singleElementOperation, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %register, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__3__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %1 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 1
  %2 = load double, double* %1, align 8
  %3 = bitcast %Tuple* %arg-tuple to { %Qubit* }*
  %4 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %3, i32 0, i32 0
  %5 = load %Qubit*, %Qubit** %4, align 8
  %6 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %7 = bitcast %Tuple* %6 to { double, %Qubit* }*
  %8 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 0
  %9 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 1
  store double %2, double* %8, align 8
  store %Qubit* %5, %Qubit** %9, align 8
  %10 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %11, %Tuple* %6, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %6, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__3__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %1 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 1
  %2 = load double, double* %1, align 8
  %3 = bitcast %Tuple* %arg-tuple to { %Qubit* }*
  %4 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %3, i32 0, i32 0
  %5 = load %Qubit*, %Qubit** %4, align 8
  %6 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %7 = bitcast %Tuple* %6 to { double, %Qubit* }*
  %8 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 0
  %9 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 1
  store double %2, double* %8, align 8
  store %Qubit* %5, %Qubit** %9, align 8
  %10 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  %12 = call %Callable* @__quantum__rt__callable_copy(%Callable* %11, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %12)
  call void @__quantum__rt__callable_invoke(%Callable* %12, %Tuple* %6, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %6, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %12, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__3__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Qubit* }*
  %1 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Qubit*, %Qubit** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %6 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { double, %Qubit* }*
  %10 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 1
  store double %7, double* %10, align 8
  store %Qubit* %4, %Qubit** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { double, %Qubit* }* }* getelementptr ({ %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { double, %Qubit* }* }*
  %14 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { double, %Qubit* }* %9, { double, %Qubit* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 0
  %17 = load %Callable*, %Callable** %16, align 8
  %18 = call %Callable* @__quantum__rt__callable_copy(%Callable* %17, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %18)
  call void @__quantum__rt__callable_invoke(%Callable* %18, %Tuple* %12, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %8, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %12, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %18, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__3__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Qubit* }*
  %1 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Qubit*, %Qubit** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %6 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { double, %Qubit* }*
  %10 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 1
  store double %7, double* %10, align 8
  store %Qubit* %4, %Qubit** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { double, %Qubit* }* }* getelementptr ({ %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { double, %Qubit* }* }*
  %14 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { double, %Qubit* }* %9, { double, %Qubit* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 0
  %17 = load %Callable*, %Callable** %16, align 8
  %18 = call %Callable* @__quantum__rt__callable_copy(%Callable* %17, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %18)
  call void @__quantum__rt__callable_make_controlled(%Callable* %18)
  call void @__quantum__rt__callable_invoke(%Callable* %18, %Tuple* %12, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %8, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %12, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %18, i32 -1)
  ret void
}

declare void @__quantum__rt__array_update_reference_count(%Array*, i32)

define internal void @Maxcut__MixerHamiltonian__ctladj(%Array* %__controlQubits__, { double, %Array* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { double, %Array* }, { double, %Array* }* %0, i32 0, i32 0
  %beta = load double, double* %1, align 8
  %2 = getelementptr inbounds { double, %Array* }, { double, %Array* }* %0, i32 0, i32 1
  %target = load %Array*, %Array** %2, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %target, i32 1)
  %3 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Intrinsic__Rx__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %4 = fmul double -2.000000e+00, %beta
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, double }* getelementptr ({ %Callable*, double }, { %Callable*, double }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, double }*
  %7 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %6, i32 0, i32 1
  store %Callable* %3, %Callable** %7, align 8
  store double %4, double* %8, align 8
  %9 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__4__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__1__FunctionTable, %Tuple* %5)
  call void @__quantum__rt__array_update_reference_count(%Array* %target, i32 1)
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Array* }* getelementptr ({ %Callable*, %Array* }, { %Callable*, %Array* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Array* }*
  %12 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %11, i32 0, i32 1
  store %Callable* %9, %Callable** %12, align 8
  store %Array* %target, %Array** %13, align 8
  call void @Microsoft__Quantum__Canon___cabda6aec895469d9c3c1b00f9be0bee_ApplyToEachCA__ctladj(%Array* %__controlQubits__, { %Callable*, %Array* }* %11)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %target, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %9, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %9, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %target, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__Canon___cabda6aec895469d9c3c1b00f9be0bee_ApplyToEachCA__ctladj(%Array* %__controlQubits__, { %Callable*, %Array* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 0
  %singleElementOperation = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %singleElementOperation, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %singleElementOperation, i32 1)
  %2 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 1
  %register = load %Array*, %Array** %2, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %register, i32 1)
  %3 = call %Range @Microsoft__Quantum__Arrays___b8684c973fa94eb6827e0435b3cc6021_IndexRange__body(%Array* %register)
  %4 = extractvalue %Range %3, 0
  %5 = extractvalue %Range %3, 1
  %6 = extractvalue %Range %3, 2
  %7 = sub i64 %6, %4
  %8 = sdiv i64 %7, %5
  %9 = mul i64 %5, %8
  %10 = add i64 %4, %9
  %11 = sub i64 0, %5
  %12 = insertvalue %Range zeroinitializer, i64 %10, 0
  %13 = insertvalue %Range %12, i64 %11, 1
  %14 = insertvalue %Range %13, i64 %4, 2
  %15 = extractvalue %Range %14, 0
  %16 = extractvalue %Range %14, 1
  %17 = extractvalue %Range %14, 2
  br label %preheader__1

preheader__1:                                     ; preds = %entry
  %18 = icmp sgt i64 %16, 0
  br label %header__1

header__1:                                        ; preds = %exiting__1, %preheader__1
  %__qsVar0__idxQubit__ = phi i64 [ %15, %preheader__1 ], [ %30, %exiting__1 ]
  %19 = icmp sle i64 %__qsVar0__idxQubit__, %17
  %20 = icmp sge i64 %__qsVar0__idxQubit__, %17
  %21 = select i1 %18, i1 %19, i1 %20
  br i1 %21, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %22 = call %Callable* @__quantum__rt__callable_copy(%Callable* %singleElementOperation, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %22, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %22)
  call void @__quantum__rt__callable_make_controlled(%Callable* %22)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__, i32 1)
  %23 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %register, i64 %__qsVar0__idxQubit__)
  %24 = bitcast i8* %23 to %Qubit**
  %25 = load %Qubit*, %Qubit** %24, align 8
  %26 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Qubit* }* getelementptr ({ %Array*, %Qubit* }, { %Array*, %Qubit* }* null, i32 1) to i64))
  %27 = bitcast %Tuple* %26 to { %Array*, %Qubit* }*
  %28 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %27, i32 0, i32 0
  %29 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %27, i32 0, i32 1
  store %Array* %__controlQubits__, %Array** %28, align 8
  store %Qubit* %25, %Qubit** %29, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %22, %Tuple* %26, %Tuple* null)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %22, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %22, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %26, i32 -1)
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %30 = add i64 %__qsVar0__idxQubit__, %16
  br label %header__1

exit__1:                                          ; preds = %header__1
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %singleElementOperation, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %singleElementOperation, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %register, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__4__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %1 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 1
  %2 = load double, double* %1, align 8
  %3 = bitcast %Tuple* %arg-tuple to { %Qubit* }*
  %4 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %3, i32 0, i32 0
  %5 = load %Qubit*, %Qubit** %4, align 8
  %6 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %7 = bitcast %Tuple* %6 to { double, %Qubit* }*
  %8 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 0
  %9 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 1
  store double %2, double* %8, align 8
  store %Qubit* %5, %Qubit** %9, align 8
  %10 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %11, %Tuple* %6, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %6, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__4__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %1 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 1
  %2 = load double, double* %1, align 8
  %3 = bitcast %Tuple* %arg-tuple to { %Qubit* }*
  %4 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %3, i32 0, i32 0
  %5 = load %Qubit*, %Qubit** %4, align 8
  %6 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %7 = bitcast %Tuple* %6 to { double, %Qubit* }*
  %8 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 0
  %9 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %7, i32 0, i32 1
  store double %2, double* %8, align 8
  store %Qubit* %5, %Qubit** %9, align 8
  %10 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  %12 = call %Callable* @__quantum__rt__callable_copy(%Callable* %11, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %12)
  call void @__quantum__rt__callable_invoke(%Callable* %12, %Tuple* %6, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %6, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %12, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__4__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Qubit* }*
  %1 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Qubit*, %Qubit** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %6 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { double, %Qubit* }*
  %10 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 1
  store double %7, double* %10, align 8
  store %Qubit* %4, %Qubit** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { double, %Qubit* }* }* getelementptr ({ %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { double, %Qubit* }* }*
  %14 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { double, %Qubit* }* %9, { double, %Qubit* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 0
  %17 = load %Callable*, %Callable** %16, align 8
  %18 = call %Callable* @__quantum__rt__callable_copy(%Callable* %17, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %18)
  call void @__quantum__rt__callable_invoke(%Callable* %18, %Tuple* %12, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %8, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %12, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %18, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__4__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Qubit* }*
  %1 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Qubit*, %Qubit** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, double }*
  %6 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, %Qubit* }* getelementptr ({ double, %Qubit* }, { double, %Qubit* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { double, %Qubit* }*
  %10 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %9, i32 0, i32 1
  store double %7, double* %10, align 8
  store %Qubit* %4, %Qubit** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { double, %Qubit* }* }* getelementptr ({ %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { double, %Qubit* }* }*
  %14 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { double, %Qubit* }* }, { %Array*, { double, %Qubit* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { double, %Qubit* }* %9, { double, %Qubit* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, double }, { %Callable*, double }* %5, i32 0, i32 0
  %17 = load %Callable*, %Callable** %16, align 8
  %18 = call %Callable* @__quantum__rt__callable_copy(%Callable* %17, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %18)
  call void @__quantum__rt__callable_make_controlled(%Callable* %18)
  call void @__quantum__rt__callable_invoke(%Callable* %18, %Tuple* %12, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %8, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %12, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %18, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %18, i32 -1)
  ret void
}

define internal %Array* @Maxcut__PerformQAOA__body(i64 %numVertices, %Array* %edges, %Array* %betas, %Array* %gammas) {
entry:
  %result = alloca %Array*, align 8
  %0 = call i64 @__quantum__rt__array_get_size_1d(%Array* %edges)
  %1 = sub i64 %0, 1
  br label %header__1

header__1:                                        ; preds = %exiting__1, %entry
  %2 = phi i64 [ 0, %entry ], [ %7, %exiting__1 ]
  %3 = icmp sle i64 %2, %1
  br i1 %3, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %4 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edges, i64 %2)
  %5 = bitcast i8* %4 to %Array**
  %6 = load %Array*, %Array** %5, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %6, i32 1)
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %7 = add i64 %2, 1
  br label %header__1

exit__1:                                          ; preds = %header__1
  call void @__quantum__rt__array_update_alias_count(%Array* %edges, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %betas, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %gammas, i32 1)
  %8 = call %Array* @__quantum__rt__array_create_1d(i32 1, i64 %numVertices)
  %9 = sub i64 %numVertices, 1
  br label %header__2

header__2:                                        ; preds = %exiting__2, %exit__1
  %10 = phi i64 [ 0, %exit__1 ], [ %14, %exiting__2 ]
  %11 = icmp sle i64 %10, %9
  br i1 %11, label %body__2, label %exit__2

body__2:                                          ; preds = %header__2
  %12 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %8, i64 %10)
  %13 = bitcast i8* %12 to i1*
  store i1 false, i1* %13, align 1
  br label %exiting__2

exiting__2:                                       ; preds = %body__2
  %14 = add i64 %10, 1
  br label %header__2

exit__2:                                          ; preds = %header__2
  store %Array* %8, %Array** %result, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %8, i32 1)
  %bitString = call %Array* @__quantum__rt__qubit_allocate_array(i64 %numVertices)
  call void @__quantum__rt__array_update_alias_count(%Array* %bitString, i32 1)
  %15 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Intrinsic__H__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  call void @Microsoft__Quantum__Canon___73a395c531ec4129926f9fc76b7c4ed5_ApplyToEach__body(%Callable* %15, %Array* %bitString)
  %16 = call %Array* @Microsoft__Quantum__Arrays___b13ad8447aef4bf39029aafcab01e484_Zipped__body(%Array* %betas, %Array* %gammas)
  %17 = call i64 @__quantum__rt__array_get_size_1d(%Array* %16)
  %18 = sub i64 %17, 1
  br label %header__3

header__3:                                        ; preds = %exiting__3, %exit__2
  %19 = phi i64 [ 0, %exit__2 ], [ %26, %exiting__3 ]
  %20 = icmp sle i64 %19, %18
  br i1 %20, label %body__3, label %exit__3

body__3:                                          ; preds = %header__3
  %21 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %16, i64 %19)
  %22 = bitcast i8* %21 to { double, double }**
  %23 = load { double, double }*, { double, double }** %22, align 8
  %24 = getelementptr inbounds { double, double }, { double, double }* %23, i32 0, i32 0
  %beta = load double, double* %24, align 8
  %25 = getelementptr inbounds { double, double }, { double, double }* %23, i32 0, i32 1
  %gamma = load double, double* %25, align 8
  call void @Maxcut__InstanceHamiltonian__body(double %gamma, %Array* %edges, %Array* %bitString)
  call void @Maxcut__MixerHamiltonian__body(double %beta, %Array* %bitString)
  br label %exiting__3

exiting__3:                                       ; preds = %body__3
  %26 = add i64 %19, 1
  br label %header__3

exit__3:                                          ; preds = %header__3
  %27 = call %Array* @Microsoft__Quantum__Measurement__MultiM__body(%Array* %bitString)
  %28 = call %Array* @Microsoft__Quantum__Convert__ResultArrayAsBoolArray__body(%Array* %27)
  call void @__quantum__rt__array_update_alias_count(%Array* %bitString, i32 -1)
  %29 = sub i64 %0, 1
  br label %header__4

header__4:                                        ; preds = %exiting__4, %exit__3
  %30 = phi i64 [ 0, %exit__3 ], [ %35, %exiting__4 ]
  %31 = icmp sle i64 %30, %29
  br i1 %31, label %body__4, label %exit__4

body__4:                                          ; preds = %header__4
  %32 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edges, i64 %30)
  %33 = bitcast i8* %32 to %Array**
  %34 = load %Array*, %Array** %33, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %34, i32 -1)
  br label %exiting__4

exiting__4:                                       ; preds = %body__4
  %35 = add i64 %30, 1
  br label %header__4

exit__4:                                          ; preds = %header__4
  call void @__quantum__rt__array_update_alias_count(%Array* %edges, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %betas, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %gammas, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %8, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %15, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %15, i32 -1)
  %36 = sub i64 %17, 1
  br label %header__5

header__5:                                        ; preds = %exiting__5, %exit__4
  %37 = phi i64 [ 0, %exit__4 ], [ %43, %exiting__5 ]
  %38 = icmp sle i64 %37, %36
  br i1 %38, label %body__5, label %exit__5

body__5:                                          ; preds = %header__5
  %39 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %16, i64 %37)
  %40 = bitcast i8* %39 to { double, double }**
  %41 = load { double, double }*, { double, double }** %40, align 8
  %42 = bitcast { double, double }* %41 to %Tuple*
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %42, i32 -1)
  br label %exiting__5

exiting__5:                                       ; preds = %body__5
  %43 = add i64 %37, 1
  br label %header__5

exit__5:                                          ; preds = %header__5
  call void @__quantum__rt__array_update_reference_count(%Array* %16, i32 -1)
  %44 = call i64 @__quantum__rt__array_get_size_1d(%Array* %27)
  %45 = sub i64 %44, 1
  br label %header__6

header__6:                                        ; preds = %exiting__6, %exit__5
  %46 = phi i64 [ 0, %exit__5 ], [ %51, %exiting__6 ]
  %47 = icmp sle i64 %46, %45
  br i1 %47, label %body__6, label %exit__6

body__6:                                          ; preds = %header__6
  %48 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %27, i64 %46)
  %49 = bitcast i8* %48 to %Result**
  %50 = load %Result*, %Result** %49, align 8
  call void @__quantum__rt__result_update_reference_count(%Result* %50, i32 -1)
  br label %exiting__6

exiting__6:                                       ; preds = %body__6
  %51 = add i64 %46, 1
  br label %header__6

exit__6:                                          ; preds = %header__6
  call void @__quantum__rt__array_update_reference_count(%Array* %27, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %8, i32 -1)
  call void @__quantum__rt__qubit_release_array(%Array* %bitString)
  ret %Array* %28
}

declare %Array* @__quantum__rt__array_create_1d(i32, i64)

declare %Qubit* @__quantum__rt__qubit_allocate()

declare %Array* @__quantum__rt__qubit_allocate_array(i64)

declare void @__quantum__rt__qubit_release_array(%Array*)

define internal void @Microsoft__Quantum__Canon___73a395c531ec4129926f9fc76b7c4ed5_ApplyToEach__body(%Callable* %singleElementOperation, %Array* %register) {
entry:
  call void @__quantum__rt__capture_update_alias_count(%Callable* %singleElementOperation, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %singleElementOperation, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %register, i32 1)
  %0 = call %Range @Microsoft__Quantum__Arrays___b8684c973fa94eb6827e0435b3cc6021_IndexRange__body(%Array* %register)
  %1 = extractvalue %Range %0, 0
  %2 = extractvalue %Range %0, 1
  %3 = extractvalue %Range %0, 2
  br label %preheader__1

preheader__1:                                     ; preds = %entry
  %4 = icmp sgt i64 %2, 0
  br label %header__1

header__1:                                        ; preds = %exiting__1, %preheader__1
  %idxQubit = phi i64 [ %1, %preheader__1 ], [ %14, %exiting__1 ]
  %5 = icmp sle i64 %idxQubit, %3
  %6 = icmp sge i64 %idxQubit, %3
  %7 = select i1 %4, i1 %5, i1 %6
  br i1 %7, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %8 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %register, i64 %idxQubit)
  %9 = bitcast i8* %8 to %Qubit**
  %10 = load %Qubit*, %Qubit** %9, align 8
  %11 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Qubit* }* getelementptr ({ %Qubit* }, { %Qubit* }* null, i32 1) to i64))
  %12 = bitcast %Tuple* %11 to { %Qubit* }*
  %13 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %12, i32 0, i32 0
  store %Qubit* %10, %Qubit** %13, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %singleElementOperation, %Tuple* %11, %Tuple* null)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %11, i32 -1)
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %14 = add i64 %idxQubit, %2
  br label %header__1

exit__1:                                          ; preds = %header__1
  call void @__quantum__rt__capture_update_alias_count(%Callable* %singleElementOperation, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %singleElementOperation, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %register, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__H__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Qubit* }*
  %1 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %0, i32 0, i32 0
  %2 = load %Qubit*, %Qubit** %1, align 8
  call void @Microsoft__Quantum__Intrinsic__H__body(%Qubit* %2)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__H__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Qubit* }*
  %1 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %0, i32 0, i32 0
  %2 = load %Qubit*, %Qubit** %1, align 8
  call void @Microsoft__Quantum__Intrinsic__H__adj(%Qubit* %2)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__H__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Qubit* }*
  %1 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Qubit*, %Qubit** %2, align 8
  call void @Microsoft__Quantum__Intrinsic__H__ctl(%Array* %3, %Qubit* %4)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__H__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Qubit* }*
  %1 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Qubit*, %Qubit** %2, align 8
  call void @Microsoft__Quantum__Intrinsic__H__ctladj(%Array* %3, %Qubit* %4)
  ret void
}

define internal %Array* @Microsoft__Quantum__Arrays___b13ad8447aef4bf39029aafcab01e484_Zipped__body(%Array* %left, %Array* %right) {
entry:
  %output = alloca %Array*, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %left, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %right, i32 1)
  %0 = call i64 @__quantum__rt__array_get_size_1d(%Array* %left)
  %1 = call i64 @__quantum__rt__array_get_size_1d(%Array* %right)
  %2 = icmp slt i64 %0, %1
  br i1 %2, label %condTrue__1, label %condFalse__1

condTrue__1:                                      ; preds = %entry
  br label %condContinue__1

condFalse__1:                                     ; preds = %entry
  br label %condContinue__1

condContinue__1:                                  ; preds = %condFalse__1, %condTrue__1
  %nElements = phi i64 [ %0, %condTrue__1 ], [ %1, %condFalse__1 ]
  %3 = icmp eq i64 %nElements, 0
  br i1 %3, label %then0__1, label %continue__1

then0__1:                                         ; preds = %condContinue__1
  %4 = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 0)
  call void @__quantum__rt__array_update_alias_count(%Array* %left, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %right, i32 -1)
  ret %Array* %4

continue__1:                                      ; preds = %condContinue__1
  %5 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %left, i64 0)
  %6 = bitcast i8* %5 to double*
  %7 = load double, double* %6, align 8
  %8 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %right, i64 0)
  %9 = bitcast i8* %8 to double*
  %10 = load double, double* %9, align 8
  %11 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, double }* getelementptr ({ double, double }, { double, double }* null, i32 1) to i64))
  %12 = bitcast %Tuple* %11 to { double, double }*
  %13 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  %14 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  store double %7, double* %13, align 8
  store double %10, double* %14, align 8
  %15 = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 %nElements)
  %16 = sub i64 %nElements, 1
  br label %header__1

header__1:                                        ; preds = %exiting__1, %continue__1
  %17 = phi i64 [ 0, %continue__1 ], [ %21, %exiting__1 ]
  %18 = icmp sle i64 %17, %16
  br i1 %18, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %19 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %15, i64 %17)
  %20 = bitcast i8* %19 to { double, double }**
  store { double, double }* %12, { double, double }** %20, align 8
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %11, i32 1)
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %21 = add i64 %17, 1
  br label %header__1

exit__1:                                          ; preds = %header__1
  store %Array* %15, %Array** %output, align 8
  %22 = sub i64 %nElements, 1
  br label %header__2

header__2:                                        ; preds = %exiting__2, %exit__1
  %23 = phi i64 [ 0, %exit__1 ], [ %29, %exiting__2 ]
  %24 = icmp sle i64 %23, %22
  br i1 %24, label %body__2, label %exit__2

body__2:                                          ; preds = %header__2
  %25 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %15, i64 %23)
  %26 = bitcast i8* %25 to { double, double }**
  %27 = load { double, double }*, { double, double }** %26, align 8
  %28 = bitcast { double, double }* %27 to %Tuple*
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %28, i32 1)
  br label %exiting__2

exiting__2:                                       ; preds = %body__2
  %29 = add i64 %23, 1
  br label %header__2

exit__2:                                          ; preds = %header__2
  call void @__quantum__rt__array_update_alias_count(%Array* %15, i32 1)
  %30 = sub i64 %nElements, 1
  br label %header__3

header__3:                                        ; preds = %exiting__3, %exit__2
  %idxElement = phi i64 [ 1, %exit__2 ], [ %48, %exiting__3 ]
  %31 = icmp sle i64 %idxElement, %30
  br i1 %31, label %body__3, label %exit__3

body__3:                                          ; preds = %header__3
  %32 = load %Array*, %Array** %output, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %32, i32 -1)
  %33 = call %Array* @__quantum__rt__array_copy(%Array* %32, i1 false)
  %34 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %left, i64 %idxElement)
  %35 = bitcast i8* %34 to double*
  %36 = load double, double* %35, align 8
  %37 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %right, i64 %idxElement)
  %38 = bitcast i8* %37 to double*
  %39 = load double, double* %38, align 8
  %40 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ double, double }* getelementptr ({ double, double }, { double, double }* null, i32 1) to i64))
  %41 = bitcast %Tuple* %40 to { double, double }*
  %42 = getelementptr inbounds { double, double }, { double, double }* %41, i32 0, i32 0
  %43 = getelementptr inbounds { double, double }, { double, double }* %41, i32 0, i32 1
  store double %36, double* %42, align 8
  store double %39, double* %43, align 8
  %44 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %33, i64 %idxElement)
  %45 = bitcast i8* %44 to { double, double }**
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %40, i32 1)
  %46 = load { double, double }*, { double, double }** %45, align 8
  %47 = bitcast { double, double }* %46 to %Tuple*
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %47, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %47, i32 -1)
  store { double, double }* %41, { double, double }** %45, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %33, i32 1)
  store %Array* %33, %Array** %output, align 8
  call void @__quantum__rt__array_update_reference_count(%Array* %32, i32 -1)
  br label %exiting__3

exiting__3:                                       ; preds = %body__3
  %48 = add i64 %idxElement, 1
  br label %header__3

exit__3:                                          ; preds = %header__3
  %49 = load %Array*, %Array** %output, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %left, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %right, i32 -1)
  %50 = call i64 @__quantum__rt__array_get_size_1d(%Array* %49)
  %51 = sub i64 %50, 1
  br label %header__4

header__4:                                        ; preds = %exiting__4, %exit__3
  %52 = phi i64 [ 0, %exit__3 ], [ %58, %exiting__4 ]
  %53 = icmp sle i64 %52, %51
  br i1 %53, label %body__4, label %exit__4

body__4:                                          ; preds = %header__4
  %54 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %49, i64 %52)
  %55 = bitcast i8* %54 to { double, double }**
  %56 = load { double, double }*, { double, double }** %55, align 8
  %57 = bitcast { double, double }* %56 to %Tuple*
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %57, i32 -1)
  br label %exiting__4

exiting__4:                                       ; preds = %body__4
  %58 = add i64 %52, 1
  br label %header__4

exit__4:                                          ; preds = %header__4
  call void @__quantum__rt__array_update_alias_count(%Array* %49, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %11, i32 -1)
  ret %Array* %49
}

define internal %Array* @Microsoft__Quantum__Convert__ResultArrayAsBoolArray__body(%Array* %input) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %input, i32 1)
  %0 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Convert__ResultAsBool__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %1 = call %Array* @Microsoft__Quantum__Arrays___79c48935498c4132a158a4dc68d9f031_Mapped__body(%Callable* %0, %Array* %input)
  call void @__quantum__rt__array_update_alias_count(%Array* %input, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %0, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %0, i32 -1)
  ret %Array* %1
}

define internal %Array* @Microsoft__Quantum__Measurement__MultiM__body(%Array* %targets) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %targets, i32 1)
  %0 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Intrinsic__M__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %1 = call %Array* @Microsoft__Quantum__Arrays___b40f67ad524d4eecb23e9a15d0fd3236_ForEach__body(%Callable* %0, %Array* %targets)
  call void @__quantum__rt__array_update_alias_count(%Array* %targets, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %0, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %0, i32 -1)
  ret %Array* %1
}

declare void @__quantum__rt__result_update_reference_count(%Result*, i32)

define internal void @Microsoft__Quantum__Intrinsic__H__body(%Qubit* %qubit) {
entry:
  call void @__quantum__qis__h__body(%Qubit* %qubit)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__H__adj(%Qubit* %qubit) {
entry:
  call void @__quantum__qis__h__body(%Qubit* %qubit)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__H__ctl(%Array* %__controlQubits__, %Qubit* %qubit) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  call void @__quantum__qis__h__ctl(%Array* %__controlQubits__, %Qubit* %qubit)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__H__ctladj(%Array* %__controlQubits__, %Qubit* %qubit) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  call void @__quantum__qis__h__ctl(%Array* %__controlQubits__, %Qubit* %qubit)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  ret void
}

define internal void @Maxcut__RunQAOATrials__body(i64 %numTrials) {
entry:
  %successNumber = alloca i64, align 8
  %maxCut = alloca %Array*, align 8
  %bestValue = alloca double, align 8
  %gammas = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 1)
  %0 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %gammas, i64 0)
  %1 = bitcast i8* %0 to double*
  store double 0x3FEABEA7B0889E75, double* %1, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %gammas, i32 1)
  %betas = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 1)
  %2 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %betas, i64 0)
  %3 = bitcast i8* %2 to double*
  store double 0x3FF22BE9E60D3AA6, double* %3, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %betas, i32 1)
  %4 = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 2)
  %5 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %4, i64 0)
  %6 = bitcast i8* %5 to i64*
  %7 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %4, i64 1)
  %8 = bitcast i8* %7 to i64*
  store i64 0, i64* %6, align 4
  store i64 1, i64* %8, align 4
  %9 = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 2)
  %10 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %9, i64 0)
  %11 = bitcast i8* %10 to i64*
  %12 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %9, i64 1)
  %13 = bitcast i8* %12 to i64*
  store i64 0, i64* %11, align 4
  store i64 3, i64* %13, align 4
  %14 = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 2)
  %15 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %14, i64 0)
  %16 = bitcast i8* %15 to i64*
  %17 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %14, i64 1)
  %18 = bitcast i8* %17 to i64*
  store i64 1, i64* %16, align 4
  store i64 2, i64* %18, align 4
  %19 = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 2)
  %20 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %19, i64 0)
  %21 = bitcast i8* %20 to i64*
  %22 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %19, i64 1)
  %23 = bitcast i8* %22 to i64*
  store i64 2, i64* %21, align 4
  store i64 3, i64* %23, align 4
  %edges = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 4)
  %24 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edges, i64 0)
  %25 = bitcast i8* %24 to %Array**
  %26 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edges, i64 1)
  %27 = bitcast i8* %26 to %Array**
  %28 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edges, i64 2)
  %29 = bitcast i8* %28 to %Array**
  %30 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edges, i64 3)
  %31 = bitcast i8* %30 to %Array**
  store %Array* %4, %Array** %25, align 8
  store %Array* %9, %Array** %27, align 8
  store %Array* %14, %Array** %29, align 8
  store %Array* %19, %Array** %31, align 8
  br label %header__1

header__1:                                        ; preds = %exiting__1, %entry
  %32 = phi i64 [ 0, %entry ], [ %37, %exiting__1 ]
  %33 = icmp sle i64 %32, 3
  br i1 %33, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %34 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edges, i64 %32)
  %35 = bitcast i8* %34 to %Array**
  %36 = load %Array*, %Array** %35, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %36, i32 1)
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %37 = add i64 %32, 1
  br label %header__1

exit__1:                                          ; preds = %header__1
  call void @__quantum__rt__array_update_alias_count(%Array* %edges, i32 1)
  store double 0.000000e+00, double* %bestValue, align 8
  %38 = call %Array* @__quantum__rt__array_create_1d(i32 1, i64 5)
  %39 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %38, i64 0)
  %40 = bitcast i8* %39 to i1*
  %41 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %38, i64 1)
  %42 = bitcast i8* %41 to i1*
  %43 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %38, i64 2)
  %44 = bitcast i8* %43 to i1*
  %45 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %38, i64 3)
  %46 = bitcast i8* %45 to i1*
  %47 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %38, i64 4)
  %48 = bitcast i8* %47 to i1*
  store i1 false, i1* %40, align 1
  store i1 false, i1* %42, align 1
  store i1 false, i1* %44, align 1
  store i1 false, i1* %46, align 1
  store i1 false, i1* %48, align 1
  store %Array* %38, %Array** %maxCut, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %38, i32 1)
  store i64 0, i64* %successNumber, align 4
  br label %header__2

header__2:                                        ; preds = %exiting__2, %exit__1
  %trial = phi i64 [ 0, %exit__1 ], [ %56, %exiting__2 ]
  %49 = icmp sle i64 %trial, %numTrials
  br i1 %49, label %body__2, label %exit__2

body__2:                                          ; preds = %header__2
  %result = call %Array* @Maxcut__PerformQAOA__body(i64 4, %Array* %edges, %Array* %betas, %Array* %gammas)
  call void @__quantum__rt__array_update_alias_count(%Array* %result, i32 1)
  %50 = call double @Maxcut__CalculatedVal__body(%Array* %edges, %Array* %result)
  %value = fmul double -1.000000e+00, %50
  %51 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @0, i32 0, i32 0))
  %52 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1, i32 0, i32 0))
  %53 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0))
  call void @__quantum__rt__string_update_reference_count(%String* %53, i32 1)
  %54 = call i64 @__quantum__rt__array_get_size_1d(%Array* %result)
  %55 = sub i64 %54, 1
  br label %header__3

exiting__2:                                       ; preds = %continue__1
  %56 = add i64 %trial, 1
  br label %header__2

exit__2:                                          ; preds = %header__2
  %57 = load i64, i64* %successNumber, align 4
  %58 = sitofp i64 %57 to double
  %59 = fmul double %58, 1.000000e+02
  %60 = sitofp i64 %numTrials to double
  %runPercentage = fdiv double %59, %60
  %61 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @7, i32 0, i32 0))
  call void @__quantum__rt__message(%String* %61)
  %62 = load %Array*, %Array** %maxCut, align 8
  %63 = load double, double* %bestValue, align 8
  %64 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0))
  %65 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1, i32 0, i32 0))
  %66 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0))
  call void @__quantum__rt__string_update_reference_count(%String* %66, i32 1)
  %67 = call i64 @__quantum__rt__array_get_size_1d(%Array* %62)
  %68 = sub i64 %67, 1
  br label %header__4

header__3:                                        ; preds = %exiting__3, %body__2
  %69 = phi %String* [ %53, %body__2 ], [ %81, %exiting__3 ]
  %70 = phi i64 [ 0, %body__2 ], [ %82, %exiting__3 ]
  %71 = icmp sle i64 %70, %55
  br i1 %71, label %body__3, label %exit__3

body__3:                                          ; preds = %header__3
  %72 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %result, i64 %70)
  %73 = bitcast i8* %72 to i1*
  %74 = load i1, i1* %73, align 1
  %75 = icmp ne %String* %69, %53
  br i1 %75, label %condTrue__1, label %condContinue__1

condTrue__1:                                      ; preds = %body__3
  %76 = call %String* @__quantum__rt__string_concatenate(%String* %69, %String* %52)
  call void @__quantum__rt__string_update_reference_count(%String* %69, i32 -1)
  br label %condContinue__1

condContinue__1:                                  ; preds = %condTrue__1, %body__3
  %77 = phi %String* [ %76, %condTrue__1 ], [ %69, %body__3 ]
  br i1 %74, label %condTrue__2, label %condFalse__1

condTrue__2:                                      ; preds = %condContinue__1
  %78 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3, i32 0, i32 0))
  br label %condContinue__2

condFalse__1:                                     ; preds = %condContinue__1
  %79 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0))
  br label %condContinue__2

condContinue__2:                                  ; preds = %condFalse__1, %condTrue__2
  %80 = phi %String* [ %78, %condTrue__2 ], [ %79, %condFalse__1 ]
  %81 = call %String* @__quantum__rt__string_concatenate(%String* %77, %String* %80)
  call void @__quantum__rt__string_update_reference_count(%String* %77, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %80, i32 -1)
  br label %exiting__3

exiting__3:                                       ; preds = %condContinue__2
  %82 = add i64 %70, 1
  br label %header__3

exit__3:                                          ; preds = %header__3
  %83 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @5, i32 0, i32 0))
  %84 = call %String* @__quantum__rt__string_concatenate(%String* %69, %String* %83)
  call void @__quantum__rt__string_update_reference_count(%String* %69, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %83, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %52, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %53, i32 -1)
  %85 = call %String* @__quantum__rt__string_concatenate(%String* %51, %String* %84)
  call void @__quantum__rt__string_update_reference_count(%String* %51, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %84, i32 -1)
  %86 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0))
  %87 = call %String* @__quantum__rt__string_concatenate(%String* %85, %String* %86)
  call void @__quantum__rt__string_update_reference_count(%String* %85, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %86, i32 -1)
  %88 = call %String* @__quantum__rt__double_to_string(double %value)
  %89 = call %String* @__quantum__rt__string_concatenate(%String* %87, %String* %88)
  call void @__quantum__rt__string_update_reference_count(%String* %87, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %88, i32 -1)
  call void @__quantum__rt__message(%String* %89)
  %90 = load double, double* %bestValue, align 8
  %91 = fadd double %90, 0x3EB0C6F7A0B5ED8D
  %92 = fcmp ogt double %value, %91
  br i1 %92, label %then0__1, label %test1__1

then0__1:                                         ; preds = %exit__3
  store double %value, double* %bestValue, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %result, i32 1)
  call void @__quantum__rt__array_update_reference_count(%Array* %result, i32 1)
  %93 = load %Array*, %Array** %maxCut, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %93, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %93, i32 -1)
  store %Array* %result, %Array** %maxCut, align 8
  store i64 1, i64* %successNumber, align 4
  br label %continue__1

test1__1:                                         ; preds = %exit__3
  %94 = load double, double* %bestValue, align 8
  %95 = fsub double %value, %94
  %96 = call double @Microsoft__Quantum__Math__AbsD__body(double %95)
  %97 = fcmp olt double %96, 0x3EB0C6F7A0B5ED8D
  br i1 %97, label %then1__1, label %continue__1

then1__1:                                         ; preds = %test1__1
  %98 = load i64, i64* %successNumber, align 4
  %99 = add i64 %98, 1
  store i64 %99, i64* %successNumber, align 4
  br label %continue__1

continue__1:                                      ; preds = %then1__1, %test1__1, %then0__1
  call void @__quantum__rt__array_update_alias_count(%Array* %result, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %result, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %89, i32 -1)
  br label %exiting__2

header__4:                                        ; preds = %exiting__4, %exit__2
  %100 = phi %String* [ %66, %exit__2 ], [ %112, %exiting__4 ]
  %101 = phi i64 [ 0, %exit__2 ], [ %113, %exiting__4 ]
  %102 = icmp sle i64 %101, %68
  br i1 %102, label %body__4, label %exit__4

body__4:                                          ; preds = %header__4
  %103 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %62, i64 %101)
  %104 = bitcast i8* %103 to i1*
  %105 = load i1, i1* %104, align 1
  %106 = icmp ne %String* %100, %66
  br i1 %106, label %condTrue__3, label %condContinue__3

condTrue__3:                                      ; preds = %body__4
  %107 = call %String* @__quantum__rt__string_concatenate(%String* %100, %String* %65)
  call void @__quantum__rt__string_update_reference_count(%String* %100, i32 -1)
  br label %condContinue__3

condContinue__3:                                  ; preds = %condTrue__3, %body__4
  %108 = phi %String* [ %107, %condTrue__3 ], [ %100, %body__4 ]
  br i1 %105, label %condTrue__4, label %condFalse__2

condTrue__4:                                      ; preds = %condContinue__3
  %109 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3, i32 0, i32 0))
  br label %condContinue__4

condFalse__2:                                     ; preds = %condContinue__3
  %110 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0))
  br label %condContinue__4

condContinue__4:                                  ; preds = %condFalse__2, %condTrue__4
  %111 = phi %String* [ %109, %condTrue__4 ], [ %110, %condFalse__2 ]
  %112 = call %String* @__quantum__rt__string_concatenate(%String* %108, %String* %111)
  call void @__quantum__rt__string_update_reference_count(%String* %108, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %111, i32 -1)
  br label %exiting__4

exiting__4:                                       ; preds = %condContinue__4
  %113 = add i64 %101, 1
  br label %header__4

exit__4:                                          ; preds = %header__4
  %114 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @5, i32 0, i32 0))
  %115 = call %String* @__quantum__rt__string_concatenate(%String* %100, %String* %114)
  call void @__quantum__rt__string_update_reference_count(%String* %100, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %114, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %65, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %66, i32 -1)
  %116 = call %String* @__quantum__rt__string_concatenate(%String* %64, %String* %115)
  call void @__quantum__rt__string_update_reference_count(%String* %64, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %115, i32 -1)
  %117 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0))
  %118 = call %String* @__quantum__rt__string_concatenate(%String* %116, %String* %117)
  call void @__quantum__rt__string_update_reference_count(%String* %116, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %117, i32 -1)
  %119 = call %String* @__quantum__rt__double_to_string(double %63)
  %120 = call %String* @__quantum__rt__string_concatenate(%String* %118, %String* %119)
  call void @__quantum__rt__string_update_reference_count(%String* %118, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %119, i32 -1)
  call void @__quantum__rt__message(%String* %120)
  %121 = call %String* @__quantum__rt__double_to_string(double %runPercentage)
  %122 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0))
  %123 = call %String* @__quantum__rt__string_concatenate(%String* %121, %String* %122)
  call void @__quantum__rt__string_update_reference_count(%String* %121, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %122, i32 -1)
  call void @__quantum__rt__message(%String* %123)
  call void @__quantum__rt__array_update_alias_count(%Array* %gammas, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %betas, i32 -1)
  br label %header__5

header__5:                                        ; preds = %exiting__5, %exit__4
  %124 = phi i64 [ 0, %exit__4 ], [ %129, %exiting__5 ]
  %125 = icmp sle i64 %124, 3
  br i1 %125, label %body__5, label %exit__5

body__5:                                          ; preds = %header__5
  %126 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edges, i64 %124)
  %127 = bitcast i8* %126 to %Array**
  %128 = load %Array*, %Array** %127, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %128, i32 -1)
  br label %exiting__5

exiting__5:                                       ; preds = %body__5
  %129 = add i64 %124, 1
  br label %header__5

exit__5:                                          ; preds = %header__5
  call void @__quantum__rt__array_update_alias_count(%Array* %edges, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %62, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %gammas, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %betas, i32 -1)
  br label %header__6

header__6:                                        ; preds = %exiting__6, %exit__5
  %130 = phi i64 [ 0, %exit__5 ], [ %135, %exiting__6 ]
  %131 = icmp sle i64 %130, 3
  br i1 %131, label %body__6, label %exit__6

body__6:                                          ; preds = %header__6
  %132 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %edges, i64 %130)
  %133 = bitcast i8* %132 to %Array**
  %134 = load %Array*, %Array** %133, align 8
  call void @__quantum__rt__array_update_reference_count(%Array* %134, i32 -1)
  br label %exiting__6

exiting__6:                                       ; preds = %body__6
  %135 = add i64 %130, 1
  br label %header__6

exit__6:                                          ; preds = %header__6
  call void @__quantum__rt__array_update_reference_count(%Array* %edges, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %61, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %120, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %123, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %62, i32 -1)
  ret void
}

declare %String* @__quantum__rt__string_create(i8*)

declare void @__quantum__rt__string_update_reference_count(%String*, i32)

declare %String* @__quantum__rt__string_concatenate(%String*, %String*)

declare %String* @__quantum__rt__double_to_string(double)

declare void @__quantum__rt__message(%String*)

define internal double @Microsoft__Quantum__Math__AbsD__body(double %a) {
entry:
  %0 = fcmp olt double %a, 0.000000e+00
  br i1 %0, label %condTrue__1, label %condFalse__1

condTrue__1:                                      ; preds = %entry
  %1 = fneg double %a
  br label %condContinue__1

condFalse__1:                                     ; preds = %entry
  br label %condContinue__1

condContinue__1:                                  ; preds = %condFalse__1, %condTrue__1
  %2 = phi double [ %1, %condTrue__1 ], [ %a, %condFalse__1 ]
  ret double %2
}

declare void @__quantum__qis__x__ctl(%Array*, %Qubit*)

define internal void @Microsoft__Quantum__Intrinsic__CNOT__adj(%Qubit* %control, %Qubit* %target) {
entry:
  call void @Microsoft__Quantum__Intrinsic__CNOT__body(%Qubit* %control, %Qubit* %target)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__CNOT__ctl(%Array* %__controlQubits__, { %Qubit*, %Qubit* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { %Qubit*, %Qubit* }, { %Qubit*, %Qubit* }* %0, i32 0, i32 0
  %control = load %Qubit*, %Qubit** %1, align 8
  %2 = getelementptr inbounds { %Qubit*, %Qubit* }, { %Qubit*, %Qubit* }* %0, i32 0, i32 1
  %target = load %Qubit*, %Qubit** %2, align 8
  %3 = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 1)
  %4 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %3, i64 0)
  %5 = bitcast i8* %4 to %Qubit**
  store %Qubit* %control, %Qubit** %5, align 8
  %__controlQubits__1 = call %Array* @__quantum__rt__array_concatenate(%Array* %__controlQubits__, %Array* %3)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__1, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__1, i32 1)
  call void @__quantum__qis__x__ctl(%Array* %__controlQubits__1, %Qubit* %target)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__1, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %3, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__1, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__1, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  ret void
}

declare %Array* @__quantum__rt__array_concatenate(%Array*, %Array*)

define internal void @Microsoft__Quantum__Intrinsic__CNOT__ctladj(%Array* %__controlQubits__, { %Qubit*, %Qubit* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { %Qubit*, %Qubit* }, { %Qubit*, %Qubit* }* %0, i32 0, i32 0
  %control = load %Qubit*, %Qubit** %1, align 8
  %2 = getelementptr inbounds { %Qubit*, %Qubit* }, { %Qubit*, %Qubit* }* %0, i32 0, i32 1
  %target = load %Qubit*, %Qubit** %2, align 8
  %3 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Qubit*, %Qubit* }* getelementptr ({ %Qubit*, %Qubit* }, { %Qubit*, %Qubit* }* null, i32 1) to i64))
  %4 = bitcast %Tuple* %3 to { %Qubit*, %Qubit* }*
  %5 = getelementptr inbounds { %Qubit*, %Qubit* }, { %Qubit*, %Qubit* }* %4, i32 0, i32 0
  %6 = getelementptr inbounds { %Qubit*, %Qubit* }, { %Qubit*, %Qubit* }* %4, i32 0, i32 1
  store %Qubit* %control, %Qubit** %5, align 8
  store %Qubit* %target, %Qubit** %6, align 8
  call void @Microsoft__Quantum__Intrinsic__CNOT__ctl(%Array* %__controlQubits__, { %Qubit*, %Qubit* }* %4)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %3, i32 -1)
  ret void
}

declare void @__quantum__qis__h__body(%Qubit*)

declare void @__quantum__qis__h__ctl(%Array*, %Qubit*)

define internal %Result* @Microsoft__Quantum__Intrinsic__M__body(%Qubit* %qubit) {
entry:
  %bases = call %Array* @__quantum__rt__array_create_1d(i32 1, i64 1)
  %0 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %bases, i64 0)
  %1 = bitcast i8* %0 to i2*
  store i2 -2, i2* %1, align 1
  call void @__quantum__rt__array_update_alias_count(%Array* %bases, i32 1)
  %qubits = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 1)
  %2 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %qubits, i64 0)
  %3 = bitcast i8* %2 to %Qubit**
  store %Qubit* %qubit, %Qubit** %3, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %qubits, i32 1)
  %4 = call %Result* @__quantum__qis__measure__body(%Array* %bases, %Array* %qubits)
  call void @__quantum__rt__array_update_alias_count(%Array* %bases, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %qubits, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %bases, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %qubits, i32 -1)
  ret %Result* %4
}

declare %Result* @__quantum__qis__measure__body(%Array*, %Array*)

define internal %Result* @Microsoft__Quantum__Intrinsic__Measure__body(%Array* %bases, %Array* %qubits) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %bases, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %qubits, i32 1)
  %0 = call %Result* @__quantum__qis__measure__body(%Array* %bases, %Array* %qubits)
  call void @__quantum__rt__array_update_alias_count(%Array* %bases, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %qubits, i32 -1)
  ret %Result* %0
}

define internal void @Microsoft__Quantum__Intrinsic__R__body(i2 %pauli, double %theta, %Qubit* %qubit) {
entry:
  call void @__quantum__qis__r__body(i2 %pauli, double %theta, %Qubit* %qubit)
  ret void
}

declare void @__quantum__qis__r__body(i2, double, %Qubit*)

define internal void @Microsoft__Quantum__Intrinsic__R__adj(i2 %pauli, double %theta, %Qubit* %qubit) {
entry:
  call void @__quantum__qis__r__adj(i2 %pauli, double %theta, %Qubit* %qubit)
  ret void
}

declare void @__quantum__qis__r__adj(i2, double, %Qubit*)

define internal void @Microsoft__Quantum__Intrinsic__R__ctl(%Array* %__controlQubits__, { i2, double, %Qubit* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %0, i32 0, i32 0
  %pauli = load i2, i2* %1, align 1
  %2 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %0, i32 0, i32 1
  %theta = load double, double* %2, align 8
  %3 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %0, i32 0, i32 2
  %qubit = load %Qubit*, %Qubit** %3, align 8
  %4 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ i2, double, %Qubit* }* getelementptr ({ i2, double, %Qubit* }, { i2, double, %Qubit* }* null, i32 1) to i64))
  %5 = bitcast %Tuple* %4 to { i2, double, %Qubit* }*
  %6 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %5, i32 0, i32 0
  %7 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %5, i32 0, i32 1
  %8 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %5, i32 0, i32 2
  store i2 %pauli, i2* %6, align 1
  store double %theta, double* %7, align 8
  store %Qubit* %qubit, %Qubit** %8, align 8
  call void @__quantum__qis__r__ctl(%Array* %__controlQubits__, { i2, double, %Qubit* }* %5)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %4, i32 -1)
  ret void
}

declare void @__quantum__qis__r__ctl(%Array*, { i2, double, %Qubit* }*)

define internal void @Microsoft__Quantum__Intrinsic__R__ctladj(%Array* %__controlQubits__, { i2, double, %Qubit* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %0, i32 0, i32 0
  %pauli = load i2, i2* %1, align 1
  %2 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %0, i32 0, i32 1
  %theta = load double, double* %2, align 8
  %3 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %0, i32 0, i32 2
  %qubit = load %Qubit*, %Qubit** %3, align 8
  %4 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ i2, double, %Qubit* }* getelementptr ({ i2, double, %Qubit* }, { i2, double, %Qubit* }* null, i32 1) to i64))
  %5 = bitcast %Tuple* %4 to { i2, double, %Qubit* }*
  %6 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %5, i32 0, i32 0
  %7 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %5, i32 0, i32 1
  %8 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %5, i32 0, i32 2
  store i2 %pauli, i2* %6, align 1
  store double %theta, double* %7, align 8
  store %Qubit* %qubit, %Qubit** %8, align 8
  call void @__quantum__qis__r__ctladj(%Array* %__controlQubits__, { i2, double, %Qubit* }* %5)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %4, i32 -1)
  ret void
}

declare void @__quantum__qis__r__ctladj(%Array*, { i2, double, %Qubit* }*)

define internal void @Microsoft__Quantum__Intrinsic__Rz__adj(double %theta, %Qubit* %qubit) {
entry:
  %theta__1 = fneg double %theta
  call void @__quantum__qis__r__body(i2 -2, double %theta__1, %Qubit* %qubit)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__Rz__ctl(%Array* %__controlQubits__, { double, %Qubit* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %0, i32 0, i32 0
  %theta = load double, double* %1, align 8
  %2 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %0, i32 0, i32 1
  %qubit = load %Qubit*, %Qubit** %2, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %3 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ i2, double, %Qubit* }* getelementptr ({ i2, double, %Qubit* }, { i2, double, %Qubit* }* null, i32 1) to i64))
  %4 = bitcast %Tuple* %3 to { i2, double, %Qubit* }*
  %5 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %4, i32 0, i32 0
  %6 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %4, i32 0, i32 1
  %7 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %4, i32 0, i32 2
  store i2 -2, i2* %5, align 1
  store double %theta, double* %6, align 8
  store %Qubit* %qubit, %Qubit** %7, align 8
  call void @__quantum__qis__r__ctl(%Array* %__controlQubits__, { i2, double, %Qubit* }* %4)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %3, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__Rz__ctladj(%Array* %__controlQubits__, { double, %Qubit* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %0, i32 0, i32 0
  %theta = load double, double* %1, align 8
  %2 = getelementptr inbounds { double, %Qubit* }, { double, %Qubit* }* %0, i32 0, i32 1
  %qubit = load %Qubit*, %Qubit** %2, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %theta__1 = fneg double %theta
  %3 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ i2, double, %Qubit* }* getelementptr ({ i2, double, %Qubit* }, { i2, double, %Qubit* }* null, i32 1) to i64))
  %4 = bitcast %Tuple* %3 to { i2, double, %Qubit* }*
  %5 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %4, i32 0, i32 0
  %6 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %4, i32 0, i32 1
  %7 = getelementptr inbounds { i2, double, %Qubit* }, { i2, double, %Qubit* }* %4, i32 0, i32 2
  store i2 -2, i2* %5, align 1
  store double %theta__1, double* %6, align 8
  store %Qubit* %qubit, %Qubit** %7, align 8
  call void @__quantum__qis__r__ctl(%Array* %__controlQubits__, { i2, double, %Qubit* }* %4)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %3, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__X__body(%Qubit* %qubit) {
entry:
  call void @__quantum__qis__x__body(%Qubit* %qubit)
  ret void
}

declare void @__quantum__qis__x__body(%Qubit*)

define internal void @Microsoft__Quantum__Intrinsic__X__adj(%Qubit* %qubit) {
entry:
  call void @__quantum__qis__x__body(%Qubit* %qubit)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__X__ctl(%Array* %__controlQubits__, %Qubit* %qubit) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  call void @__quantum__qis__x__ctl(%Array* %__controlQubits__, %Qubit* %qubit)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__X__ctladj(%Array* %__controlQubits__, %Qubit* %qubit) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  call void @__quantum__qis__x__ctl(%Array* %__controlQubits__, %Qubit* %qubit)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  ret void
}

define internal %Array* @Microsoft__Quantum__Arrays___b40f67ad524d4eecb23e9a15d0fd3236_ForEach__body(%Callable* %action, %Array* %array) {
entry:
  %retval = alloca %Array*, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %action, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %action, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %array, i32 1)
  %length = call i64 @__quantum__rt__array_get_size_1d(%Array* %array)
  %0 = icmp eq i64 %length, 0
  br i1 %0, label %then0__1, label %continue__1

then0__1:                                         ; preds = %entry
  %1 = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 0)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %action, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %action, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %array, i32 -1)
  ret %Array* %1

continue__1:                                      ; preds = %entry
  %2 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %array, i64 0)
  %3 = bitcast i8* %2 to %Qubit**
  %4 = load %Qubit*, %Qubit** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Qubit* }* getelementptr ({ %Qubit* }, { %Qubit* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Qubit* }*
  %7 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %6, i32 0, i32 0
  store %Qubit* %4, %Qubit** %7, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Result* }* getelementptr ({ %Result* }, { %Result* }* null, i32 1) to i64))
  call void @__quantum__rt__callable_invoke(%Callable* %action, %Tuple* %5, %Tuple* %8)
  %9 = bitcast %Tuple* %8 to { %Result* }*
  %10 = getelementptr inbounds { %Result* }, { %Result* }* %9, i32 0, i32 0
  %first = load %Result*, %Result** %10, align 8
  %11 = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 %length)
  %12 = sub i64 %length, 1
  br label %header__1

header__1:                                        ; preds = %exiting__1, %continue__1
  %13 = phi i64 [ 0, %continue__1 ], [ %17, %exiting__1 ]
  %14 = icmp sle i64 %13, %12
  br i1 %14, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %15 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %11, i64 %13)
  %16 = bitcast i8* %15 to %Result**
  store %Result* %first, %Result** %16, align 8
  call void @__quantum__rt__result_update_reference_count(%Result* %first, i32 1)
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %17 = add i64 %13, 1
  br label %header__1

exit__1:                                          ; preds = %header__1
  store %Array* %11, %Array** %retval, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %11, i32 1)
  %18 = sub i64 %length, 1
  br label %header__2

header__2:                                        ; preds = %exiting__2, %exit__1
  %idx = phi i64 [ 1, %exit__1 ], [ %35, %exiting__2 ]
  %19 = icmp sle i64 %idx, %18
  br i1 %19, label %body__2, label %exit__2

body__2:                                          ; preds = %header__2
  %20 = load %Array*, %Array** %retval, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %20, i32 -1)
  %21 = call %Array* @__quantum__rt__array_copy(%Array* %20, i1 false)
  %22 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %array, i64 %idx)
  %23 = bitcast i8* %22 to %Qubit**
  %24 = load %Qubit*, %Qubit** %23, align 8
  %25 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Qubit* }* getelementptr ({ %Qubit* }, { %Qubit* }* null, i32 1) to i64))
  %26 = bitcast %Tuple* %25 to { %Qubit* }*
  %27 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %26, i32 0, i32 0
  store %Qubit* %24, %Qubit** %27, align 8
  %28 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Result* }* getelementptr ({ %Result* }, { %Result* }* null, i32 1) to i64))
  call void @__quantum__rt__callable_invoke(%Callable* %action, %Tuple* %25, %Tuple* %28)
  %29 = bitcast %Tuple* %28 to { %Result* }*
  %30 = getelementptr inbounds { %Result* }, { %Result* }* %29, i32 0, i32 0
  %31 = load %Result*, %Result** %30, align 8
  %32 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %21, i64 %idx)
  %33 = bitcast i8* %32 to %Result**
  call void @__quantum__rt__result_update_reference_count(%Result* %31, i32 1)
  %34 = load %Result*, %Result** %33, align 8
  call void @__quantum__rt__result_update_reference_count(%Result* %34, i32 -1)
  store %Result* %31, %Result** %33, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %21, i32 1)
  store %Array* %21, %Array** %retval, align 8
  call void @__quantum__rt__array_update_reference_count(%Array* %20, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %25, i32 -1)
  call void @__quantum__rt__result_update_reference_count(%Result* %31, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %28, i32 -1)
  br label %exiting__2

exiting__2:                                       ; preds = %body__2
  %35 = add i64 %idx, 1
  br label %header__2

exit__2:                                          ; preds = %header__2
  %36 = load %Array*, %Array** %retval, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %action, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %action, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %array, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %36, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  call void @__quantum__rt__result_update_reference_count(%Result* %first, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %8, i32 -1)
  ret %Array* %36
}

define internal void @Microsoft__Quantum__Intrinsic__M__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Qubit* }*
  %1 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %0, i32 0, i32 0
  %2 = load %Qubit*, %Qubit** %1, align 8
  %3 = call %Result* @Microsoft__Quantum__Intrinsic__M__body(%Qubit* %2)
  %4 = bitcast %Tuple* %result-tuple to { %Result* }*
  %5 = getelementptr inbounds { %Result* }, { %Result* }* %4, i32 0, i32 0
  store %Result* %3, %Result** %5, align 8
  ret void
}

define internal %Range @Microsoft__Quantum__Arrays___b8684c973fa94eb6827e0435b3cc6021_IndexRange__body(%Array* %array) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %array, i32 1)
  %0 = call i64 @__quantum__rt__array_get_size_1d(%Array* %array)
  %1 = sub i64 %0, 1
  %2 = insertvalue %Range { i64 0, i64 1, i64 0 }, i64 %1, 2
  call void @__quantum__rt__array_update_alias_count(%Array* %array, i32 -1)
  ret %Range %2
}

declare %Array* @__quantum__rt__array_copy(%Array*, i1)

define internal %Array* @Microsoft__Quantum__Arrays___79c48935498c4132a158a4dc68d9f031_Mapped__body(%Callable* %mapper, %Array* %array) {
entry:
  %retval = alloca %Array*, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %mapper, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %mapper, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %array, i32 1)
  %length = call i64 @__quantum__rt__array_get_size_1d(%Array* %array)
  %0 = icmp eq i64 %length, 0
  br i1 %0, label %then0__1, label %continue__1

then0__1:                                         ; preds = %entry
  %1 = call %Array* @__quantum__rt__array_create_1d(i32 1, i64 0)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %mapper, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %mapper, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %array, i32 -1)
  ret %Array* %1

continue__1:                                      ; preds = %entry
  %2 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %array, i64 0)
  %3 = bitcast i8* %2 to %Result**
  %4 = load %Result*, %Result** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Result* }* getelementptr ({ %Result* }, { %Result* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Result* }*
  %7 = getelementptr inbounds { %Result* }, { %Result* }* %6, i32 0, i32 0
  store %Result* %4, %Result** %7, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ i1 }* getelementptr ({ i1 }, { i1 }* null, i32 1) to i64))
  call void @__quantum__rt__callable_invoke(%Callable* %mapper, %Tuple* %5, %Tuple* %8)
  %9 = bitcast %Tuple* %8 to { i1 }*
  %10 = getelementptr inbounds { i1 }, { i1 }* %9, i32 0, i32 0
  %first = load i1, i1* %10, align 1
  %11 = call %Array* @__quantum__rt__array_create_1d(i32 1, i64 %length)
  %12 = sub i64 %length, 1
  br label %header__1

header__1:                                        ; preds = %exiting__1, %continue__1
  %13 = phi i64 [ 0, %continue__1 ], [ %17, %exiting__1 ]
  %14 = icmp sle i64 %13, %12
  br i1 %14, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %15 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %11, i64 %13)
  %16 = bitcast i8* %15 to i1*
  store i1 %first, i1* %16, align 1
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %17 = add i64 %13, 1
  br label %header__1

exit__1:                                          ; preds = %header__1
  store %Array* %11, %Array** %retval, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %11, i32 1)
  %18 = sub i64 %length, 1
  br label %header__2

header__2:                                        ; preds = %exiting__2, %exit__1
  %idx = phi i64 [ 1, %exit__1 ], [ %35, %exiting__2 ]
  %19 = icmp sle i64 %idx, %18
  br i1 %19, label %body__2, label %exit__2

body__2:                                          ; preds = %header__2
  %20 = load %Array*, %Array** %retval, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %20, i32 -1)
  %21 = call %Array* @__quantum__rt__array_copy(%Array* %20, i1 false)
  %22 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %array, i64 %idx)
  %23 = bitcast i8* %22 to %Result**
  %24 = load %Result*, %Result** %23, align 8
  %25 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Result* }* getelementptr ({ %Result* }, { %Result* }* null, i32 1) to i64))
  %26 = bitcast %Tuple* %25 to { %Result* }*
  %27 = getelementptr inbounds { %Result* }, { %Result* }* %26, i32 0, i32 0
  store %Result* %24, %Result** %27, align 8
  %28 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ i1 }* getelementptr ({ i1 }, { i1 }* null, i32 1) to i64))
  call void @__quantum__rt__callable_invoke(%Callable* %mapper, %Tuple* %25, %Tuple* %28)
  %29 = bitcast %Tuple* %28 to { i1 }*
  %30 = getelementptr inbounds { i1 }, { i1 }* %29, i32 0, i32 0
  %31 = load i1, i1* %30, align 1
  %32 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %21, i64 %idx)
  %33 = bitcast i8* %32 to i1*
  %34 = load i1, i1* %33, align 1
  store i1 %31, i1* %33, align 1
  call void @__quantum__rt__array_update_alias_count(%Array* %21, i32 1)
  store %Array* %21, %Array** %retval, align 8
  call void @__quantum__rt__array_update_reference_count(%Array* %20, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %25, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %28, i32 -1)
  br label %exiting__2

exiting__2:                                       ; preds = %body__2
  %35 = add i64 %idx, 1
  br label %header__2

exit__2:                                          ; preds = %header__2
  %36 = load %Array*, %Array** %retval, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %mapper, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %mapper, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %array, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %36, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %8, i32 -1)
  ret %Array* %36
}

define internal void @Microsoft__Quantum__Convert__ResultAsBool__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Result* }*
  %1 = getelementptr inbounds { %Result* }, { %Result* }* %0, i32 0, i32 0
  %2 = load %Result*, %Result** %1, align 8
  %3 = call i1 @Microsoft__Quantum__Convert__ResultAsBool__body(%Result* %2)
  %4 = bitcast %Tuple* %result-tuple to { i1 }*
  %5 = getelementptr inbounds { i1 }, { i1 }* %4, i32 0, i32 0
  store i1 %3, i1* %5, align 1
  ret void
}

define internal i1 @Microsoft__Quantum__Convert__ResultAsBool__body(%Result* %input) {
entry:
  %0 = call %Result* @__quantum__rt__result_get_zero()
  %1 = call i1 @__quantum__rt__result_equal(%Result* %input, %Result* %0)
  %2 = select i1 %1, i1 false, i1 true
  ret i1 %2
}

declare %Result* @__quantum__rt__result_get_zero()

declare i1 @__quantum__rt__result_equal(%Result*, %Result*)

define void @Maxcut__RunQAOATrials__Interop(i64 %numTrials) #0 {
entry:
  call void @Maxcut__RunQAOATrials__body(i64 %numTrials)
  ret void
}

define void @Maxcut__RunQAOATrials(i64 %numTrials) #1 {
entry:
  call void @Maxcut__RunQAOATrials__body(i64 %numTrials)
  %0 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @11, i32 0, i32 0))
  call void @__quantum__rt__message(%String* %0)
  call void @__quantum__rt__string_update_reference_count(%String* %0, i32 -1)
  ret void
}

attributes #0 = { "InteropFriendly" }
attributes #1 = { "EntryPoint" }
