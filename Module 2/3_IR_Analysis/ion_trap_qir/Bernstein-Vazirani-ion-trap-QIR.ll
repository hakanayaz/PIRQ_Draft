
%Tuple = type opaque
%Array = type opaque
%Callable = type opaque
%Qubit = type opaque
%String = type opaque
%Result = type opaque
%Range = type { i64, i64, i64 }

@Microsoft__Quantum__Intrinsic__H__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__H__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__H__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__H__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__H__ctladj__wrapper]
@Microsoft__Quantum__Measurement__MResetZ__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Measurement__MResetZ__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* null, void (%Tuple*, %Tuple*, %Tuple*)* null, void (%Tuple*, %Tuple*, %Tuple*)* null]
@0 = internal constant [11 x i8] c"measured: \00"
@1 = internal constant [3 x i8] c", \00"
@2 = internal constant [2 x i8] c"[\00"
@3 = internal constant [2 x i8] c"]\00"
@PartialApplication__1__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__1__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* null, void (%Tuple*, %Tuple*, %Tuple*)* null, void (%Tuple*, %Tuple*, %Tuple*)* null]
@BV__ParityOperationImpl__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @BV__ParityOperationImpl__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* null, void (%Tuple*, %Tuple*, %Tuple*)* null, void (%Tuple*, %Tuple*, %Tuple*)* null]
@MemoryManagement__1__FunctionTable = internal constant [2 x void (%Tuple*, i32)*] [void (%Tuple*, i32)* @MemoryManagement__1__RefCount, void (%Tuple*, i32)* @MemoryManagement__1__AliasCount]
@4 = internal constant [62 x i8] c"Length of input register must be equal to the pattern length.\00"
@5 = internal constant [39 x i8] c"Secret string successfully discovered!\00"
@6 = internal constant [33 x i8] c"`bits` must be between 0 and 63 \00"
@7 = internal constant [34 x i8] c"`number` must be between 0 and 2^\00"
@8 = internal constant [15 x i8] c" - 1, but was \00"
@9 = internal constant [2 x i8] c".\00"
@PartialApplication__2__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__2__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__2__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__2__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__2__ctladj__wrapper]
@MemoryManagement__2__FunctionTable = internal constant [2 x void (%Tuple*, i32)*] [void (%Tuple*, i32)* @MemoryManagement__2__RefCount, void (%Tuple*, i32)* @MemoryManagement__2__AliasCount]
@PartialApplication__3__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__3__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__3__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__3__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__3__ctladj__wrapper]
@PartialApplication__4__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__4__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__4__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__4__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__4__ctladj__wrapper]
@PartialApplication__5__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__5__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__5__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__5__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__5__ctladj__wrapper]
@PartialApplication__6__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__6__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__6__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__6__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__6__ctladj__wrapper]
@Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____ctladj__wrapper]
@MemoryManagement__3__FunctionTable = internal constant [2 x void (%Tuple*, i32)*] [void (%Tuple*, i32)* @MemoryManagement__3__RefCount, void (%Tuple*, i32)* @MemoryManagement__3__AliasCount]
@PartialApplication__7__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__7__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__7__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__7__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__7__ctladj__wrapper]
@Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____ctladj__wrapper]
@Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__ctladj__wrapper]
@MemoryManagement__4__FunctionTable = internal constant [2 x void (%Tuple*, i32)*] [void (%Tuple*, i32)* @MemoryManagement__4__RefCount, void (%Tuple*, i32)* @MemoryManagement__4__AliasCount]
@PartialApplication__8__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__8__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__8__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__8__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__8__ctladj__wrapper]
@PartialApplication__9__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__9__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__9__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__9__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__9__ctladj__wrapper]
@PartialApplication__10__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__10__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__10__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__10__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__10__ctladj__wrapper]
@PartialApplication__11__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__11__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__11__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__11__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__11__ctladj__wrapper]
@PartialApplication__12__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__12__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__12__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__12__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__12__ctladj__wrapper]
@PartialApplication__13__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__13__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__13__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__13__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Lifted__PartialApplication__13__ctladj__wrapper]
@Microsoft__Quantum__Intrinsic__X__FunctionTable = internal constant [4 x void (%Tuple*, %Tuple*, %Tuple*)*] [void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__X__body__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__X__adj__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__X__ctl__wrapper, void (%Tuple*, %Tuple*, %Tuple*)* @Microsoft__Quantum__Intrinsic__X__ctladj__wrapper]

define internal %Array* @BV__GuessString__body(%Callable* %Uf, i64 %n) {
entry:
  call void @__quantum__rt__capture_update_alias_count(%Callable* %Uf, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %Uf, i32 1)
  %queryRegister = call %Array* @__quantum__rt__qubit_allocate_array(i64 %n)
  call void @__quantum__rt__array_update_alias_count(%Array* %queryRegister, i32 1)
  %target = call %Qubit* @__quantum__rt__qubit_allocate()
  call void @__quantum__qis__x__body(%Qubit* %target)
  %0 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Intrinsic__H__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  call void @Microsoft__Quantum__Canon___4d7973039d1e4c91a6605671cd8151eb_ApplyToEachA__body(%Callable* %0, %Array* %queryRegister)
  call void @__quantum__qis__h__body(%Qubit* %target)
  call void @__quantum__rt__array_update_reference_count(%Array* %queryRegister, i32 1)
  %1 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Qubit* }* getelementptr ({ %Array*, %Qubit* }, { %Array*, %Qubit* }* null, i32 1) to i64))
  %2 = bitcast %Tuple* %1 to { %Array*, %Qubit* }*
  %3 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %2, i32 0, i32 0
  %4 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %2, i32 0, i32 1
  store %Array* %queryRegister, %Array** %3, align 8
  store %Qubit* %target, %Qubit** %4, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %Uf, %Tuple* %1, %Tuple* null)
  %5 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Intrinsic__H__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  call void @Microsoft__Quantum__Canon___4d7973039d1e4c91a6605671cd8151eb_ApplyToEachA__adj(%Callable* %5, %Array* %queryRegister)
  %6 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Measurement__MResetZ__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %resultArray = call %Array* @Microsoft__Quantum__Arrays___aa6b02b551fb4ec5a3d7a05a799446d3_ForEach__body(%Callable* %6, %Array* %queryRegister)
  call void @__quantum__rt__array_update_alias_count(%Array* %resultArray, i32 1)
  %7 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @0, i32 0, i32 0))
  %8 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1, i32 0, i32 0))
  %9 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0))
  call void @__quantum__rt__string_update_reference_count(%String* %9, i32 1)
  %10 = call i64 @__quantum__rt__array_get_size_1d(%Array* %resultArray)
  %11 = sub i64 %10, 1
  br label %header__1

header__1:                                        ; preds = %exiting__1, %entry
  %12 = phi %String* [ %9, %entry ], [ %22, %exiting__1 ]
  %13 = phi i64 [ 0, %entry ], [ %23, %exiting__1 ]
  %14 = icmp sle i64 %13, %11
  br i1 %14, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %15 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %resultArray, i64 %13)
  %16 = bitcast i8* %15 to %Result**
  %17 = load %Result*, %Result** %16, align 8
  %18 = icmp ne %String* %12, %9
  br i1 %18, label %condTrue__1, label %condContinue__1

condTrue__1:                                      ; preds = %body__1
  %19 = call %String* @__quantum__rt__string_concatenate(%String* %12, %String* %8)
  call void @__quantum__rt__string_update_reference_count(%String* %12, i32 -1)
  br label %condContinue__1

condContinue__1:                                  ; preds = %condTrue__1, %body__1
  %20 = phi %String* [ %19, %condTrue__1 ], [ %12, %body__1 ]
  %21 = call %String* @__quantum__rt__result_to_string(%Result* %17)
  %22 = call %String* @__quantum__rt__string_concatenate(%String* %20, %String* %21)
  call void @__quantum__rt__string_update_reference_count(%String* %20, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %21, i32 -1)
  br label %exiting__1

exiting__1:                                       ; preds = %condContinue__1
  %23 = add i64 %13, 1
  br label %header__1

exit__1:                                          ; preds = %header__1
  %24 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @3, i32 0, i32 0))
  %25 = call %String* @__quantum__rt__string_concatenate(%String* %12, %String* %24)
  call void @__quantum__rt__string_update_reference_count(%String* %12, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %24, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %8, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %9, i32 -1)
  %26 = call %String* @__quantum__rt__string_concatenate(%String* %7, %String* %25)
  call void @__quantum__rt__string_update_reference_count(%String* %7, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %25, i32 -1)
  call void @__quantum__rt__message(%String* %26)
  call void @Microsoft__Quantum__Intrinsic__Reset__body(%Qubit* %target)
  call void @__quantum__rt__array_update_alias_count(%Array* %queryRegister, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %resultArray, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %Uf, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %Uf, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %0, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %0, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %queryRegister, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %1, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %5, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %5, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %6, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %6, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %26, i32 -1)
  call void @__quantum__rt__qubit_release_array(%Array* %queryRegister)
  call void @__quantum__rt__qubit_release(%Qubit* %target)
  ret %Array* %resultArray
}

declare void @__quantum__rt__capture_update_alias_count(%Callable*, i32)

declare void @__quantum__rt__callable_update_alias_count(%Callable*, i32)

declare %Qubit* @__quantum__rt__qubit_allocate()

declare %Array* @__quantum__rt__qubit_allocate_array(i64)

declare void @__quantum__rt__qubit_release_array(%Array*)

declare void @__quantum__rt__array_update_alias_count(%Array*, i32)

declare void @__quantum__rt__qubit_release(%Qubit*)

declare void @__quantum__qis__x__body(%Qubit*)

define internal void @Microsoft__Quantum__Canon___4d7973039d1e4c91a6605671cd8151eb_ApplyToEachA__body(%Callable* %singleElementOperation, %Array* %register) {
entry:
  call void @__quantum__rt__capture_update_alias_count(%Callable* %singleElementOperation, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %singleElementOperation, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %register, i32 1)
  %0 = call %Range @Microsoft__Quantum__Arrays___661da715818241c9b03bf414aaf60897_IndexRange__body(%Array* %register)
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

declare %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]*, [2 x void (%Tuple*, i32)*]*, %Tuple*)

declare void @__quantum__qis__h__body(%Qubit*)

declare void @__quantum__rt__callable_invoke(%Callable*, %Tuple*, %Tuple*)

declare void @__quantum__rt__array_update_reference_count(%Array*, i32)

declare %Tuple* @__quantum__rt__tuple_create(i64)

define internal void @Microsoft__Quantum__Canon___4d7973039d1e4c91a6605671cd8151eb_ApplyToEachA__adj(%Callable* %singleElementOperation, %Array* %register) {
entry:
  call void @__quantum__rt__capture_update_alias_count(%Callable* %singleElementOperation, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %singleElementOperation, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %register, i32 1)
  %0 = call %Range @Microsoft__Quantum__Arrays___661da715818241c9b03bf414aaf60897_IndexRange__body(%Array* %register)
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

define internal %Array* @Microsoft__Quantum__Arrays___aa6b02b551fb4ec5a3d7a05a799446d3_ForEach__body(%Callable* %action, %Array* %array) {
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

define internal void @Microsoft__Quantum__Measurement__MResetZ__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Qubit* }*
  %1 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %0, i32 0, i32 0
  %2 = load %Qubit*, %Qubit** %1, align 8
  %3 = call %Result* @Microsoft__Quantum__Measurement__MResetZ__body(%Qubit* %2)
  %4 = bitcast %Tuple* %result-tuple to { %Result* }*
  %5 = getelementptr inbounds { %Result* }, { %Result* }* %4, i32 0, i32 0
  store %Result* %3, %Result** %5, align 8
  ret void
}

