---------------LLVM DUMP <function descriptor 'Qubit.__init__$2'>---------------
; ModuleID = "Qubit.__init__$2"
target triple = "x86_64-pc-windows-msvc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"

@"_ZN08NumbaEnv8__main__5Qubit12__init___242B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dEN8instance8jitclass54Qubit_2321b903c7400_3cup_3afloat32_2cdown_3afloat32_3eE23Literal_5bint_5d_281_2923Literal_5bint_5d_280_29" = common global i8* null
define i32 @"_ZN8__main__5Qubit12__init___242B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dEN8instance8jitclass54Qubit_2321b903c7400_3cup_3afloat32_2cdown_3afloat32_3eE23Literal_5bint_5d_281_2923Literal_5bint_5d_280_29"(i8** noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo", i8* %"arg.self.0", {float, float}* %"arg.self.1", i64 %"arg.u", i64 %"arg.d") 
{
entry:
  %"inserted.meminfo" = insertvalue {i8*, {float, float}*} undef, i8* %"arg.self.0", 0
  %"inserted.data" = insertvalue {i8*, {float, float}*} %"inserted.meminfo", {float, float}* %"arg.self.1", 1
  %".10" = alloca {i8*, {float, float}*}
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".10"
  %".21" = alloca {i8*, {float, float}*}
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".21"
  br label %"B0"
B0:
  %"extracted.meminfo" = extractvalue {i8*, {float, float}*} %"inserted.data", 0
  %"extracted.data" = extractvalue {i8*, {float, float}*} %"inserted.data", 1
  call void @"NRT_incref"(i8* %"extracted.meminfo")
  %".9" = sitofp i64 1 to float
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".10"
  store {i8*, {float, float}*} %"inserted.data", {i8*, {float, float}*}* %".10"
  %".14" = getelementptr inbounds {i8*, {float, float}*}, {i8*, {float, float}*}* %".10", i32 0, i32 1
  %".15" = load {float, float}*, {float, float}** %".14"
  %".16" = getelementptr inbounds {float, float}, {float, float}* %".15", i32 0, i32 0
  %".17" = load float, float* %".16"
  %".18" = getelementptr inbounds {float, float}, {float, float}* %".15", i32 0, i32 0
  store float %".9", float* %".18"
  %".20" = sitofp i64 0 to float
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".21"
  store {i8*, {float, float}*} %"inserted.data", {i8*, {float, float}*}* %".21"
  %".25" = getelementptr inbounds {i8*, {float, float}*}, {i8*, {float, float}*}* %".21", i32 0, i32 1
  %".26" = load {float, float}*, {float, float}** %".25"
  %".27" = getelementptr inbounds {float, float}, {float, float}* %".26", i32 0, i32 1
  %".28" = load float, float* %".27"
  %".29" = getelementptr inbounds {float, float}, {float, float}* %".26", i32 0, i32 1
  store float %".20", float* %".29"
  %"extracted.meminfo.1" = extractvalue {i8*, {float, float}*} %"inserted.data", 0
  %"extracted.data.1" = extractvalue {i8*, {float, float}*} %"inserted.data", 1
  call void @"NRT_decref"(i8* %"extracted.meminfo.1")
  store i8* null, i8** %"retptr"
  ret i32 0
}

declare void @"NRT_incref"(i8* noalias nocapture %".1") 

declare void @"NRT_decref"(i8* noalias nocapture %".1") 

!numba_args_may_always_need_nrt = !{ !0 }
!0 = !{ i32 (i8**, {i8*, i32, i8*}**, i8*, {float, float}*, i64, i64)* @"_ZN8__main__5Qubit12__init___242B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dEN8instance8jitclass54Qubit_2321b903c7400_3cup_3afloat32_2cdown_3afloat32_3eE23Literal_5bint_5d_281_2923Literal_5bint_5d_280_29" }
================================================================================
------------------LLVM DUMP <function descriptor 'Qubit.X$3'>-------------------
; ModuleID = "Qubit.X$3"
target triple = "x86_64-pc-windows-msvc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"

@"_ZN08NumbaEnv8__main__5Qubit5X_243B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dEN8instance8jitclass54Qubit_2321b903c7400_3cup_3afloat32_2cdown_3afloat32_3eE" = common global i8* null
define i32 @"_ZN8__main__5Qubit5X_243B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dEN8instance8jitclass54Qubit_2321b903c7400_3cup_3afloat32_2cdown_3afloat32_3eE"(i8** noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo", i8* %"arg.self.0", {float, float}* %"arg.self.1") 
{
entry:
  %"inserted.meminfo" = insertvalue {i8*, {float, float}*} undef, i8* %"arg.self.0", 0
  %"inserted.data" = insertvalue {i8*, {float, float}*} %"inserted.meminfo", {float, float}* %"arg.self.1", 1
  %".7" = alloca {i8*, {float, float}*}
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".7"
  %".15" = alloca {i8*, {float, float}*}
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".15"
  %".23" = alloca {i8*, {float, float}*}
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".23"
  %".33" = alloca {i8*, {float, float}*}
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".33"
  br label %"B0"
B0:
  %"extracted.meminfo" = extractvalue {i8*, {float, float}*} %"inserted.data", 0
  %"extracted.data" = extractvalue {i8*, {float, float}*} %"inserted.data", 1
  call void @"NRT_incref"(i8* %"extracted.meminfo")
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".7"
  store {i8*, {float, float}*} %"inserted.data", {i8*, {float, float}*}* %".7"
  %".11" = getelementptr inbounds {i8*, {float, float}*}, {i8*, {float, float}*}* %".7", i32 0, i32 1
  %".12" = load {float, float}*, {float, float}** %".11"
  %".13" = getelementptr inbounds {float, float}, {float, float}* %".12", i32 0, i32 0
  %".14" = load float, float* %".13"
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".15"
  store {i8*, {float, float}*} %"inserted.data", {i8*, {float, float}*}* %".15"
  %".19" = getelementptr inbounds {i8*, {float, float}*}, {i8*, {float, float}*}* %".15", i32 0, i32 1
  %".20" = load {float, float}*, {float, float}** %".19"
  %".21" = getelementptr inbounds {float, float}, {float, float}* %".20", i32 0, i32 1
  %".22" = load float, float* %".21"
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".23"
  store {i8*, {float, float}*} %"inserted.data", {i8*, {float, float}*}* %".23"
  %".27" = getelementptr inbounds {i8*, {float, float}*}, {i8*, {float, float}*}* %".23", i32 0, i32 1
  %".28" = load {float, float}*, {float, float}** %".27"
  %".29" = getelementptr inbounds {float, float}, {float, float}* %".28", i32 0, i32 0
  %".30" = load float, float* %".29"
  %".31" = getelementptr inbounds {float, float}, {float, float}* %".28", i32 0, i32 0
  store float %".22", float* %".31"
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".33"
  store {i8*, {float, float}*} %"inserted.data", {i8*, {float, float}*}* %".33"
  %".37" = getelementptr inbounds {i8*, {float, float}*}, {i8*, {float, float}*}* %".33", i32 0, i32 1
  %".38" = load {float, float}*, {float, float}** %".37"
  %".39" = getelementptr inbounds {float, float}, {float, float}* %".38", i32 0, i32 1
  %".40" = load float, float* %".39"
  %".41" = getelementptr inbounds {float, float}, {float, float}* %".38", i32 0, i32 1
  store float %".14", float* %".41"
  %"extracted.meminfo.1" = extractvalue {i8*, {float, float}*} %"inserted.data", 0
  %"extracted.data.1" = extractvalue {i8*, {float, float}*} %"inserted.data", 1
  call void @"NRT_decref"(i8* %"extracted.meminfo.1")
  store i8* null, i8** %"retptr"
  ret i32 0
}

declare void @"NRT_incref"(i8* noalias nocapture %".1") 

declare void @"NRT_decref"(i8* noalias nocapture %".1") 

!numba_args_may_always_need_nrt = !{ !0 }
!0 = !{ i32 (i8**, {i8*, i32, i8*}**, i8*, {float, float}*)* @"_ZN8__main__5Qubit5X_243B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dEN8instance8jitclass54Qubit_2321b903c7400_3cup_3afloat32_2cdown_3afloat32_3eE" }
================================================================================
--------------------LLVM DUMP <function descriptor 'main$1'>--------------------
; ModuleID = "main$1"
target triple = "x86_64-pc-windows-msvc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"

@"_ZN08NumbaEnv8__main__8main_241B46c8tJTIeFCjyCbUFRqqOAFv_2fYRdE1AT0EZmkCAA_3d_3dE" = common global i8* null
define i32 @"_ZN8__main__8main_241B46c8tJTIeFCjyCbUFRqqOAFv_2fYRdE1AT0EZmkCAA_3d_3dE"(i8** noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo") 
{
entry:
  %".9" = alloca {i8*, {float, float}*}
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".9"
  %".17" = alloca i8*
  store i8* null, i8** %".17"
  %"excinfo.1" = alloca {i8*, i32, i8*}*
  store {i8*, i32, i8*}* null, {i8*, i32, i8*}** %"excinfo.1"
  %"try_state" = alloca i64
  store i64 0, i64* %"try_state"
  %".45" = alloca i8*
  store i8* null, i8** %".45"
  %"excinfo.2" = alloca {i8*, i32, i8*}*
  store {i8*, i32, i8*}* null, {i8*, i32, i8*}** %"excinfo.2"
  %".70" = alloca {i8*, {float, float}*}
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".70"
  %".78" = alloca {i8*, i64, i32, i32, i64, i8*, i8*}
  store {i8*, i64, i32, i32, i64, i8*, i8*} zeroinitializer, {i8*, i64, i32, i32, i64, i8*, i8*}* %".78"
  %".100" = alloca i32
  store i32 0, i32* %".100"
  %".144" = alloca {i8*, {float, float}*}
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".144"
  %".153" = alloca {i8*, i64, i32, i32, i64, i8*, i8*}
  store {i8*, i64, i32, i32, i64, i8*, i8*} zeroinitializer, {i8*, i64, i32, i32, i64, i8*, i8*}* %".153"
  %".175" = alloca i32
  store i32 0, i32* %".175"
  br label %"B0"
B0:
  %".4" = bitcast void (i8*, i64, i8*)* @"_Dtor.instance.jitclass.Qubit#21b903c7400<up:float32,down:float32>" to i8*
  %".5" = call i8* @"NRT_MemInfo_alloc_dtor_safe"(i64 8, i8* %".4")
  %".6" = call i8* @"NRT_MemInfo_data_fast"(i8* %".5")
  %".7" = bitcast i8* %".6" to {float, float}*
  store {float, float} zeroinitializer, {float, float}* %".7"
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".9"
  %".12" = getelementptr inbounds {i8*, {float, float}*}, {i8*, {float, float}*}* %".9", i32 0, i32 0
  store i8* %".5", i8** %".12"
  %".14" = getelementptr inbounds {i8*, {float, float}*}, {i8*, {float, float}*}* %".9", i32 0, i32 1
  store {float, float}* %".7", {float, float}** %".14"
  %".16" = load {i8*, {float, float}*}, {i8*, {float, float}*}* %".9"
  store i8* null, i8** %".17"
  %"extracted.meminfo" = extractvalue {i8*, {float, float}*} %".16", 0
  %"extracted.data" = extractvalue {i8*, {float, float}*} %".16", 1
  %".21" = call i32 @"_ZN8__main__5Qubit12__init___242B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dEN8instance8jitclass54Qubit_2321b903c7400_3cup_3afloat32_2cdown_3afloat32_3eE23Literal_5bint_5d_281_2923Literal_5bint_5d_280_29"(i8** %".17", {i8*, i32, i8*}** %"excinfo.1", i8* %"extracted.meminfo", {float, float}* %"extracted.data", i64 1, i64 0)
  %".22" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo.1"
  %".23" = icmp eq i32 %".21", 0
  %".24" = icmp eq i32 %".21", -2
  %".25" = icmp eq i32 %".21", -1
  %".26" = icmp eq i32 %".21", -3
  %".27" = or i1 %".23", %".24"
  %".28" = xor i1 %".27", -1
  %".29" = icmp sge i32 %".21", 1
  %".30" = select i1 %".29", {i8*, i32, i8*}* %".22", {i8*, i32, i8*}* undef
  %".31" = load i8*, i8** %".17"
  br i1 %".28", label %"B0.if", label %"B0.endif", !prof !1
B0.if:
  store i64 0, i64* %"try_state"
  %".35" = load i64, i64* %"try_state"
  %".36" = icmp ugt i64 %".35", 0
  %".37" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  store {i8*, i32, i8*}* %".30", {i8*, i32, i8*}** %"excinfo"
  %".39" = xor i1 %".36", -1
  br i1 %".39", label %"B0.if.if", label %"B0.if.endif"
B0.endif:
  %".43" = load {i8*, {float, float}*}, {i8*, {float, float}*}* %".9"
  %"extracted.meminfo.1" = extractvalue {i8*, {float, float}*} %".43", 0
  %"extracted.data.1" = extractvalue {i8*, {float, float}*} %".43", 1
  call void @"NRT_incref"(i8* %"extracted.meminfo.1")
  store i8* null, i8** %".45"
  %"extracted.meminfo.2" = extractvalue {i8*, {float, float}*} %".43", 0
  %"extracted.data.2" = extractvalue {i8*, {float, float}*} %".43", 1
  %".49" = call i32 @"_ZN8__main__5Qubit5X_243B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dEN8instance8jitclass54Qubit_2321b903c7400_3cup_3afloat32_2cdown_3afloat32_3eE"(i8** %".45", {i8*, i32, i8*}** %"excinfo.2", i8* %"extracted.meminfo.2", {float, float}* %"extracted.data.2")
  %".50" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo.2"
  %".51" = icmp eq i32 %".49", 0
  %".52" = icmp eq i32 %".49", -2
  %".53" = icmp eq i32 %".49", -1
  %".54" = icmp eq i32 %".49", -3
  %".55" = or i1 %".51", %".52"
  %".56" = xor i1 %".55", -1
  %".57" = icmp sge i32 %".49", 1
  %".58" = select i1 %".57", {i8*, i32, i8*}* %".50", {i8*, i32, i8*}* undef
  %".59" = load i8*, i8** %".45"
  br i1 %".56", label %"B0.endif.if", label %"B0.endif.endif", !prof !1
B0.if.if:
  ret i32 %".21", !ret_is_raise !2
B0.if.endif:
  br label %"B0.endif"
B0.endif.if:
  %".61" = load i64, i64* %"try_state"
  %".62" = icmp ugt i64 %".61", 0
  %".63" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  store {i8*, i32, i8*}* %".58", {i8*, i32, i8*}** %"excinfo"
  %".65" = xor i1 %".62", -1
  br i1 %".65", label %"B0.endif.if.if", label %"B0.endif.if.endif"
B0.endif.endif:
  %"extracted.meminfo.3" = extractvalue {i8*, {float, float}*} %".43", 0
  %"extracted.data.3" = extractvalue {i8*, {float, float}*} %".43", 1
  call void @"NRT_decref"(i8* %"extracted.meminfo.3")
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".70"
  store {i8*, {float, float}*} %".43", {i8*, {float, float}*}* %".70"
  %".74" = getelementptr inbounds {i8*, {float, float}*}, {i8*, {float, float}*}* %".70", i32 0, i32 1
  %".75" = load {float, float}*, {float, float}** %".74"
  %".76" = getelementptr inbounds {float, float}, {float, float}* %".75", i32 0, i32 0
  %".77" = load float, float* %".76"
  store {i8*, i64, i32, i32, i64, i8*, i8*} zeroinitializer, {i8*, i64, i32, i32, i64, i8*, i8*}* %".78"
  %".81" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".78", i32 0, i32 0
  store i8* bitcast ([10 x i8]* @".bytes.5940039727130804267" to i8*), i8** %".81"
  %".83" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".78", i32 0, i32 1
  %".84" = load i64, i64* %".83"
  %".85" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".78", i32 0, i32 1
  store i64 9, i64* %".85"
  %".87" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".78", i32 0, i32 2
  %".88" = load i32, i32* %".87"
  %".89" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".78", i32 0, i32 2
  store i32 1, i32* %".89"
  %".91" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".78", i32 0, i32 3
  %".92" = load i32, i32* %".91"
  %".93" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".78", i32 0, i32 3
  store i32 1, i32* %".93"
  %".95" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".78", i32 0, i32 4
  %".96" = load i64, i64* %".95"
  %".97" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".78", i32 0, i32 4
  store i64 -1, i64* %".97"
  %".99" = load {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".78"
  call void @"numba_gil_ensure"(i32* %".100")
  %".103" = load {i8*, i32, i8*}, {i8*, i32, i8*}* @".const.picklebuf.2317409216560"
  %".104" = extractvalue {i8*, i32, i8*} %".103", 0
  %".105" = load {i8*, i32, i8*}, {i8*, i32, i8*}* @".const.picklebuf.2317409216560"
  %".106" = extractvalue {i8*, i32, i8*} %".105", 1
  %".107" = load {i8*, i32, i8*}, {i8*, i32, i8*}* @".const.picklebuf.2317409216560"
  %".108" = extractvalue {i8*, i32, i8*} %".107", 2
  %".109" = call i8* @"numba_unpickle"(i8* %".104", i32 %".106", i8* %".108")
  %".110" = call i8* @"PyObject_Str"(i8* %".109")
  %".111" = call i8* @"PyUnicode_AsUTF8"(i8* %".110")
  call void (i8*, ...) @"PySys_FormatStdout"(i8* bitcast ([3 x i8]* @".const.%s" to i8*), i8* %".111")
  call void @"Py_DecRef"(i8* %".110")
  call void @"Py_DecRef"(i8* %".109")
  call void (i8*, ...) @"PySys_FormatStdout"(i8* bitcast ([2 x i8]* @".const. " to i8*))
  %".116" = load i8*, i8** @"_ZN08NumbaEnv8__main__8main_241B46c8tJTIeFCjyCbUFRqqOAFv_2fYRdE1AT0EZmkCAA_3d_3dE"
  %".117" = icmp eq i8* null, %".116"
  br i1 %".117", label %"B0.endif.endif.if", label %"B0.endif.endif.endif", !prof !1
B0.endif.if.if:
  ret i32 %".49", !ret_is_raise !2
B0.endif.if.endif:
  br label %"B0.endif.endif"
B0.endif.endif.if:
  store {i8*, i32, i8*}* @".const.picklebuf.2317715646464", {i8*, i32, i8*}** %"excinfo"
  %".120" = load i64, i64* %"try_state"
  %".121" = icmp ugt i64 %".120", 0
  %".122" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  ret i32 1, !ret_is_raise !2
B0.endif.endif.endif:
  %".124" = ptrtoint i8* %".116" to i64
  %".125" = add i64 %".124", 16
  %".126" = inttoptr i64 %".125" to i8*
  %".127" = bitcast i8* %".126" to {i8*, i8*}*
  %".128" = fpext float %".77" to double
  %".129" = call i8* @"PyFloat_FromDouble"(double %".128")
  %".130" = icmp ne i8* null, %".129"
  br i1 %".130", label %"B0.endif.endif.endif.if", label %"B0.endif.endif.endif.else", !prof !4
B0.endif.endif.endif.if:
  %".132" = call i8* @"PyObject_Str"(i8* %".129")
  %".133" = call i8* @"PyUnicode_AsUTF8"(i8* %".132")
  call void (i8*, ...) @"PySys_FormatStdout"(i8* bitcast ([3 x i8]* @".const.%s" to i8*), i8* %".133")
  call void @"Py_DecRef"(i8* %".132")
  call void @"Py_DecRef"(i8* %".129")
  br label %"B0.endif.endif.endif.endif"
B0.endif.endif.endif.else:
  %".138" = call i8* @"PyUnicode_FromString"(i8* bitcast ([21 x i8]* @".const.the print() function" to i8*))
  call void @"PyErr_WriteUnraisable"(i8* %".138")
  call void @"Py_DecRef"(i8* %".138")
  br label %"B0.endif.endif.endif.endif"
B0.endif.endif.endif.endif:
  call void (i8*, ...) @"PySys_FormatStdout"(i8* bitcast ([2 x i8]* @".const.
" to i8*))
  call void @"numba_gil_release"(i32* %".100")
  store {i8*, {float, float}*} zeroinitializer, {i8*, {float, float}*}* %".144"
  store {i8*, {float, float}*} %".43", {i8*, {float, float}*}* %".144"
  %".148" = getelementptr inbounds {i8*, {float, float}*}, {i8*, {float, float}*}* %".144", i32 0, i32 1
  %".149" = load {float, float}*, {float, float}** %".148"
  %".150" = getelementptr inbounds {float, float}, {float, float}* %".149", i32 0, i32 1
  %".151" = load float, float* %".150"
  %"extracted.meminfo.4" = extractvalue {i8*, {float, float}*} %".43", 0
  %"extracted.data.4" = extractvalue {i8*, {float, float}*} %".43", 1
  call void @"NRT_decref"(i8* %"extracted.meminfo.4")
  store {i8*, i64, i32, i32, i64, i8*, i8*} zeroinitializer, {i8*, i64, i32, i32, i64, i8*, i8*}* %".153"
  %".156" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".153", i32 0, i32 0
  store i8* bitcast ([12 x i8]* @".bytes.-4671363640598364520" to i8*), i8** %".156"
  %".158" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".153", i32 0, i32 1
  %".159" = load i64, i64* %".158"
  %".160" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".153", i32 0, i32 1
  store i64 11, i64* %".160"
  %".162" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".153", i32 0, i32 2
  %".163" = load i32, i32* %".162"
  %".164" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".153", i32 0, i32 2
  store i32 1, i32* %".164"
  %".166" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".153", i32 0, i32 3
  %".167" = load i32, i32* %".166"
  %".168" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".153", i32 0, i32 3
  store i32 1, i32* %".168"
  %".170" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".153", i32 0, i32 4
  %".171" = load i64, i64* %".170"
  %".172" = getelementptr inbounds {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".153", i32 0, i32 4
  store i64 -1, i64* %".172"
  %".174" = load {i8*, i64, i32, i32, i64, i8*, i8*}, {i8*, i64, i32, i32, i64, i8*, i8*}* %".153"
  call void @"numba_gil_ensure"(i32* %".175")
  %".178" = load {i8*, i32, i8*}, {i8*, i32, i8*}* @".const.picklebuf.2317409216496"
  %".179" = extractvalue {i8*, i32, i8*} %".178", 0
  %".180" = load {i8*, i32, i8*}, {i8*, i32, i8*}* @".const.picklebuf.2317409216496"
  %".181" = extractvalue {i8*, i32, i8*} %".180", 1
  %".182" = load {i8*, i32, i8*}, {i8*, i32, i8*}* @".const.picklebuf.2317409216496"
  %".183" = extractvalue {i8*, i32, i8*} %".182", 2
  %".184" = call i8* @"numba_unpickle"(i8* %".179", i32 %".181", i8* %".183")
  %".185" = call i8* @"PyObject_Str"(i8* %".184")
  %".186" = call i8* @"PyUnicode_AsUTF8"(i8* %".185")
  call void (i8*, ...) @"PySys_FormatStdout"(i8* bitcast ([3 x i8]* @".const.%s" to i8*), i8* %".186")
  call void @"Py_DecRef"(i8* %".185")
  call void @"Py_DecRef"(i8* %".184")
  call void (i8*, ...) @"PySys_FormatStdout"(i8* bitcast ([2 x i8]* @".const. " to i8*))
  %".191" = load i8*, i8** @"_ZN08NumbaEnv8__main__8main_241B46c8tJTIeFCjyCbUFRqqOAFv_2fYRdE1AT0EZmkCAA_3d_3dE"
  %".192" = icmp eq i8* null, %".191"
  br i1 %".192", label %"B0.endif.endif.endif.endif.if", label %"B0.endif.endif.endif.endif.endif", !prof !1
B0.endif.endif.endif.endif.if:
  store {i8*, i32, i8*}* @".const.picklebuf.2317715646464", {i8*, i32, i8*}** %"excinfo"
  %".195" = load i64, i64* %"try_state"
  %".196" = icmp ugt i64 %".195", 0
  %".197" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  ret i32 1, !ret_is_raise !2
B0.endif.endif.endif.endif.endif:
  %".199" = ptrtoint i8* %".191" to i64
  %".200" = add i64 %".199", 16
  %".201" = inttoptr i64 %".200" to i8*
  %".202" = bitcast i8* %".201" to {i8*, i8*}*
  %".203" = fpext float %".151" to double
  %".204" = call i8* @"PyFloat_FromDouble"(double %".203")
  %".205" = icmp ne i8* null, %".204"
  br i1 %".205", label %"B0.endif.endif.endif.endif.endif.if", label %"B0.endif.endif.endif.endif.endif.else", !prof !4
B0.endif.endif.endif.endif.endif.if:
  %".207" = call i8* @"PyObject_Str"(i8* %".204")
  %".208" = call i8* @"PyUnicode_AsUTF8"(i8* %".207")
  call void (i8*, ...) @"PySys_FormatStdout"(i8* bitcast ([3 x i8]* @".const.%s" to i8*), i8* %".208")
  call void @"Py_DecRef"(i8* %".207")
  call void @"Py_DecRef"(i8* %".204")
  br label %"B0.endif.endif.endif.endif.endif.endif"
B0.endif.endif.endif.endif.endif.else:
  %".213" = call i8* @"PyUnicode_FromString"(i8* bitcast ([21 x i8]* @".const.the print() function" to i8*))
  call void @"PyErr_WriteUnraisable"(i8* %".213")
  call void @"Py_DecRef"(i8* %".213")
  br label %"B0.endif.endif.endif.endif.endif.endif"
B0.endif.endif.endif.endif.endif.endif:
  call void (i8*, ...) @"PySys_FormatStdout"(i8* bitcast ([2 x i8]* @".const.
" to i8*))
  call void @"numba_gil_release"(i32* %".175")
  store i8* null, i8** %"retptr"
  ret i32 0
}

define void @"_Dtor.instance.jitclass.Qubit#21b903c7400<up:float32,down:float32>"(i8* %".1", i64 %".2", i8* %".3") 
{
.5:
  %".6" = bitcast i8* %".1" to {float, float}*
  %".7" = load {float, float}, {float, float}* %".6"
  %"extracted.m_up" = extractvalue {float, float} %".7", 0
  %"extracted.m_down" = extractvalue {float, float} %".7", 1
  ret void
}

declare noalias i8* @"NRT_MemInfo_alloc_dtor_safe"(i64 %".1", i8* %".2") 

declare i8* @"NRT_MemInfo_data_fast"(i8* %".1") 

declare i32 @"_ZN8__main__5Qubit12__init___242B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dEN8instance8jitclass54Qubit_2321b903c7400_3cup_3afloat32_2cdown_3afloat32_3eE23Literal_5bint_5d_281_2923Literal_5bint_5d_280_29"(i8** noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo", i8* %"arg.self.0", {float, float}* %"arg.self.1", i64 %"arg.u", i64 %"arg.d") 

declare void @"NRT_incref"(i8* noalias nocapture %".1") 

declare i32 @"_ZN8__main__5Qubit5X_243B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dEN8instance8jitclass54Qubit_2321b903c7400_3cup_3afloat32_2cdown_3afloat32_3eE"(i8** noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo", i8* %"arg.self.0", {float, float}* %"arg.self.1") 

declare void @"NRT_decref"(i8* noalias nocapture %".1") 

@".bytes.5940039727130804267" = internal constant [10 x i8] c"Spin Up: \00"
declare void @"numba_gil_ensure"(i32* %".1") 

@".const.pickledata.2317409216560" = internal constant [24 x i8] c"\80\04\95\0d\00\00\00\00\00\00\00\8c\09Spin Up: \94."
@".const.pickledata.2317409216560.sha1" = internal constant [20 x i8] c"\19\ec\f9:\87\adG\e3\8b\1f\ee\1c\cb/\85\9a6\abp-"
@".const.picklebuf.2317409216560" = internal constant {i8*, i32, i8*} {i8* bitcast ([24 x i8]* @".const.pickledata.2317409216560" to i8*), i32 24, i8* bitcast ([20 x i8]* @".const.pickledata.2317409216560.sha1" to i8*)}
declare i8* @"numba_unpickle"(i8* %".1", i32 %".2", i8* %".3") 

declare i8* @"PyObject_Str"(i8* %".1") 

declare i8* @"PyUnicode_AsUTF8"(i8* %".1") 

@".const.%s" = internal constant [3 x i8] c"%s\00"
declare void @"PySys_FormatStdout"(i8* %".1", ...) 

declare void @"Py_DecRef"(i8* %".1") 

@".const. " = internal constant [2 x i8] c" \00"
@".const.pickledata.2317715646464" = internal constant [150 x i8] c"\80\04\95\8b\00\00\00\00\00\00\00\8c\08builtins\94\8c\0cRuntimeError\94\93\94\8cfmissing Environment: _ZN08NumbaEnv8__main__8main_241B46c8tJTIeFCjyCbUFRqqOAFv_2fYRdE1AT0EZmkCAA_3d_3dE\94\85\94N\87\94."
@".const.pickledata.2317715646464.sha1" = internal constant [20 x i8] c"\c9\d0\02\c7\02\99\bf\0d\c1zP\07\18\fe \df\8b\8e\d14"
@".const.picklebuf.2317715646464" = internal constant {i8*, i32, i8*} {i8* bitcast ([150 x i8]* @".const.pickledata.2317715646464" to i8*), i32 150, i8* bitcast ([20 x i8]* @".const.pickledata.2317715646464.sha1" to i8*)}
declare i8* @"PyFloat_FromDouble"(double %".1") 

@".const.the print() function" = internal constant [21 x i8] c"the print() function\00"
declare i8* @"PyUnicode_FromString"(i8* %".1") 

declare void @"PyErr_WriteUnraisable"(i8* %".1") 

@".const.
" = internal constant [2 x i8] c"\0a\00"
declare void @"numba_gil_release"(i32* %".1") 

@".bytes.-4671363640598364520" = internal constant [12 x i8] c"Spin Down: \00"
@".const.pickledata.2317409216496" = internal constant [26 x i8] c"\80\04\95\0f\00\00\00\00\00\00\00\8c\0bSpin Down: \94."
@".const.pickledata.2317409216496.sha1" = internal constant [20 x i8] c"G\04\f8V\f9\12@\de 3\0b\9c\01L\af-\d5\8c\859"
@".const.picklebuf.2317409216496" = internal constant {i8*, i32, i8*} {i8* bitcast ([26 x i8]* @".const.pickledata.2317409216496" to i8*), i32 26, i8* bitcast ([20 x i8]* @".const.pickledata.2317409216496.sha1" to i8*)}
!numba_args_may_always_need_nrt = !{ !0, !3 }
!0 = !{ i32 (i8**, {i8*, i32, i8*}**, i8*, {float, float}*, i64, i64)* @"_ZN8__main__5Qubit12__init___242B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dEN8instance8jitclass54Qubit_2321b903c7400_3cup_3afloat32_2cdown_3afloat32_3eE23Literal_5bint_5d_281_2923Literal_5bint_5d_280_29" }
!1 = !{ !"branch_weights", i32 1, i32 99 }
!2 = !{ i1 1 }
!3 = !{ i32 (i8**, {i8*, i32, i8*}**, i8*, {float, float}*)* @"_ZN8__main__5Qubit5X_243B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dEN8instance8jitclass54Qubit_2321b903c7400_3cup_3afloat32_2cdown_3afloat32_3eE" }
!4 = !{ !"branch_weights", i32 99, i32 1 }
================================================================================