declare %String* @__quantum__rt__string_create(i8*)

declare void @__quantum__rt__string_update_reference_count(%String*, i32)

declare i64 @__quantum__rt__array_get_size_1d(%Array*)

declare i8* @__quantum__rt__array_get_element_ptr_1d(%Array*, i64)

declare %String* @__quantum__rt__string_concatenate(%String*, %String*)

declare %String* @__quantum__rt__result_to_string(%Result*)

declare void @__quantum__rt__message(%String*)

define internal void @Microsoft__Quantum__Intrinsic__Reset__body(%Qubit* %qubit) {
entry:
  %0 = call %Result* @Microsoft__Quantum__Intrinsic__M__body(%Qubit* %qubit)
  %1 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Intrinsic__X__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %2 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit* }* getelementptr ({ %Callable*, %Qubit* }, { %Callable*, %Qubit* }* null, i32 1) to i64))
  %3 = bitcast %Tuple* %2 to { %Callable*, %Qubit* }*
  %4 = getelementptr inbounds { %Callable*, %Qubit* }, { %Callable*, %Qubit* }* %3, i32 0, i32 0
  %5 = getelementptr inbounds { %Callable*, %Qubit* }, { %Callable*, %Qubit* }* %3, i32 0, i32 1
  store %Callable* %1, %Callable** %4, align 8
  store %Qubit* %qubit, %Qubit** %5, align 8
  call void @Microsoft__Quantum__ClassicalControl___0948b50b52574d49a200829cb49a754d_ApplyIfOneCA__body(%Result* %0, { %Callable*, %Qubit* }* %3)
  call void @__quantum__rt__result_update_reference_count(%Result* %0, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %1, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %1, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %2, i32 -1)
  ret void
}

declare void @__quantum__rt__capture_update_reference_count(%Callable*, i32)

declare void @__quantum__rt__callable_update_reference_count(%Callable*, i32)

declare void @__quantum__rt__tuple_update_reference_count(%Tuple*, i32)

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

define internal %Result* @Microsoft__Quantum__Measurement__MResetZ__body(%Qubit* %target) {
entry:
  %result = call %Result* @Microsoft__Quantum__Intrinsic__M__body(%Qubit* %target)
  %0 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Intrinsic__X__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %1 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit* }* getelementptr ({ %Callable*, %Qubit* }, { %Callable*, %Qubit* }* null, i32 1) to i64))
  %2 = bitcast %Tuple* %1 to { %Callable*, %Qubit* }*
  %3 = getelementptr inbounds { %Callable*, %Qubit* }, { %Callable*, %Qubit* }* %2, i32 0, i32 0
  %4 = getelementptr inbounds { %Callable*, %Qubit* }, { %Callable*, %Qubit* }* %2, i32 0, i32 1
  store %Callable* %0, %Callable** %3, align 8
  store %Qubit* %target, %Qubit** %4, align 8
  call void @Microsoft__Quantum__ClassicalControl___0948b50b52574d49a200829cb49a754d_ApplyIfOneCA__body(%Result* %result, { %Callable*, %Qubit* }* %2)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %0, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %0, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %1, i32 -1)
  ret %Result* %result
}

define internal %Callable* @BV__ParityOperation__body(%Array* %pattern) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %pattern, i32 1)
  %0 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @BV__ParityOperationImpl__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  call void @__quantum__rt__array_update_reference_count(%Array* %pattern, i32 1)
  %1 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Array* }* getelementptr ({ %Callable*, %Array* }, { %Callable*, %Array* }* null, i32 1) to i64))
  %2 = bitcast %Tuple* %1 to { %Callable*, %Array* }*
  %3 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %2, i32 0, i32 0
  %4 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %2, i32 0, i32 1
  store %Callable* %0, %Callable** %3, align 8
  store %Array* %pattern, %Array** %4, align 8
  %5 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__1__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__1__FunctionTable, %Tuple* %1)
  call void @__quantum__rt__array_update_alias_count(%Array* %pattern, i32 -1)
  ret %Callable* %5
}

define internal void @Lifted__PartialApplication__1__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %1 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 1
  %2 = load %Array*, %Array** %1, align 8
  %3 = bitcast %Tuple* %arg-tuple to { %Array*, %Qubit* }*
  %4 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %3, i32 0, i32 0
  %5 = load %Array*, %Array** %4, align 8
  %6 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %3, i32 0, i32 1
  %7 = load %Qubit*, %Qubit** %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Array*, %Qubit* }* getelementptr ({ %Array*, %Array*, %Qubit* }, { %Array*, %Array*, %Qubit* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { %Array*, %Array*, %Qubit* }*
  %10 = getelementptr inbounds { %Array*, %Array*, %Qubit* }, { %Array*, %Array*, %Qubit* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { %Array*, %Array*, %Qubit* }, { %Array*, %Array*, %Qubit* }* %9, i32 0, i32 1
  %12 = getelementptr inbounds { %Array*, %Array*, %Qubit* }, { %Array*, %Array*, %Qubit* }* %9, i32 0, i32 2
  store %Array* %2, %Array** %10, align 8
  store %Array* %5, %Array** %11, align 8
  store %Qubit* %7, %Qubit** %12, align 8
  %13 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 0
  %14 = load %Callable*, %Callable** %13, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %14, %Tuple* %8, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %8, i32 -1)
  ret void
}

define internal void @BV__ParityOperationImpl__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Array*, %Qubit* }*
  %1 = getelementptr inbounds { %Array*, %Array*, %Qubit* }, { %Array*, %Array*, %Qubit* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Array*, %Qubit* }, { %Array*, %Array*, %Qubit* }* %0, i32 0, i32 1
  %3 = getelementptr inbounds { %Array*, %Array*, %Qubit* }, { %Array*, %Array*, %Qubit* }* %0, i32 0, i32 2
  %4 = load %Array*, %Array** %1, align 8
  %5 = load %Array*, %Array** %2, align 8
  %6 = load %Qubit*, %Qubit** %3, align 8
  call void @BV__ParityOperationImpl__body(%Array* %4, %Array* %5, %Qubit* %6)
  ret void
}

define internal void @MemoryManagement__1__RefCount(%Tuple* %capture-tuple, i32 %count-change) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %1 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 0
  %2 = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_reference_count(%Callable* %2, i32 %count-change)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %2, i32 %count-change)
  %3 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 1
  %4 = load %Array*, %Array** %3, align 8
  call void @__quantum__rt__array_update_reference_count(%Array* %4, i32 %count-change)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %capture-tuple, i32 %count-change)
  ret void
}

define internal void @MemoryManagement__1__AliasCount(%Tuple* %capture-tuple, i32 %count-change) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %1 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 0
  %2 = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %2, i32 %count-change)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %2, i32 %count-change)
  %3 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 1
  %4 = load %Array*, %Array** %3, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %4, i32 %count-change)
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %capture-tuple, i32 %count-change)
  ret void
}

define internal void @BV__ParityOperationImpl__body(%Array* %pattern, %Array* %queryRegister, %Qubit* %target) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %pattern, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %queryRegister, i32 1)
  %0 = call i64 @__quantum__rt__array_get_size_1d(%Array* %queryRegister)
  %1 = call i64 @__quantum__rt__array_get_size_1d(%Array* %pattern)
  %2 = icmp ne i64 %0, %1
  br i1 %2, label %then0__1, label %continue__1

then0__1:                                         ; preds = %entry
  %3 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @4, i32 0, i32 0))
  call void @__quantum__rt__array_update_alias_count(%Array* %pattern, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %queryRegister, i32 -1)
  call void @__quantum__rt__fail(%String* %3)
  unreachable

continue__1:                                      ; preds = %entry
  %4 = call %Array* @Microsoft__Quantum__Arrays___f9b583a3920046c885771b943637142b_Zipped__body(%Array* %pattern, %Array* %queryRegister)
  %5 = call i64 @__quantum__rt__array_get_size_1d(%Array* %4)
  %6 = sub i64 %5, 1
  br label %header__1

header__1:                                        ; preds = %exiting__1, %continue__1
  %7 = phi i64 [ 0, %continue__1 ], [ %16, %exiting__1 ]
  %8 = icmp sle i64 %7, %6
  br i1 %8, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %9 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %4, i64 %7)
  %10 = bitcast i8* %9 to { i1, %Qubit* }**
  %11 = load { i1, %Qubit* }*, { i1, %Qubit* }** %10, align 8
  %12 = getelementptr inbounds { i1, %Qubit* }, { i1, %Qubit* }* %11, i32 0, i32 0
  %patternBit = load i1, i1* %12, align 1
  %13 = getelementptr inbounds { i1, %Qubit* }, { i1, %Qubit* }* %11, i32 0, i32 1
  %controlQubit = load %Qubit*, %Qubit** %13, align 8
  br i1 %patternBit, label %then0__2, label %continue__2

then0__2:                                         ; preds = %body__1
  %__controlQubits__ = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 1)
  %14 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %__controlQubits__, i64 0)
  %15 = bitcast i8* %14 to %Qubit**
  store %Qubit* %controlQubit, %Qubit** %15, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  call void @__quantum__qis__x__ctl(%Array* %__controlQubits__, %Qubit* %target)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__, i32 -1)
  br label %continue__2

continue__2:                                      ; preds = %then0__2, %body__1
  br label %exiting__1

exiting__1:                                       ; preds = %continue__2
  %16 = add i64 %7, 1
  br label %header__1

exit__1:                                          ; preds = %header__1
  call void @__quantum__rt__array_update_alias_count(%Array* %pattern, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %queryRegister, i32 -1)
  %17 = sub i64 %5, 1
  br label %header__2

header__2:                                        ; preds = %exiting__2, %exit__1
  %18 = phi i64 [ 0, %exit__1 ], [ %24, %exiting__2 ]
  %19 = icmp sle i64 %18, %17
  br i1 %19, label %body__2, label %exit__2

body__2:                                          ; preds = %header__2
  %20 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %4, i64 %18)
  %21 = bitcast i8* %20 to { i1, %Qubit* }**
  %22 = load { i1, %Qubit* }*, { i1, %Qubit* }** %21, align 8
  %23 = bitcast { i1, %Qubit* }* %22 to %Tuple*
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %23, i32 -1)
  br label %exiting__2

exiting__2:                                       ; preds = %body__2
  %24 = add i64 %18, 1
  br label %header__2

exit__2:                                          ; preds = %header__2
  call void @__quantum__rt__array_update_reference_count(%Array* %4, i32 -1)
  ret void
}

declare void @__quantum__rt__tuple_update_alias_count(%Tuple*, i32)

declare void @__quantum__rt__fail(%String*)

define internal %Array* @Microsoft__Quantum__Arrays___f9b583a3920046c885771b943637142b_Zipped__body(%Array* %left, %Array* %right) {
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
  %6 = bitcast i8* %5 to i1*
  %7 = load i1, i1* %6, align 1
  %8 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %right, i64 0)
  %9 = bitcast i8* %8 to %Qubit**
  %10 = load %Qubit*, %Qubit** %9, align 8
  %11 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ i1, %Qubit* }* getelementptr ({ i1, %Qubit* }, { i1, %Qubit* }* null, i32 1) to i64))
  %12 = bitcast %Tuple* %11 to { i1, %Qubit* }*
  %13 = getelementptr inbounds { i1, %Qubit* }, { i1, %Qubit* }* %12, i32 0, i32 0
  %14 = getelementptr inbounds { i1, %Qubit* }, { i1, %Qubit* }* %12, i32 0, i32 1
  store i1 %7, i1* %13, align 1
  store %Qubit* %10, %Qubit** %14, align 8
  %15 = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 %nElements)
  %16 = sub i64 %nElements, 1
  br label %header__1

header__1:                                        ; preds = %exiting__1, %continue__1
  %17 = phi i64 [ 0, %continue__1 ], [ %21, %exiting__1 ]
  %18 = icmp sle i64 %17, %16
  br i1 %18, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %19 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %15, i64 %17)
  %20 = bitcast i8* %19 to { i1, %Qubit* }**
  store { i1, %Qubit* }* %12, { i1, %Qubit* }** %20, align 8
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
  %26 = bitcast i8* %25 to { i1, %Qubit* }**
  %27 = load { i1, %Qubit* }*, { i1, %Qubit* }** %26, align 8
  %28 = bitcast { i1, %Qubit* }* %27 to %Tuple*
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
  %35 = bitcast i8* %34 to i1*
  %36 = load i1, i1* %35, align 1
  %37 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %right, i64 %idxElement)
  %38 = bitcast i8* %37 to %Qubit**
  %39 = load %Qubit*, %Qubit** %38, align 8
  %40 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ i1, %Qubit* }* getelementptr ({ i1, %Qubit* }, { i1, %Qubit* }* null, i32 1) to i64))
  %41 = bitcast %Tuple* %40 to { i1, %Qubit* }*
  %42 = getelementptr inbounds { i1, %Qubit* }, { i1, %Qubit* }* %41, i32 0, i32 0
  %43 = getelementptr inbounds { i1, %Qubit* }, { i1, %Qubit* }* %41, i32 0, i32 1
  store i1 %36, i1* %42, align 1
  store %Qubit* %39, %Qubit** %43, align 8
  %44 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %33, i64 %idxElement)
  %45 = bitcast i8* %44 to { i1, %Qubit* }**
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %40, i32 1)
  %46 = load { i1, %Qubit* }*, { i1, %Qubit* }** %45, align 8
  %47 = bitcast { i1, %Qubit* }* %46 to %Tuple*
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %47, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %47, i32 -1)
  store { i1, %Qubit* }* %41, { i1, %Qubit* }** %45, align 8
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
  %55 = bitcast i8* %54 to { i1, %Qubit* }**
  %56 = load { i1, %Qubit* }*, { i1, %Qubit* }** %55, align 8
  %57 = bitcast { i1, %Qubit* }* %56 to %Tuple*
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

declare %Array* @__quantum__rt__array_create_1d(i32, i64)

declare void @__quantum__qis__x__ctl(%Array*, %Qubit*)

define internal %Array* @BV__RunBernsteinVazirani__body(i64 %nQubits, i64 %patternInt) {
entry:
  %pattern = call %Array* @Microsoft__Quantum__Convert__IntAsBoolArray__body(i64 %patternInt, i64 %nQubits)
  call void @__quantum__rt__array_update_alias_count(%Array* %pattern, i32 1)
  %0 = call %Callable* @BV__ParityOperation__body(%Array* %pattern)
  %result = call %Array* @BV__GuessString__body(%Callable* %0, i64 %nQubits)
  call void @__quantum__rt__array_update_alias_count(%Array* %result, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %pattern, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %result, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %pattern, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %0, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %0, i32 -1)
  ret %Array* %result
}

define internal %Array* @Microsoft__Quantum__Convert__IntAsBoolArray__body(i64 %number, i64 %bits) {
entry:
  %tempInt = alloca i64, align 8
  %outputBits = alloca %Array*, align 8
  %0 = icmp sge i64 %bits, 0
  br i1 %0, label %condTrue__1, label %condContinue__1

condTrue__1:                                      ; preds = %entry
  %1 = icmp sle i64 %bits, 63
  br label %condContinue__1

condContinue__1:                                  ; preds = %condTrue__1, %entry
  %2 = phi i1 [ %1, %condTrue__1 ], [ %0, %entry ]
  %3 = trunc i64 %bits to i32
  %4 = call double @llvm.powi.f64.i32(double 2.000000e+00, i32 %3)
  %5 = fptosi double %4 to i64
  %6 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @6, i32 0, i32 0))
  %7 = call %String* @__quantum__rt__int_to_string(i64 %5)
  %8 = call %String* @__quantum__rt__string_concatenate(%String* %6, %String* %7)
  call void @__quantum__rt__string_update_reference_count(%String* %6, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %7, i32 -1)
  call void @Microsoft__Quantum__Diagnostics__Fact__body(i1 %2, %String* %8)
  %9 = icmp slt i64 %bits, 63
  br i1 %9, label %condTrue__2, label %condFalse__1

condTrue__2:                                      ; preds = %condContinue__1
  %10 = shl i64 1, %bits
  br label %condContinue__2

condFalse__1:                                     ; preds = %condContinue__1
  br label %condContinue__2

condContinue__2:                                  ; preds = %condFalse__1, %condTrue__2
  %max = phi i64 [ %10, %condTrue__2 ], [ 9223372036854775807, %condFalse__1 ]
  %11 = icmp sge i64 %number, 0
  br i1 %11, label %condTrue__3, label %condContinue__3

condTrue__3:                                      ; preds = %condContinue__2
  %12 = icmp sle i64 %number, %max
  br label %condContinue__3

condContinue__3:                                  ; preds = %condTrue__3, %condContinue__2
  %13 = phi i1 [ %12, %condTrue__3 ], [ %11, %condContinue__2 ]
  %14 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @7, i32 0, i32 0))
  %15 = call %String* @__quantum__rt__int_to_string(i64 %bits)
  %16 = call %String* @__quantum__rt__string_concatenate(%String* %14, %String* %15)
  call void @__quantum__rt__string_update_reference_count(%String* %14, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %15, i32 -1)
  %17 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0))
  %18 = call %String* @__quantum__rt__string_concatenate(%String* %16, %String* %17)
  call void @__quantum__rt__string_update_reference_count(%String* %16, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %17, i32 -1)
  %19 = call %String* @__quantum__rt__int_to_string(i64 %number)
  %20 = call %String* @__quantum__rt__string_concatenate(%String* %18, %String* %19)
  call void @__quantum__rt__string_update_reference_count(%String* %18, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %19, i32 -1)
  %21 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @9, i32 0, i32 0))
  %22 = call %String* @__quantum__rt__string_concatenate(%String* %20, %String* %21)
  call void @__quantum__rt__string_update_reference_count(%String* %20, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %21, i32 -1)
  call void @Microsoft__Quantum__Diagnostics__Fact__body(i1 %13, %String* %22)
  %23 = call %Array* @__quantum__rt__array_create_1d(i32 1, i64 %bits)
  %24 = sub i64 %bits, 1
  br label %header__1

header__1:                                        ; preds = %exiting__1, %condContinue__3
  %25 = phi i64 [ 0, %condContinue__3 ], [ %29, %exiting__1 ]
  %26 = icmp sle i64 %25, %24
  br i1 %26, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %27 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %23, i64 %25)
  %28 = bitcast i8* %27 to i1*
  store i1 false, i1* %28, align 1
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %29 = add i64 %25, 1
  br label %header__1

exit__1:                                          ; preds = %header__1
  store %Array* %23, %Array** %outputBits, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %23, i32 1)
  store i64 %number, i64* %tempInt, align 4
  %30 = sub i64 %bits, 1
  br label %header__2

header__2:                                        ; preds = %exiting__2, %exit__1
  %idxBit = phi i64 [ 0, %exit__1 ], [ %41, %exiting__2 ]
  %31 = icmp sle i64 %idxBit, %30
  br i1 %31, label %body__2, label %exit__2

body__2:                                          ; preds = %header__2
  %32 = load %Array*, %Array** %outputBits, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %32, i32 -1)
  %33 = call %Array* @__quantum__rt__array_copy(%Array* %32, i1 false)
  %34 = load i64, i64* %tempInt, align 4
  %35 = srem i64 %34, 2
  %36 = icmp eq i64 %35, 0
  %37 = select i1 %36, i1 false, i1 true
  %38 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %33, i64 %idxBit)
  %39 = bitcast i8* %38 to i1*
  store i1 %37, i1* %39, align 1
  call void @__quantum__rt__array_update_alias_count(%Array* %33, i32 1)
  store %Array* %33, %Array** %outputBits, align 8
  %40 = sdiv i64 %34, 2
  store i64 %40, i64* %tempInt, align 4
  call void @__quantum__rt__array_update_reference_count(%Array* %32, i32 -1)
  br label %exiting__2

exiting__2:                                       ; preds = %body__2
  %41 = add i64 %idxBit, 1
  br label %header__2

exit__2:                                          ; preds = %header__2
  %42 = load %Array*, %Array** %outputBits, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %42, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %8, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %22, i32 -1)
  ret %Array* %42
}

define internal %Array* @BV__RunProgram__body(i64 %secretString, i64 %nQubits) {
entry:
  %guessedString = call %Array* @BV__RunBernsteinVazirani__body(i64 %nQubits, i64 %secretString)
  call void @__quantum__rt__array_update_alias_count(%Array* %guessedString, i32 1)
  %0 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @5, i32 0, i32 0))
  call void @__quantum__rt__message(%String* %0)
  call void @__quantum__rt__array_update_alias_count(%Array* %guessedString, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %0, i32 -1)
  ret %Array* %guessedString
}

define internal void @Microsoft__Quantum__Diagnostics__Fact__body(i1 %actual, %String* %message) {
entry:
  %0 = xor i1 %actual, true
  br i1 %0, label %then0__1, label %continue__1

then0__1:                                         ; preds = %entry
  call void @__quantum__rt__string_update_reference_count(%String* %message, i32 1)
  call void @__quantum__rt__fail(%String* %message)
  unreachable

continue__1:                                      ; preds = %entry
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.powi.f64.i32(double, i32) #0

declare %String* @__quantum__rt__int_to_string(i64)

declare %Array* @__quantum__rt__array_copy(%Array*, i1)

define internal void @Microsoft__Quantum__ClassicalControl__ApplyIfElseIntrinsic__body(%Result* %measurementResult, %Callable* %onResultZeroOp, %Callable* %onResultOneOp) {
entry:
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp, i32 1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__qis__applyifelseintrinsic__body(%Result* %measurementResult, %Callable* %onResultZeroOp, %Callable* %onResultOneOp)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  ret void
}

declare void @__quantum__qis__applyifelseintrinsic__body(%Result*, %Callable*, %Callable*)

define internal void @Microsoft__Quantum__ClassicalControl__ApplyIfElseIntrinsicCA__body(%Result* %measurementResult, %Callable* %onResultZeroOp, %Callable* %onResultOneOp) {
entry:
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp, i32 1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp, i32 1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__qis__applyifelseintrinsic__body(%Result* %measurementResult, %Callable* %onResultZeroOp, %Callable* %onResultOneOp)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl__ApplyIfElseIntrinsicCA__adj(%Result* %measurementResult, %Callable* %onResultZeroOp, %Callable* %onResultOneOp) {
entry:
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp, i32 1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 1)
  %onResultZeroOp__1 = call %Callable* @__quantum__rt__callable_copy(%Callable* %onResultZeroOp, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %onResultZeroOp__1, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %onResultZeroOp__1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp__1, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp__1, i32 1)
  %onResultOneOp__1 = call %Callable* @__quantum__rt__callable_copy(%Callable* %onResultOneOp, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %onResultOneOp__1, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %onResultOneOp__1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp__1, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp__1, i32 1)
  call void @__quantum__qis__applyifelseintrinsic__body(%Result* %measurementResult, %Callable* %onResultZeroOp__1, %Callable* %onResultOneOp__1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp__1, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp__1, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp__1, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp__1, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %onResultZeroOp__1, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %onResultZeroOp__1, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %onResultOneOp__1, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %onResultOneOp__1, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  ret void
}

declare %Callable* @__quantum__rt__callable_copy(%Callable*, i1)

declare void @__quantum__rt__callable_make_adjoint(%Callable*)

define internal void @Microsoft__Quantum__ClassicalControl__ApplyIfElseIntrinsicCA__ctl(%Array* %ctls, { %Result*, %Callable*, %Callable* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %ctls, i32 1)
  %1 = getelementptr inbounds { %Result*, %Callable*, %Callable* }, { %Result*, %Callable*, %Callable* }* %0, i32 0, i32 0
  %measurementResult = load %Result*, %Result** %1, align 8
  %2 = getelementptr inbounds { %Result*, %Callable*, %Callable* }, { %Result*, %Callable*, %Callable* }* %0, i32 0, i32 1
  %onResultZeroOp = load %Callable*, %Callable** %2, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp, i32 1)
  %3 = getelementptr inbounds { %Result*, %Callable*, %Callable* }, { %Result*, %Callable*, %Callable* }* %0, i32 0, i32 2
  %onResultOneOp = load %Callable*, %Callable** %3, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 1)
  %4 = call %Callable* @__quantum__rt__callable_copy(%Callable* %onResultZeroOp, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %4, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %4)
  call void @__quantum__rt__array_update_reference_count(%Array* %ctls, i32 1)
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Array* }* getelementptr ({ %Callable*, %Array* }, { %Callable*, %Array* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Array* }*
  %7 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %6, i32 0, i32 1
  store %Callable* %4, %Callable** %7, align 8
  store %Array* %ctls, %Array** %8, align 8
  %onResultZeroOp__1 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__2__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__2__FunctionTable, %Tuple* %5)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp__1, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp__1, i32 1)
  %9 = call %Callable* @__quantum__rt__callable_copy(%Callable* %onResultOneOp, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %9, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %9)
  call void @__quantum__rt__array_update_reference_count(%Array* %ctls, i32 1)
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Array* }* getelementptr ({ %Callable*, %Array* }, { %Callable*, %Array* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Array* }*
  %12 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %11, i32 0, i32 1
  store %Callable* %9, %Callable** %12, align 8
  store %Array* %ctls, %Array** %13, align 8
  %onResultOneOp__1 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__3__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__2__FunctionTable, %Tuple* %10)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp__1, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp__1, i32 1)
  call void @__quantum__qis__applyifelseintrinsic__body(%Result* %measurementResult, %Callable* %onResultZeroOp__1, %Callable* %onResultOneOp__1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp__1, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp__1, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp__1, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp__1, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %onResultZeroOp__1, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %onResultZeroOp__1, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %onResultOneOp__1, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %onResultOneOp__1, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %ctls, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__2__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %1 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 1
  %2 = load %Array*, %Array** %1, align 8
  %3 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %4 = bitcast %Tuple* %3 to { %Array*, %Tuple* }*
  %5 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 0
  %6 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 1
  store %Array* %2, %Array** %5, align 8
  store %Tuple* null, %Tuple** %6, align 8
  %7 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 0
  %8 = load %Callable*, %Callable** %7, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %8, %Tuple* %3, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %3, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__2__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %1 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 1
  %2 = load %Array*, %Array** %1, align 8
  %3 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %4 = bitcast %Tuple* %3 to { %Array*, %Tuple* }*
  %5 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 0
  %6 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 1
  store %Array* %2, %Array** %5, align 8
  store %Tuple* null, %Tuple** %6, align 8
  %7 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 0
  %8 = load %Callable*, %Callable** %7, align 8
  %9 = call %Callable* @__quantum__rt__callable_copy(%Callable* %8, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %9, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %9)
  call void @__quantum__rt__callable_invoke(%Callable* %9, %Tuple* %3, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %3, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %9, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %9, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__2__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %6 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 1
  %7 = load %Array*, %Array** %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { %Array*, %Tuple* }*
  %10 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 1
  store %Array* %7, %Array** %10, align 8
  store %Tuple* %4, %Tuple** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Array*, %Tuple* }* }* getelementptr ({ %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { %Array*, %Tuple* }* }*
  %14 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { %Array*, %Tuple* }* %9, { %Array*, %Tuple* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 0
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
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %6 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 1
  %7 = load %Array*, %Array** %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { %Array*, %Tuple* }*
  %10 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 1
  store %Array* %7, %Array** %10, align 8
  store %Tuple* %4, %Tuple** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Array*, %Tuple* }* }* getelementptr ({ %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { %Array*, %Tuple* }* }*
  %14 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { %Array*, %Tuple* }* %9, { %Array*, %Tuple* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 0
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

declare void @__quantum__rt__callable_make_controlled(%Callable*)

define internal void @MemoryManagement__2__RefCount(%Tuple* %capture-tuple, i32 %count-change) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %1 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 0
  %2 = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_reference_count(%Callable* %2, i32 %count-change)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %2, i32 %count-change)
  %3 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 1
  %4 = load %Array*, %Array** %3, align 8
  call void @__quantum__rt__array_update_reference_count(%Array* %4, i32 %count-change)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %capture-tuple, i32 %count-change)
  ret void
}

define internal void @MemoryManagement__2__AliasCount(%Tuple* %capture-tuple, i32 %count-change) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %1 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 0
  %2 = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %2, i32 %count-change)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %2, i32 %count-change)
  %3 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 1
  %4 = load %Array*, %Array** %3, align 8
  call void @__quantum__rt__array_update_alias_count(%Array* %4, i32 %count-change)
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %capture-tuple, i32 %count-change)
  ret void
}

define internal void @Lifted__PartialApplication__3__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %1 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 1
  %2 = load %Array*, %Array** %1, align 8
  %3 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %4 = bitcast %Tuple* %3 to { %Array*, %Tuple* }*
  %5 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 0
  %6 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 1
  store %Array* %2, %Array** %5, align 8
  store %Tuple* null, %Tuple** %6, align 8
  %7 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 0
  %8 = load %Callable*, %Callable** %7, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %8, %Tuple* %3, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %3, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__3__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %1 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 1
  %2 = load %Array*, %Array** %1, align 8
  %3 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %4 = bitcast %Tuple* %3 to { %Array*, %Tuple* }*
  %5 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 0
  %6 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 1
  store %Array* %2, %Array** %5, align 8
  store %Tuple* null, %Tuple** %6, align 8
  %7 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 0
  %8 = load %Callable*, %Callable** %7, align 8
  %9 = call %Callable* @__quantum__rt__callable_copy(%Callable* %8, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %9, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %9)
  call void @__quantum__rt__callable_invoke(%Callable* %9, %Tuple* %3, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %3, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %9, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %9, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__3__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %6 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 1
  %7 = load %Array*, %Array** %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { %Array*, %Tuple* }*
  %10 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 1
  store %Array* %7, %Array** %10, align 8
  store %Tuple* %4, %Tuple** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Array*, %Tuple* }* }* getelementptr ({ %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { %Array*, %Tuple* }* }*
  %14 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { %Array*, %Tuple* }* %9, { %Array*, %Tuple* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 0
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
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %6 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 1
  %7 = load %Array*, %Array** %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { %Array*, %Tuple* }*
  %10 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 1
  store %Array* %7, %Array** %10, align 8
  store %Tuple* %4, %Tuple** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Array*, %Tuple* }* }* getelementptr ({ %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { %Array*, %Tuple* }* }*
  %14 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { %Array*, %Tuple* }* %9, { %Array*, %Tuple* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 0
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

define internal void @Microsoft__Quantum__ClassicalControl__ApplyIfElseIntrinsicCA__ctladj(%Array* %ctls, { %Result*, %Callable*, %Callable* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %ctls, i32 1)
  %1 = getelementptr inbounds { %Result*, %Callable*, %Callable* }, { %Result*, %Callable*, %Callable* }* %0, i32 0, i32 0
  %measurementResult = load %Result*, %Result** %1, align 8
  %2 = getelementptr inbounds { %Result*, %Callable*, %Callable* }, { %Result*, %Callable*, %Callable* }* %0, i32 0, i32 1
  %onResultZeroOp = load %Callable*, %Callable** %2, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp, i32 1)
  %3 = getelementptr inbounds { %Result*, %Callable*, %Callable* }, { %Result*, %Callable*, %Callable* }* %0, i32 0, i32 2
  %onResultOneOp = load %Callable*, %Callable** %3, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 1)
  %4 = call %Callable* @__quantum__rt__callable_copy(%Callable* %onResultZeroOp, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %4, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %4)
  call void @__quantum__rt__callable_make_controlled(%Callable* %4)
  call void @__quantum__rt__array_update_reference_count(%Array* %ctls, i32 1)
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Array* }* getelementptr ({ %Callable*, %Array* }, { %Callable*, %Array* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Array* }*
  %7 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %6, i32 0, i32 1
  store %Callable* %4, %Callable** %7, align 8
  store %Array* %ctls, %Array** %8, align 8
  %onResultZeroOp__1 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__4__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__2__FunctionTable, %Tuple* %5)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp__1, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp__1, i32 1)
  %9 = call %Callable* @__quantum__rt__callable_copy(%Callable* %onResultOneOp, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %9, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %9)
  call void @__quantum__rt__callable_make_controlled(%Callable* %9)
  call void @__quantum__rt__array_update_reference_count(%Array* %ctls, i32 1)
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Array* }* getelementptr ({ %Callable*, %Array* }, { %Callable*, %Array* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Array* }*
  %12 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %11, i32 0, i32 1
  store %Callable* %9, %Callable** %12, align 8
  store %Array* %ctls, %Array** %13, align 8
  %onResultOneOp__1 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__5__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__2__FunctionTable, %Tuple* %10)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp__1, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp__1, i32 1)
  call void @__quantum__qis__applyifelseintrinsic__body(%Result* %measurementResult, %Callable* %onResultZeroOp__1, %Callable* %onResultOneOp__1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp__1, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp__1, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp__1, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp__1, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %onResultZeroOp__1, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %onResultZeroOp__1, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %onResultOneOp__1, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %onResultOneOp__1, i32 -1)
  call void @__quantum__rt__array_update_alias_count(%Array* %ctls, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultZeroOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultZeroOp, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__4__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %1 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 1
  %2 = load %Array*, %Array** %1, align 8
  %3 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %4 = bitcast %Tuple* %3 to { %Array*, %Tuple* }*
  %5 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 0
  %6 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 1
  store %Array* %2, %Array** %5, align 8
  store %Tuple* null, %Tuple** %6, align 8
  %7 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 0
  %8 = load %Callable*, %Callable** %7, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %8, %Tuple* %3, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %3, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__4__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %1 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 1
  %2 = load %Array*, %Array** %1, align 8
  %3 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %4 = bitcast %Tuple* %3 to { %Array*, %Tuple* }*
  %5 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 0
  %6 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 1
  store %Array* %2, %Array** %5, align 8
  store %Tuple* null, %Tuple** %6, align 8
  %7 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 0
  %8 = load %Callable*, %Callable** %7, align 8
  %9 = call %Callable* @__quantum__rt__callable_copy(%Callable* %8, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %9, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %9)
  call void @__quantum__rt__callable_invoke(%Callable* %9, %Tuple* %3, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %3, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %9, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %9, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__4__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %6 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 1
  %7 = load %Array*, %Array** %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { %Array*, %Tuple* }*
  %10 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 1
  store %Array* %7, %Array** %10, align 8
  store %Tuple* %4, %Tuple** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Array*, %Tuple* }* }* getelementptr ({ %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { %Array*, %Tuple* }* }*
  %14 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { %Array*, %Tuple* }* %9, { %Array*, %Tuple* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 0
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
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %6 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 1
  %7 = load %Array*, %Array** %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { %Array*, %Tuple* }*
  %10 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 1
  store %Array* %7, %Array** %10, align 8
  store %Tuple* %4, %Tuple** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Array*, %Tuple* }* }* getelementptr ({ %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { %Array*, %Tuple* }* }*
  %14 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { %Array*, %Tuple* }* %9, { %Array*, %Tuple* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 0
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

define internal void @Lifted__PartialApplication__5__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %1 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 1
  %2 = load %Array*, %Array** %1, align 8
  %3 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %4 = bitcast %Tuple* %3 to { %Array*, %Tuple* }*
  %5 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 0
  %6 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 1
  store %Array* %2, %Array** %5, align 8
  store %Tuple* null, %Tuple** %6, align 8
  %7 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 0
  %8 = load %Callable*, %Callable** %7, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %8, %Tuple* %3, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %3, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__5__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %1 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 1
  %2 = load %Array*, %Array** %1, align 8
  %3 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %4 = bitcast %Tuple* %3 to { %Array*, %Tuple* }*
  %5 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 0
  %6 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %4, i32 0, i32 1
  store %Array* %2, %Array** %5, align 8
  store %Tuple* null, %Tuple** %6, align 8
  %7 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %0, i32 0, i32 0
  %8 = load %Callable*, %Callable** %7, align 8
  %9 = call %Callable* @__quantum__rt__callable_copy(%Callable* %8, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %9, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %9)
  call void @__quantum__rt__callable_invoke(%Callable* %9, %Tuple* %3, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %3, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %9, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %9, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__5__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %6 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 1
  %7 = load %Array*, %Array** %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { %Array*, %Tuple* }*
  %10 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 1
  store %Array* %7, %Array** %10, align 8
  store %Tuple* %4, %Tuple** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Array*, %Tuple* }* }* getelementptr ({ %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { %Array*, %Tuple* }* }*
  %14 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { %Array*, %Tuple* }* %9, { %Array*, %Tuple* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 0
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

define internal void @Lifted__PartialApplication__5__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Array* }*
  %6 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 1
  %7 = load %Array*, %Array** %6, align 8
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %9 = bitcast %Tuple* %8 to { %Array*, %Tuple* }*
  %10 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 0
  %11 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %9, i32 0, i32 1
  store %Array* %7, %Array** %10, align 8
  store %Tuple* %4, %Tuple** %11, align 8
  %12 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Array*, %Tuple* }* }* getelementptr ({ %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* null, i32 1) to i64))
  %13 = bitcast %Tuple* %12 to { %Array*, { %Array*, %Tuple* }* }*
  %14 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { %Array*, { %Array*, %Tuple* }* }, { %Array*, { %Array*, %Tuple* }* }* %13, i32 0, i32 1
  store %Array* %3, %Array** %14, align 8
  store { %Array*, %Tuple* }* %9, { %Array*, %Tuple* }** %15, align 8
  %16 = getelementptr inbounds { %Callable*, %Array* }, { %Callable*, %Array* }* %5, i32 0, i32 0
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

define internal void @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____body(%Callable* %op, %Qubit* %arg, %Tuple* %aux) {
entry:
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 1)
  %0 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Qubit* }* getelementptr ({ %Qubit* }, { %Qubit* }* null, i32 1) to i64))
  %1 = bitcast %Tuple* %0 to { %Qubit* }*
  %2 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %1, i32 0, i32 0
  store %Qubit* %arg, %Qubit** %2, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %op, %Tuple* %0, %Tuple* null)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %0, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____adj(%Callable* %op, %Qubit* %arg, %Tuple* %aux) {
entry:
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 1)
  %0 = call %Callable* @__quantum__rt__callable_copy(%Callable* %op, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %0, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %0)
  %1 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Qubit* }* getelementptr ({ %Qubit* }, { %Qubit* }* null, i32 1) to i64))
  %2 = bitcast %Tuple* %1 to { %Qubit* }*
  %3 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %2, i32 0, i32 0
  store %Qubit* %arg, %Qubit** %3, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %0, %Tuple* %1, %Tuple* null)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %0, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %0, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %1, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____ctl(%Array* %__controlQubits__, { %Callable*, %Qubit*, %Tuple* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %0, i32 0, i32 0
  %op = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 1)
  %2 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %0, i32 0, i32 1
  %arg = load %Qubit*, %Qubit** %2, align 8
  %3 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %0, i32 0, i32 2
  %aux = load %Tuple*, %Tuple** %3, align 8
  %4 = call %Callable* @__quantum__rt__callable_copy(%Callable* %op, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %4, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %4)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__, i32 1)
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Qubit* }* getelementptr ({ %Array*, %Qubit* }, { %Array*, %Qubit* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Array*, %Qubit* }*
  %7 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %6, i32 0, i32 1
  store %Array* %__controlQubits__, %Array** %7, align 8
  store %Qubit* %arg, %Qubit** %8, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %4, %Tuple* %5, %Tuple* null)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %4, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %4, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____ctladj(%Array* %__controlQubits__, { %Callable*, %Qubit*, %Tuple* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %0, i32 0, i32 0
  %op = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 1)
  %2 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %0, i32 0, i32 1
  %arg = load %Qubit*, %Qubit** %2, align 8
  %3 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %0, i32 0, i32 2
  %aux = load %Tuple*, %Tuple** %3, align 8
  %4 = call %Callable* @__quantum__rt__callable_copy(%Callable* %op, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %4, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %4)
  call void @__quantum__rt__callable_make_controlled(%Callable* %4)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__, i32 1)
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Qubit* }* getelementptr ({ %Array*, %Qubit* }, { %Array*, %Qubit* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Array*, %Qubit* }*
  %7 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %6, i32 0, i32 1
  store %Array* %__controlQubits__, %Array** %7, align 8
  store %Qubit* %arg, %Qubit** %8, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %4, %Tuple* %5, %Tuple* null)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %4, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %4, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____body(%Callable* %op, %Tuple* %arg, %Tuple* %aux) {
entry:
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 1)
  call void @__quantum__rt__callable_invoke(%Callable* %op, %Tuple* null, %Tuple* null)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____adj(%Callable* %op, %Tuple* %arg, %Tuple* %aux) {
entry:
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 1)
  %0 = call %Callable* @__quantum__rt__callable_copy(%Callable* %op, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %0, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %0)
  call void @__quantum__rt__callable_invoke(%Callable* %0, %Tuple* null, %Tuple* null)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %0, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %0, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____ctl(%Array* %__controlQubits__, { %Callable*, %Tuple*, %Tuple* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %0, i32 0, i32 0
  %op = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 1)
  %2 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %0, i32 0, i32 1
  %arg = load %Tuple*, %Tuple** %2, align 8
  %3 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %0, i32 0, i32 2
  %aux = load %Tuple*, %Tuple** %3, align 8
  %4 = call %Callable* @__quantum__rt__callable_copy(%Callable* %op, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %4, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %4)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__, i32 1)
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Array*, %Tuple* }*
  %7 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %6, i32 0, i32 1
  store %Array* %__controlQubits__, %Array** %7, align 8
  store %Tuple* %arg, %Tuple** %8, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %4, %Tuple* %5, %Tuple* null)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %4, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %4, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____ctladj(%Array* %__controlQubits__, { %Callable*, %Tuple*, %Tuple* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %0, i32 0, i32 0
  %op = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 1)
  %2 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %0, i32 0, i32 1
  %arg = load %Tuple*, %Tuple** %2, align 8
  %3 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %0, i32 0, i32 2
  %aux = load %Tuple*, %Tuple** %3, align 8
  %4 = call %Callable* @__quantum__rt__callable_copy(%Callable* %op, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %4, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %4)
  call void @__quantum__rt__callable_make_controlled(%Callable* %4)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__, i32 1)
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, %Tuple* }* getelementptr ({ %Array*, %Tuple* }, { %Array*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Array*, %Tuple* }*
  %7 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %6, i32 0, i32 1
  store %Array* %__controlQubits__, %Array** %7, align 8
  store %Tuple* %arg, %Tuple** %8, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %4, %Tuple* %5, %Tuple* null)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %op, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %op, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %4, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %4, i32 -1)
  call void @__quantum__rt__array_update_reference_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___0948b50b52574d49a200829cb49a754d_ApplyIfOneCA__body(%Result* %measurementResult, { %Callable*, %Qubit* }* %0) {
entry:
  %1 = getelementptr inbounds { %Callable*, %Qubit* }, { %Callable*, %Qubit* }* %0, i32 0, i32 0
  %onResultOneOp = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 1)
  %2 = getelementptr inbounds { %Callable*, %Qubit* }, { %Callable*, %Qubit* }* %0, i32 0, i32 1
  %oneArg = load %Qubit*, %Qubit** %2, align 8
  %3 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %onResultOneOp, i32 1)
  %4 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Callable*, %Qubit* }* getelementptr ({ %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* null, i32 1) to i64))
  %5 = bitcast %Tuple* %4 to { %Callable*, %Callable*, %Qubit* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 0
  %7 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 1
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 2
  store %Callable* %3, %Callable** %6, align 8
  store %Callable* %onResultOneOp, %Callable** %7, align 8
  store %Qubit* %oneArg, %Qubit** %8, align 8
  %oneOp = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__6__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__3__FunctionTable, %Tuple* %4)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %oneOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %oneOp, i32 1)
  %9 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %10 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %11 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Callable*, %Tuple* }* getelementptr ({ %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* null, i32 1) to i64))
  %12 = bitcast %Tuple* %11 to { %Callable*, %Callable*, %Tuple* }*
  %13 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %12, i32 0, i32 0
  %14 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %12, i32 0, i32 1
  %15 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %12, i32 0, i32 2
  store %Callable* %9, %Callable** %13, align 8
  store %Callable* %10, %Callable** %14, align 8
  store %Tuple* null, %Tuple** %15, align 8
  %zeroOp = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__7__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__4__FunctionTable, %Tuple* %11)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %zeroOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %zeroOp, i32 1)
  call void @Microsoft__Quantum__ClassicalControl__ApplyIfElseIntrinsicCA__body(%Result* %measurementResult, %Callable* %zeroOp, %Callable* %oneOp)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %oneOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %oneOp, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %zeroOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %zeroOp, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %oneOp, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %oneOp, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %zeroOp, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %zeroOp, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__6__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 2
  %4 = load %Qubit*, %Qubit** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Qubit*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Qubit* %4, %Qubit** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %11, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__6__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 2
  %4 = load %Qubit*, %Qubit** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Qubit*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Qubit* %4, %Qubit** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  %12 = call %Callable* @__quantum__rt__callable_copy(%Callable* %11, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %12)
  call void @__quantum__rt__callable_invoke(%Callable* %12, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %12, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__6__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 2
  %9 = load %Qubit*, %Qubit** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Qubit*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Qubit* %9, %Qubit** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Qubit*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Qubit*, %Tuple* }* %11, { %Callable*, %Qubit*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__6__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 2
  %9 = load %Qubit*, %Qubit** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Qubit*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Qubit* %9, %Qubit** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Qubit*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Qubit*, %Tuple* }* %11, { %Callable*, %Qubit*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %21)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Callable*, %Qubit*, %Tuple* }*
  %1 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %0, i32 0, i32 1
  %3 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %0, i32 0, i32 2
  %4 = load %Callable*, %Callable** %1, align 8
  %5 = load %Qubit*, %Qubit** %2, align 8
  %6 = load %Tuple*, %Tuple** %3, align 8
  call void @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____body(%Callable* %4, %Qubit* %5, %Tuple* %6)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Callable*, %Qubit*, %Tuple* }*
  %1 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %0, i32 0, i32 1
  %3 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %0, i32 0, i32 2
  %4 = load %Callable*, %Callable** %1, align 8
  %5 = load %Qubit*, %Qubit** %2, align 8
  %6 = load %Tuple*, %Tuple** %3, align 8
  call void @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____adj(%Callable* %4, %Qubit* %5, %Tuple* %6)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, { %Callable*, %Qubit*, %Tuple* }* }*
  %1 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load { %Callable*, %Qubit*, %Tuple* }*, { %Callable*, %Qubit*, %Tuple* }** %2, align 8
  call void @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____ctl(%Array* %3, { %Callable*, %Qubit*, %Tuple* }* %4)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, { %Callable*, %Qubit*, %Tuple* }* }*
  %1 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load { %Callable*, %Qubit*, %Tuple* }*, { %Callable*, %Qubit*, %Tuple* }** %2, align 8
  call void @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____ctladj(%Array* %3, { %Callable*, %Qubit*, %Tuple* }* %4)
  ret void
}

define internal void @MemoryManagement__3__RefCount(%Tuple* %capture-tuple, i32 %count-change) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 0
  %2 = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_reference_count(%Callable* %2, i32 %count-change)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %2, i32 %count-change)
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 1
  %4 = load %Callable*, %Callable** %3, align 8
  call void @__quantum__rt__capture_update_reference_count(%Callable* %4, i32 %count-change)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %4, i32 %count-change)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %capture-tuple, i32 %count-change)
  ret void
}

define internal void @MemoryManagement__3__AliasCount(%Tuple* %capture-tuple, i32 %count-change) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 0
  %2 = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %2, i32 %count-change)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %2, i32 %count-change)
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 1
  %4 = load %Callable*, %Callable** %3, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %4, i32 %count-change)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %4, i32 %count-change)
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %capture-tuple, i32 %count-change)
  ret void
}

define internal void @Lifted__PartialApplication__7__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 2
  %4 = load %Tuple*, %Tuple** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Tuple*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Tuple* %4, %Tuple** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %11, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__7__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 2
  %4 = load %Tuple*, %Tuple** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Tuple*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Tuple* %4, %Tuple** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  %12 = call %Callable* @__quantum__rt__callable_copy(%Callable* %11, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %12)
  call void @__quantum__rt__callable_invoke(%Callable* %12, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %12, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__7__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 2
  %9 = load %Tuple*, %Tuple** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Tuple*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Tuple* %9, %Tuple** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Tuple*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Tuple*, %Tuple* }* %11, { %Callable*, %Tuple*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__7__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 2
  %9 = load %Tuple*, %Tuple** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Tuple*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Tuple* %9, %Tuple** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Tuple*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Tuple*, %Tuple* }* %11, { %Callable*, %Tuple*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %21)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Callable*, %Tuple*, %Tuple* }*
  %1 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %0, i32 0, i32 1
  %3 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %0, i32 0, i32 2
  %4 = load %Callable*, %Callable** %1, align 8
  %5 = load %Tuple*, %Tuple** %2, align 8
  %6 = load %Tuple*, %Tuple** %3, align 8
  call void @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____body(%Callable* %4, %Tuple* %5, %Tuple* %6)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Callable*, %Tuple*, %Tuple* }*
  %1 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %0, i32 0, i32 1
  %3 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %0, i32 0, i32 2
  %4 = load %Callable*, %Callable** %1, align 8
  %5 = load %Tuple*, %Tuple** %2, align 8
  %6 = load %Tuple*, %Tuple** %3, align 8
  call void @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____adj(%Callable* %4, %Tuple* %5, %Tuple* %6)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, { %Callable*, %Tuple*, %Tuple* }* }*
  %1 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load { %Callable*, %Tuple*, %Tuple* }*, { %Callable*, %Tuple*, %Tuple* }** %2, align 8
  call void @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____ctl(%Array* %3, { %Callable*, %Tuple*, %Tuple* }* %4)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, { %Callable*, %Tuple*, %Tuple* }* }*
  %1 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load { %Callable*, %Tuple*, %Tuple* }*, { %Callable*, %Tuple*, %Tuple* }** %2, align 8
  call void @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____ctladj(%Array* %3, { %Callable*, %Tuple*, %Tuple* }* %4)
  ret void
}

define internal void @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  call void @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__body()
  ret void
}

define internal void @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  call void @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__adj()
  ret void
}

define internal void @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  call void @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__ctl(%Array* %3, %Tuple* %4)
  ret void
}

define internal void @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  call void @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__ctladj(%Array* %3, %Tuple* %4)
  ret void
}

define internal void @MemoryManagement__4__RefCount(%Tuple* %capture-tuple, i32 %count-change) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 0
  %2 = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_reference_count(%Callable* %2, i32 %count-change)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %2, i32 %count-change)
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 1
  %4 = load %Callable*, %Callable** %3, align 8
  call void @__quantum__rt__capture_update_reference_count(%Callable* %4, i32 %count-change)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %4, i32 %count-change)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %capture-tuple, i32 %count-change)
  ret void
}

define internal void @MemoryManagement__4__AliasCount(%Tuple* %capture-tuple, i32 %count-change) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 0
  %2 = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %2, i32 %count-change)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %2, i32 %count-change)
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 1
  %4 = load %Callable*, %Callable** %3, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %4, i32 %count-change)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %4, i32 %count-change)
  call void @__quantum__rt__tuple_update_alias_count(%Tuple* %capture-tuple, i32 %count-change)
  ret void
}

define internal void @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__body() {
entry:
  ret void
}

define internal void @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__adj() {
entry:
  ret void
}

define internal void @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__ctl(%Array* %__controlQubits__, %Tuple* %input) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__ctladj(%Array* %__controlQubits__, %Tuple* %input) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___0948b50b52574d49a200829cb49a754d_ApplyIfOneCA__adj(%Result* %measurementResult, { %Callable*, %Qubit* }* %0) {
entry:
  %1 = getelementptr inbounds { %Callable*, %Qubit* }, { %Callable*, %Qubit* }* %0, i32 0, i32 0
  %onResultOneOp = load %Callable*, %Callable** %1, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 1)
  %2 = getelementptr inbounds { %Callable*, %Qubit* }, { %Callable*, %Qubit* }* %0, i32 0, i32 1
  %oneArg = load %Qubit*, %Qubit** %2, align 8
  %3 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %onResultOneOp, i32 1)
  %4 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Callable*, %Qubit* }* getelementptr ({ %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* null, i32 1) to i64))
  %5 = bitcast %Tuple* %4 to { %Callable*, %Callable*, %Qubit* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 0
  %7 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 1
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 2
  store %Callable* %3, %Callable** %6, align 8
  store %Callable* %onResultOneOp, %Callable** %7, align 8
  store %Qubit* %oneArg, %Qubit** %8, align 8
  %__qsVar0__oneOp__ = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__8__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__3__FunctionTable, %Tuple* %4)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %__qsVar0__oneOp__, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %__qsVar0__oneOp__, i32 1)
  %9 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %10 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %11 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Callable*, %Tuple* }* getelementptr ({ %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* null, i32 1) to i64))
  %12 = bitcast %Tuple* %11 to { %Callable*, %Callable*, %Tuple* }*
  %13 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %12, i32 0, i32 0
  %14 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %12, i32 0, i32 1
  %15 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %12, i32 0, i32 2
  store %Callable* %9, %Callable** %13, align 8
  store %Callable* %10, %Callable** %14, align 8
  store %Tuple* null, %Tuple** %15, align 8
  %__qsVar1__zeroOp__ = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__9__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__4__FunctionTable, %Tuple* %11)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %__qsVar1__zeroOp__, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %__qsVar1__zeroOp__, i32 1)
  call void @Microsoft__Quantum__ClassicalControl__ApplyIfElseIntrinsicCA__adj(%Result* %measurementResult, %Callable* %__qsVar1__zeroOp__, %Callable* %__qsVar0__oneOp__)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %__qsVar0__oneOp__, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %__qsVar0__oneOp__, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %__qsVar1__zeroOp__, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %__qsVar1__zeroOp__, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %__qsVar0__oneOp__, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %__qsVar0__oneOp__, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %__qsVar1__zeroOp__, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %__qsVar1__zeroOp__, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__8__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 2
  %4 = load %Qubit*, %Qubit** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Qubit*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Qubit* %4, %Qubit** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %11, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__8__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 2
  %4 = load %Qubit*, %Qubit** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Qubit*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Qubit* %4, %Qubit** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  %12 = call %Callable* @__quantum__rt__callable_copy(%Callable* %11, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %12)
  call void @__quantum__rt__callable_invoke(%Callable* %12, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %12, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__8__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 2
  %9 = load %Qubit*, %Qubit** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Qubit*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Qubit* %9, %Qubit** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Qubit*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Qubit*, %Tuple* }* %11, { %Callable*, %Qubit*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__8__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 2
  %9 = load %Qubit*, %Qubit** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Qubit*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Qubit* %9, %Qubit** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Qubit*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Qubit*, %Tuple* }* %11, { %Callable*, %Qubit*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %21)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__9__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 2
  %4 = load %Tuple*, %Tuple** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Tuple*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Tuple* %4, %Tuple** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %11, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__9__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 2
  %4 = load %Tuple*, %Tuple** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Tuple*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Tuple* %4, %Tuple** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  %12 = call %Callable* @__quantum__rt__callable_copy(%Callable* %11, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %12)
  call void @__quantum__rt__callable_invoke(%Callable* %12, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %12, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__9__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 2
  %9 = load %Tuple*, %Tuple** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Tuple*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Tuple* %9, %Tuple** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Tuple*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Tuple*, %Tuple* }* %11, { %Callable*, %Tuple*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__9__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 2
  %9 = load %Tuple*, %Tuple** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Tuple*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Tuple* %9, %Tuple** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Tuple*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Tuple*, %Tuple* }* %11, { %Callable*, %Tuple*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %21)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

define internal void @Microsoft__Quantum__ClassicalControl___0948b50b52574d49a200829cb49a754d_ApplyIfOneCA__ctl(%Array* %__controlQubits__, { %Result*, { %Callable*, %Qubit* }* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { %Result*, { %Callable*, %Qubit* }* }, { %Result*, { %Callable*, %Qubit* }* }* %0, i32 0, i32 0
  %measurementResult = load %Result*, %Result** %1, align 8
  %2 = getelementptr inbounds { %Result*, { %Callable*, %Qubit* }* }, { %Result*, { %Callable*, %Qubit* }* }* %0, i32 0, i32 1
  %3 = load { %Callable*, %Qubit* }*, { %Callable*, %Qubit* }** %2, align 8
  %4 = getelementptr inbounds { %Callable*, %Qubit* }, { %Callable*, %Qubit* }* %3, i32 0, i32 0
  %onResultOneOp = load %Callable*, %Callable** %4, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 1)
  %5 = getelementptr inbounds { %Callable*, %Qubit* }, { %Callable*, %Qubit* }* %3, i32 0, i32 1
  %oneArg = load %Qubit*, %Qubit** %5, align 8
  %6 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %onResultOneOp, i32 1)
  %7 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Callable*, %Qubit* }* getelementptr ({ %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* null, i32 1) to i64))
  %8 = bitcast %Tuple* %7 to { %Callable*, %Callable*, %Qubit* }*
  %9 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %8, i32 0, i32 0
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %8, i32 0, i32 1
  %11 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %8, i32 0, i32 2
  store %Callable* %6, %Callable** %9, align 8
  store %Callable* %onResultOneOp, %Callable** %10, align 8
  store %Qubit* %oneArg, %Qubit** %11, align 8
  %oneOp = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__10__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__3__FunctionTable, %Tuple* %7)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %oneOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %oneOp, i32 1)
  %12 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %13 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %14 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Callable*, %Tuple* }* getelementptr ({ %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* null, i32 1) to i64))
  %15 = bitcast %Tuple* %14 to { %Callable*, %Callable*, %Tuple* }*
  %16 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %15, i32 0, i32 0
  %17 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %15, i32 0, i32 1
  %18 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %15, i32 0, i32 2
  store %Callable* %12, %Callable** %16, align 8
  store %Callable* %13, %Callable** %17, align 8
  store %Tuple* null, %Tuple** %18, align 8
  %zeroOp = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__11__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__4__FunctionTable, %Tuple* %14)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %zeroOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %zeroOp, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %measurementResult, i32 1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %zeroOp, i32 1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %zeroOp, i32 1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %oneOp, i32 1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %oneOp, i32 1)
  %19 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Result*, %Callable*, %Callable* }* getelementptr ({ %Result*, %Callable*, %Callable* }, { %Result*, %Callable*, %Callable* }* null, i32 1) to i64))
  %20 = bitcast %Tuple* %19 to { %Result*, %Callable*, %Callable* }*
  %21 = getelementptr inbounds { %Result*, %Callable*, %Callable* }, { %Result*, %Callable*, %Callable* }* %20, i32 0, i32 0
  %22 = getelementptr inbounds { %Result*, %Callable*, %Callable* }, { %Result*, %Callable*, %Callable* }* %20, i32 0, i32 1
  %23 = getelementptr inbounds { %Result*, %Callable*, %Callable* }, { %Result*, %Callable*, %Callable* }* %20, i32 0, i32 2
  store %Result* %measurementResult, %Result** %21, align 8
  store %Callable* %zeroOp, %Callable** %22, align 8
  store %Callable* %oneOp, %Callable** %23, align 8
  call void @Microsoft__Quantum__ClassicalControl__ApplyIfElseIntrinsicCA__ctl(%Array* %__controlQubits__, { %Result*, %Callable*, %Callable* }* %20)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %oneOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %oneOp, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %zeroOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %zeroOp, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %oneOp, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %oneOp, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %zeroOp, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %zeroOp, i32 -1)
  call void @__quantum__rt__result_update_reference_count(%Result* %measurementResult, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %zeroOp, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %zeroOp, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %oneOp, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %oneOp, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %19, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__10__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 2
  %4 = load %Qubit*, %Qubit** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Qubit*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Qubit* %4, %Qubit** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %11, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__10__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 2
  %4 = load %Qubit*, %Qubit** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Qubit*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Qubit* %4, %Qubit** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  %12 = call %Callable* @__quantum__rt__callable_copy(%Callable* %11, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %12)
  call void @__quantum__rt__callable_invoke(%Callable* %12, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %12, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__10__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 2
  %9 = load %Qubit*, %Qubit** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Qubit*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Qubit* %9, %Qubit** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Qubit*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Qubit*, %Tuple* }* %11, { %Callable*, %Qubit*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__10__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 2
  %9 = load %Qubit*, %Qubit** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Qubit*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Qubit* %9, %Qubit** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Qubit*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Qubit*, %Tuple* }* %11, { %Callable*, %Qubit*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %21)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__11__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 2
  %4 = load %Tuple*, %Tuple** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Tuple*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Tuple* %4, %Tuple** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %11, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__11__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 2
  %4 = load %Tuple*, %Tuple** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Tuple*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Tuple* %4, %Tuple** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  %12 = call %Callable* @__quantum__rt__callable_copy(%Callable* %11, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %12)
  call void @__quantum__rt__callable_invoke(%Callable* %12, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %12, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__11__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 2
  %9 = load %Tuple*, %Tuple** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Tuple*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Tuple* %9, %Tuple** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Tuple*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Tuple*, %Tuple* }* %11, { %Callable*, %Tuple*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__11__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 2
  %9 = load %Tuple*, %Tuple** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Tuple*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Tuple* %9, %Tuple** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Tuple*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Tuple*, %Tuple* }* %11, { %Callable*, %Tuple*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %21)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

declare void @__quantum__rt__result_update_reference_count(%Result*, i32)

define internal void @Microsoft__Quantum__ClassicalControl___0948b50b52574d49a200829cb49a754d_ApplyIfOneCA__ctladj(%Array* %__controlQubits__, { %Result*, { %Callable*, %Qubit* }* }* %0) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 1)
  %1 = getelementptr inbounds { %Result*, { %Callable*, %Qubit* }* }, { %Result*, { %Callable*, %Qubit* }* }* %0, i32 0, i32 0
  %measurementResult = load %Result*, %Result** %1, align 8
  %2 = getelementptr inbounds { %Result*, { %Callable*, %Qubit* }* }, { %Result*, { %Callable*, %Qubit* }* }* %0, i32 0, i32 1
  %3 = load { %Callable*, %Qubit* }*, { %Callable*, %Qubit* }** %2, align 8
  %4 = getelementptr inbounds { %Callable*, %Qubit* }, { %Callable*, %Qubit* }* %3, i32 0, i32 0
  %onResultOneOp = load %Callable*, %Callable** %4, align 8
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 1)
  %5 = getelementptr inbounds { %Callable*, %Qubit* }, { %Callable*, %Qubit* }* %3, i32 0, i32 1
  %oneArg = load %Qubit*, %Qubit** %5, align 8
  %6 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__ClassicalControl___2fc9720e55624fb2869e80aa2d8d5d69___QsRef3__DelayCA____FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %onResultOneOp, i32 1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %onResultOneOp, i32 1)
  %7 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Callable*, %Qubit* }* getelementptr ({ %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* null, i32 1) to i64))
  %8 = bitcast %Tuple* %7 to { %Callable*, %Callable*, %Qubit* }*
  %9 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %8, i32 0, i32 0
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %8, i32 0, i32 1
  %11 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %8, i32 0, i32 2
  store %Callable* %6, %Callable** %9, align 8
  store %Callable* %onResultOneOp, %Callable** %10, align 8
  store %Qubit* %oneArg, %Qubit** %11, align 8
  %__qsVar0__oneOp__ = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__12__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__3__FunctionTable, %Tuple* %7)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %__qsVar0__oneOp__, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %__qsVar0__oneOp__, i32 1)
  %12 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__ClassicalControl___d44c2a3e136c4d05ba1f7774253cc665___QsRef3__DelayCA____FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %13 = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @Microsoft__Quantum__Canon___5278df7b50c54a00a1c090e2cb2e69d3_NoOp__FunctionTable, [2 x void (%Tuple*, i32)*]* null, %Tuple* null)
  %14 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Callable*, %Tuple* }* getelementptr ({ %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* null, i32 1) to i64))
  %15 = bitcast %Tuple* %14 to { %Callable*, %Callable*, %Tuple* }*
  %16 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %15, i32 0, i32 0
  %17 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %15, i32 0, i32 1
  %18 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %15, i32 0, i32 2
  store %Callable* %12, %Callable** %16, align 8
  store %Callable* %13, %Callable** %17, align 8
  store %Tuple* null, %Tuple** %18, align 8
  %__qsVar1__zeroOp__ = call %Callable* @__quantum__rt__callable_create([4 x void (%Tuple*, %Tuple*, %Tuple*)*]* @PartialApplication__13__FunctionTable, [2 x void (%Tuple*, i32)*]* @MemoryManagement__4__FunctionTable, %Tuple* %14)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %__qsVar1__zeroOp__, i32 1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %__qsVar1__zeroOp__, i32 1)
  call void @__quantum__rt__result_update_reference_count(%Result* %measurementResult, i32 1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %__qsVar1__zeroOp__, i32 1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %__qsVar1__zeroOp__, i32 1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %__qsVar0__oneOp__, i32 1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %__qsVar0__oneOp__, i32 1)
  %19 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Result*, %Callable*, %Callable* }* getelementptr ({ %Result*, %Callable*, %Callable* }, { %Result*, %Callable*, %Callable* }* null, i32 1) to i64))
  %20 = bitcast %Tuple* %19 to { %Result*, %Callable*, %Callable* }*
  %21 = getelementptr inbounds { %Result*, %Callable*, %Callable* }, { %Result*, %Callable*, %Callable* }* %20, i32 0, i32 0
  %22 = getelementptr inbounds { %Result*, %Callable*, %Callable* }, { %Result*, %Callable*, %Callable* }* %20, i32 0, i32 1
  %23 = getelementptr inbounds { %Result*, %Callable*, %Callable* }, { %Result*, %Callable*, %Callable* }* %20, i32 0, i32 2
  store %Result* %measurementResult, %Result** %21, align 8
  store %Callable* %__qsVar1__zeroOp__, %Callable** %22, align 8
  store %Callable* %__qsVar0__oneOp__, %Callable** %23, align 8
  call void @Microsoft__Quantum__ClassicalControl__ApplyIfElseIntrinsicCA__ctladj(%Array* %__controlQubits__, { %Result*, %Callable*, %Callable* }* %20)
  call void @__quantum__rt__array_update_alias_count(%Array* %__controlQubits__, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %onResultOneOp, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %__qsVar0__oneOp__, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %__qsVar0__oneOp__, i32 -1)
  call void @__quantum__rt__capture_update_alias_count(%Callable* %__qsVar1__zeroOp__, i32 -1)
  call void @__quantum__rt__callable_update_alias_count(%Callable* %__qsVar1__zeroOp__, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %__qsVar0__oneOp__, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %__qsVar0__oneOp__, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %__qsVar1__zeroOp__, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %__qsVar1__zeroOp__, i32 -1)
  call void @__quantum__rt__result_update_reference_count(%Result* %measurementResult, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %__qsVar1__zeroOp__, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %__qsVar1__zeroOp__, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %__qsVar0__oneOp__, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %__qsVar0__oneOp__, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %19, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__12__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 2
  %4 = load %Qubit*, %Qubit** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Qubit*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Qubit* %4, %Qubit** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %11, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__12__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 2
  %4 = load %Qubit*, %Qubit** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Qubit*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Qubit* %4, %Qubit** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  %12 = call %Callable* @__quantum__rt__callable_copy(%Callable* %11, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %12)
  call void @__quantum__rt__callable_invoke(%Callable* %12, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %12, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__12__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 2
  %9 = load %Qubit*, %Qubit** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Qubit*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Qubit* %9, %Qubit** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Qubit*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Qubit*, %Tuple* }* %11, { %Callable*, %Qubit*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__12__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Qubit* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 2
  %9 = load %Qubit*, %Qubit** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Qubit*, %Tuple* }* getelementptr ({ %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Qubit*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Qubit*, %Tuple* }, { %Callable*, %Qubit*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Qubit* %9, %Qubit** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Qubit*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Qubit*, %Tuple* }* }, { %Array*, { %Callable*, %Qubit*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Qubit*, %Tuple* }* %11, { %Callable*, %Qubit*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Qubit* }, { %Callable*, %Callable*, %Qubit* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %21)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__13__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 2
  %4 = load %Tuple*, %Tuple** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Tuple*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Tuple* %4, %Tuple** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  call void @__quantum__rt__callable_invoke(%Callable* %11, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__13__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %1 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 1
  %2 = load %Callable*, %Callable** %1, align 8
  %3 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 2
  %4 = load %Tuple*, %Tuple** %3, align 8
  %5 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %6 = bitcast %Tuple* %5 to { %Callable*, %Tuple*, %Tuple* }*
  %7 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 0
  %8 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 1
  %9 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %6, i32 0, i32 2
  store %Callable* %2, %Callable** %7, align 8
  store %Tuple* %4, %Tuple** %8, align 8
  store %Tuple* null, %Tuple** %9, align 8
  %10 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %0, i32 0, i32 0
  %11 = load %Callable*, %Callable** %10, align 8
  %12 = call %Callable* @__quantum__rt__callable_copy(%Callable* %11, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %12)
  call void @__quantum__rt__callable_invoke(%Callable* %12, %Tuple* %5, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %5, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %12, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %12, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__13__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 2
  %9 = load %Tuple*, %Tuple** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Tuple*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Tuple* %9, %Tuple** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Tuple*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Tuple*, %Tuple* }* %11, { %Callable*, %Tuple*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

define internal void @Lifted__PartialApplication__13__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Tuple* }*
  %1 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Tuple* }, { %Array*, %Tuple* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Tuple*, %Tuple** %2, align 8
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, %Callable*, %Tuple* }*
  %6 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 1
  %7 = load %Callable*, %Callable** %6, align 8
  %8 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 2
  %9 = load %Tuple*, %Tuple** %8, align 8
  %10 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Callable*, %Tuple*, %Tuple* }* getelementptr ({ %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* null, i32 1) to i64))
  %11 = bitcast %Tuple* %10 to { %Callable*, %Tuple*, %Tuple* }*
  %12 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 0
  %13 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 1
  %14 = getelementptr inbounds { %Callable*, %Tuple*, %Tuple* }, { %Callable*, %Tuple*, %Tuple* }* %11, i32 0, i32 2
  store %Callable* %7, %Callable** %12, align 8
  store %Tuple* %9, %Tuple** %13, align 8
  store %Tuple* %4, %Tuple** %14, align 8
  %15 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }* getelementptr ({ %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* null, i32 1) to i64))
  %16 = bitcast %Tuple* %15 to { %Array*, { %Callable*, %Tuple*, %Tuple* }* }*
  %17 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 0
  %18 = getelementptr inbounds { %Array*, { %Callable*, %Tuple*, %Tuple* }* }, { %Array*, { %Callable*, %Tuple*, %Tuple* }* }* %16, i32 0, i32 1
  store %Array* %3, %Array** %17, align 8
  store { %Callable*, %Tuple*, %Tuple* }* %11, { %Callable*, %Tuple*, %Tuple* }** %18, align 8
  %19 = getelementptr inbounds { %Callable*, %Callable*, %Tuple* }, { %Callable*, %Callable*, %Tuple* }* %5, i32 0, i32 0
  %20 = load %Callable*, %Callable** %19, align 8
  %21 = call %Callable* @__quantum__rt__callable_copy(%Callable* %20, i1 false)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 1)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %21)
  call void @__quantum__rt__callable_make_controlled(%Callable* %21)
  call void @__quantum__rt__callable_invoke(%Callable* %21, %Tuple* %15, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %10, i32 -1)
  call void @__quantum__rt__tuple_update_reference_count(%Tuple* %15, i32 -1)
  call void @__quantum__rt__capture_update_reference_count(%Callable* %21, i32 -1)
  call void @__quantum__rt__callable_update_reference_count(%Callable* %21, i32 -1)
  ret void
}

define internal %Range @Microsoft__Quantum__Arrays___661da715818241c9b03bf414aaf60897_IndexRange__body(%Array* %array) {
entry:
  call void @__quantum__rt__array_update_alias_count(%Array* %array, i32 1)
  %0 = call i64 @__quantum__rt__array_get_size_1d(%Array* %array)
  %1 = sub i64 %0, 1
  %2 = insertvalue %Range { i64 0, i64 1, i64 0 }, i64 %1, 2
  call void @__quantum__rt__array_update_alias_count(%Array* %array, i32 -1)
  ret %Range %2
}

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

define internal void @Microsoft__Quantum__Intrinsic__X__body__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Qubit* }*
  %1 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %0, i32 0, i32 0
  %2 = load %Qubit*, %Qubit** %1, align 8
  call void @Microsoft__Quantum__Intrinsic__X__body(%Qubit* %2)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__X__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Qubit* }*
  %1 = getelementptr inbounds { %Qubit* }, { %Qubit* }* %0, i32 0, i32 0
  %2 = load %Qubit*, %Qubit** %1, align 8
  call void @Microsoft__Quantum__Intrinsic__X__adj(%Qubit* %2)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__X__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Qubit* }*
  %1 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Qubit*, %Qubit** %2, align 8
  call void @Microsoft__Quantum__Intrinsic__X__ctl(%Array* %3, %Qubit* %4)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__X__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, %Qubit* }*
  %1 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 0
  %2 = getelementptr inbounds { %Array*, %Qubit* }, { %Array*, %Qubit* }* %0, i32 0, i32 1
  %3 = load %Array*, %Array** %1, align 8
  %4 = load %Qubit*, %Qubit** %2, align 8
  call void @Microsoft__Quantum__Intrinsic__X__ctladj(%Array* %3, %Qubit* %4)
  ret void
}

define internal void @Microsoft__Quantum__Intrinsic__X__body(%Qubit* %qubit) {
entry:
  call void @__quantum__qis__x__body(%Qubit* %qubit)
  ret void
}

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

define { i64, i8* }* @BV__RunProgram__Interop(i64 %secretString, i64 %nQubits) #1 {
entry:
  %0 = call %Array* @BV__RunProgram__body(i64 %secretString, i64 %nQubits)
  %1 = call i64 @__quantum__rt__array_get_size_1d(%Array* %0)
  %2 = mul i64 %1, 1
  %3 = call i8* @__quantum__rt__memory_allocate(i64 %2)
  %4 = ptrtoint i8* %3 to i64
  %5 = sub i64 %1, 1
  br label %header__1

header__1:                                        ; preds = %exiting__1, %entry
  %6 = phi i64 [ 0, %entry ], [ %17, %exiting__1 ]
  %7 = icmp sle i64 %6, %5
  br i1 %7, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %8 = mul i64 %6, 1
  %9 = add i64 %4, %8
  %10 = inttoptr i64 %9 to i8*
  %11 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %0, i64 %6)
  %12 = bitcast i8* %11 to %Result**
  %13 = load %Result*, %Result** %12, align 8
  %14 = call %Result* @__quantum__rt__result_get_zero()
  %15 = call i1 @__quantum__rt__result_equal(%Result* %13, %Result* %14)
  %16 = select i1 %15, i8 0, i8 -1
  store i8 %16, i8* %10, align 1
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %17 = add i64 %6, 1
  br label %header__1

exit__1:                                          ; preds = %header__1
  %18 = call i8* @__quantum__rt__memory_allocate(i64 ptrtoint ({ i64, i8* }* getelementptr ({ i64, i8* }, { i64, i8* }* null, i32 1) to i64))
  %19 = bitcast i8* %18 to { i64, i8* }*
  %20 = getelementptr { i64, i8* }, { i64, i8* }* %19, i64 0, i32 0
  store i64 %1, i64* %20, align 4
  %21 = getelementptr { i64, i8* }, { i64, i8* }* %19, i64 0, i32 1
  store i8* %3, i8** %21, align 8
  %22 = sub i64 %1, 1
  br label %header__2

header__2:                                        ; preds = %exiting__2, %exit__1
  %23 = phi i64 [ 0, %exit__1 ], [ %28, %exiting__2 ]
  %24 = icmp sle i64 %23, %22
  br i1 %24, label %body__2, label %exit__2

body__2:                                          ; preds = %header__2
  %25 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %0, i64 %23)
  %26 = bitcast i8* %25 to %Result**
  %27 = load %Result*, %Result** %26, align 8
  call void @__quantum__rt__result_update_reference_count(%Result* %27, i32 -1)
  br label %exiting__2

exiting__2:                                       ; preds = %body__2
  %28 = add i64 %23, 1
  br label %header__2

exit__2:                                          ; preds = %header__2
  call void @__quantum__rt__array_update_reference_count(%Array* %0, i32 -1)
  ret { i64, i8* }* %19
}

declare i8* @__quantum__rt__memory_allocate(i64)

declare %Result* @__quantum__rt__result_get_zero()

declare i1 @__quantum__rt__result_equal(%Result*, %Result*)

define void @BV__RunProgram(i64 %secretString, i64 %nQubits) #2 {
entry:
  %0 = call %Array* @BV__RunProgram__body(i64 %secretString, i64 %nQubits)
  %1 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1, i32 0, i32 0))
  %2 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0))
  call void @__quantum__rt__string_update_reference_count(%String* %2, i32 1)
  %3 = call i64 @__quantum__rt__array_get_size_1d(%Array* %0)
  %4 = sub i64 %3, 1
  br label %header__1

header__1:                                        ; preds = %exiting__1, %entry
  %5 = phi %String* [ %2, %entry ], [ %15, %exiting__1 ]
  %6 = phi i64 [ 0, %entry ], [ %16, %exiting__1 ]
  %7 = icmp sle i64 %6, %4
  br i1 %7, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %8 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %0, i64 %6)
  %9 = bitcast i8* %8 to %Result**
  %10 = load %Result*, %Result** %9, align 8
  %11 = icmp ne %String* %5, %2
  br i1 %11, label %condTrue__1, label %condContinue__1

condTrue__1:                                      ; preds = %body__1
  %12 = call %String* @__quantum__rt__string_concatenate(%String* %5, %String* %1)
  call void @__quantum__rt__string_update_reference_count(%String* %5, i32 -1)
  br label %condContinue__1

condContinue__1:                                  ; preds = %condTrue__1, %body__1
  %13 = phi %String* [ %12, %condTrue__1 ], [ %5, %body__1 ]
  %14 = call %String* @__quantum__rt__result_to_string(%Result* %10)
  %15 = call %String* @__quantum__rt__string_concatenate(%String* %13, %String* %14)
  call void @__quantum__rt__string_update_reference_count(%String* %13, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %14, i32 -1)
  br label %exiting__1

exiting__1:                                       ; preds = %condContinue__1
  %16 = add i64 %6, 1
  br label %header__1

exit__1:                                          ; preds = %header__1
  %17 = call %String* @__quantum__rt__string_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @3, i32 0, i32 0))
  %18 = call %String* @__quantum__rt__string_concatenate(%String* %5, %String* %17)
  call void @__quantum__rt__string_update_reference_count(%String* %5, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %17, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %1, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %2, i32 -1)
  call void @__quantum__rt__message(%String* %18)
  %19 = sub i64 %3, 1
  br label %header__2

header__2:                                        ; preds = %exiting__2, %exit__1
  %20 = phi i64 [ 0, %exit__1 ], [ %25, %exiting__2 ]
  %21 = icmp sle i64 %20, %19
  br i1 %21, label %body__2, label %exit__2

body__2:                                          ; preds = %header__2
  %22 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %0, i64 %20)
  %23 = bitcast i8* %22 to %Result**
  %24 = load %Result*, %Result** %23, align 8
  call void @__quantum__rt__result_update_reference_count(%Result* %24, i32 -1)
  br label %exiting__2

exiting__2:                                       ; preds = %body__2
  %25 = add i64 %20, 1
  br label %header__2

exit__2:                                          ; preds = %header__2
  call void @__quantum__rt__array_update_reference_count(%Array* %0, i32 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %18, i32 -1)
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { "InteropFriendly" }
attributes #2 = { "EntryPoint" }
