--------------LLVM DUMP <function descriptor 'newtonIteration$1'>---------------
; ModuleID = "newtonIteration$1"
target triple = "x86_64-pc-windows-msvc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"

@"_ZN08NumbaEnv8__main__19newtonIteration_241E8pyobject" = common global i8* null
define i32 @"_ZN8__main__19newtonIteration_241E8pyobject"(i8** noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo", i8* %"arg.x") 
{
entry:
  %".5" = load i8*, i8** @"_ZN08NumbaEnv8__main__19newtonIteration_241E8pyobject"
  %".6" = icmp eq i8* null, %".5"
  %"try_state" = alloca i64
  store i64 0, i64* %"try_state"
  %".19" = alloca i8*
  store i8* null, i8** %".19"
  %"x" = alloca i8*
  store i8* null, i8** %"x"
  %".31" = alloca i8*
  store i8* null, i8** %".31"
  %"$2load_global.0" = alloca i8*
  store i8* null, i8** %"$2load_global.0"
  %"$6call_function.2" = alloca i8*
  store i8* null, i8** %"$6call_function.2"
  %".95" = alloca i8*
  store i8* null, i8** %".95"
  %"$8load_global.3" = alloca i8*
  store i8* null, i8** %"$8load_global.3"
  %"$12call_function.5" = alloca i8*
  store i8* null, i8** %"$12call_function.5"
  %"h" = alloca i8*
  store i8* null, i8** %"h"
  %".210" = alloca i8*
  store i8* null, i8** %".210"
  %".235" = alloca i8*
  store i8* null, i8** %".235"
  %".257" = alloca i8*
  store i8* null, i8** %".257"
  %".282" = alloca i8*
  store i8* null, i8** %".282"
  %"$18load_global.0" = alloca i8*
  store i8* null, i8** %"$18load_global.0"
  %"$22call_function.2" = alloca i8*
  store i8* null, i8** %"$22call_function.2"
  %".360" = alloca i8*
  store i8* null, i8** %".360"
  %"$const24.3" = alloca i8*
  store i8* null, i8** %"$const24.3"
  %"$26compare_op.4" = alloca i8*
  store i8* null, i8** %"$26compare_op.4"
  %".425" = alloca i8*
  store i8* null, i8** %".425"
  %".450" = alloca i8*
  store i8* null, i8** %".450"
  %".472" = alloca i8*
  store i8* null, i8** %".472"
  %".497" = alloca i8*
  store i8* null, i8** %".497"
  %"bool28" = alloca i8*
  store i8* null, i8** %"bool28"
  %"$28pred" = alloca i8*
  store i8* null, i8** %"$28pred"
  %".592" = alloca i8*
  store i8* null, i8** %".592"
  %"$30load_global.0" = alloca i8*
  store i8* null, i8** %"$30load_global.0"
  %"$34call_function.2" = alloca i8*
  store i8* null, i8** %"$34call_function.2"
  %".656" = alloca i8*
  store i8* null, i8** %".656"
  %"$36load_global.3" = alloca i8*
  store i8* null, i8** %"$36load_global.3"
  %"$40call_function.5" = alloca i8*
  store i8* null, i8** %"$40call_function.5"
  %"$50binary_subtract.9" = alloca i8*
  store i8* null, i8** %"$50binary_subtract.9"
  %".815" = alloca i8*
  store i8* null, i8** %".815"
  %".840" = alloca i8*
  store i8* null, i8** %".840"
  %".862" = alloca i8*
  store i8* null, i8** %".862"
  %".887" = alloca i8*
  store i8* null, i8** %".887"
  %"$54load_global.10" = alloca i8*
  store i8* null, i8** %"$54load_global.10"
  %".923" = alloca i8*
  store i8* null, i8** %".923"
  %"$const56.11" = alloca i8*
  store i8* null, i8** %"$const56.11"
  %"$60call_function.13" = alloca i8*
  store i8* null, i8** %"$60call_function.13"
  %".1019" = alloca i8*
  store i8* null, i8** %".1019"
  %".1042" = alloca i8*
  store i8* null, i8** %".1042"
  %".1062" = alloca i8*
  store i8* null, i8** %".1062"
  %".1085" = alloca i8*
  store i8* null, i8** %".1085"
  %"$66load_global.0" = alloca i8*
  store i8* null, i8** %"$66load_global.0"
  %".1117" = alloca i8*
  store i8* null, i8** %".1117"
  %"$const68.1" = alloca i8*
  store i8* null, i8** %"$const68.1"
  %".1140" = alloca i8*
  store i8* null, i8** %".1140"
  %"$const70.2" = alloca i8*
  store i8* null, i8** %"$const70.2"
  %"$74binary_modulo.4" = alloca i8*
  store i8* null, i8** %"$74binary_modulo.4"
  %"$76call_function.5" = alloca i8*
  store i8* null, i8** %"$76call_function.5"
  %".1270" = alloca i8*
  store i8* null, i8** %".1270"
  %"$const80.6" = alloca i8*
  store i8* null, i8** %"$const80.6"
  %"$82return_value.7" = alloca i8*
  store i8* null, i8** %"$82return_value.7"
  br i1 %".6", label %"entry.if", label %"entry.endif", !prof !0
B0:
  store i8* %"arg.x", i8** %".19"
  call void @"Py_IncRef"(i8* %"arg.x")
  store i8* %"arg.x", i8** %".19"
  %".24" = load i8*, i8** %".19"
  store i8* %".24", i8** %"x"
  %".27" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 0
  %".28" = load i8*, i8** %".27"
  %".29" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".30" = load i8*, i8** %".29"
  store i8* null, i8** %".31"
  %".34" = icmp ne i8* null, %".30"
  br i1 %".34", label %"B0.if", label %"B0.else"
B18:
  %".206" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 0
  %".207" = load i8*, i8** %".206"
  %".208" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".209" = load i8*, i8** %".208"
  store i8* null, i8** %".210"
  %".213" = icmp ne i8* null, %".209"
  br i1 %".213", label %"B18.if", label %"B18.else"
B30:
  %".585" = load i8*, i8** %"$28pred"
  call void @"Py_DecRef"(i8* %".585")
  store i8* null, i8** %"$28pred"
  %".588" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 0
  %".589" = load i8*, i8** %".588"
  %".590" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".591" = load i8*, i8** %".590"
  store i8* null, i8** %".592"
  %".595" = icmp ne i8* null, %".591"
  br i1 %".595", label %"B30.if", label %"B30.else"
B66:
  %".1011" = load i8*, i8** %"$28pred"
  call void @"Py_DecRef"(i8* %".1011")
  store i8* null, i8** %"$28pred"
  br label %"B67"
B67:
  %".1015" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 0
  %".1016" = load i8*, i8** %".1015"
  %".1017" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".1018" = load i8*, i8** %".1017"
  store i8* null, i8** %".1019"
  %".1022" = icmp ne i8* null, %".1018"
  br i1 %".1022", label %"B67.if", label %"B67.else"
entry.if:
  store {i8*, i32, i8*}* @".const.picklebuf.3019473895616", {i8*, i32, i8*}** %"excinfo"
  store i64 0, i64* %"try_state"
  %".11" = load i64, i64* %"try_state"
  %".12" = icmp ugt i64 %".11", 0
  %".13" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  ret i32 1, !ret_is_raise !1
entry.endif:
  %".15" = ptrtoint i8* %".5" to i64
  %".16" = add i64 %".15", 16
  %".17" = inttoptr i64 %".16" to i8*
  %".18" = bitcast i8* %".17" to {i8*, i8*}*
  br label %"B0"
B0.if:
  %".36" = call i8* @"PyList_GetItem"(i8* %".30", i64 0)
  store i8* %".36", i8** %".31"
  br label %"B0.endif"
B0.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif"
B0.endif:
  %".41" = load i8*, i8** %".31"
  %".42" = icmp eq i8* null, %".41"
  br i1 %".42", label %"B0.endif.if", label %"B0.endif.endif", !prof !0
B0.endif.if:
  %".44" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".44")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif:
  call void @"Py_IncRef"(i8* %".41")
  %".48" = call i8* @"PyDict_GetItem"(i8* %".28", i8* %".41")
  call void @"Py_IncRef"(i8* %".48")
  %".50" = icmp eq i8* null, %".48"
  br i1 %".50", label %"B0.endif.endif.if", label %"B0.endif.endif.endif", !prof !0
B0.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([38 x i8]* @".const.global name 'function' is not defined" to i8*))
  %".53" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".53")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif:
  store i8* %".48", i8** %"$2load_global.0"
  %".58" = load i8*, i8** %"x"
  %".59" = icmp eq i8* null, %".58"
  br i1 %".59", label %"B0.endif.endif.endif.if", label %"B0.endif.endif.endif.endif", !prof !0
B0.endif.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([24 x i8]* @".const.name 'x' is not defined" to i8*))
  %".62" = load i8*, i8** %"$2load_global.0"
  call void @"Py_DecRef"(i8* %".62")
  %".64" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".64")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endif:
  %".67" = load i8*, i8** %"$2load_global.0"
  %".68" = icmp eq i8* null, %".67"
  br i1 %".68", label %"B0.endif.endif.endif.endif.if", label %"B0.endif.endif.endif.endif.endif", !prof !0
B0.endif.endif.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([38 x i8]* @".const.name '$2load_global.0' is not defined" to i8*))
  %".71" = load i8*, i8** %"$2load_global.0"
  call void @"Py_DecRef"(i8* %".71")
  %".73" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".73")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endif.endif:
  %".76" = call i8* (i64, ...) @"PyTuple_Pack"(i64 1, i8* %".58")
  %".77" = call i8* @"PyObject_Call"(i8* %".67", i8* %".76", i8* null)
  call void @"Py_DecRef"(i8* %".76")
  %".79" = icmp eq i8* null, %".77"
  br i1 %".79", label %"B0.endif.endif.endif.endif.endif.if", label %"B0.endif.endif.endif.endif.endif.endif", !prof !0
B0.endif.endif.endif.endif.endif.if:
  %".81" = load i8*, i8** %"$2load_global.0"
  call void @"Py_DecRef"(i8* %".81")
  %".83" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".83")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endif.endif.endif:
  store i8* %".77", i8** %"$6call_function.2"
  %".88" = load i8*, i8** %"$2load_global.0"
  call void @"Py_DecRef"(i8* %".88")
  store i8* null, i8** %"$2load_global.0"
  %".91" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 0
  %".92" = load i8*, i8** %".91"
  %".93" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".94" = load i8*, i8** %".93"
  store i8* null, i8** %".95"
  %".98" = icmp ne i8* null, %".94"
  br i1 %".98", label %"B0.endif.endif.endif.endif.endif.endif.if", label %"B0.endif.endif.endif.endif.endif.endif.else"
B0.endif.endif.endif.endif.endif.endif.if:
  %".100" = call i8* @"PyList_GetItem"(i8* %".94", i64 1)
  store i8* %".100", i8** %".95"
  br label %"B0.endif.endif.endif.endif.endif.endif.endif"
B0.endif.endif.endif.endif.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endif.endif.endif.endif"
B0.endif.endif.endif.endif.endif.endif.endif:
  %".105" = load i8*, i8** %".95"
  %".106" = icmp eq i8* null, %".105"
  br i1 %".106", label %"B0.endif.endif.endif.endif.endif.endif.endif.if", label %"B0.endif.endif.endif.endif.endif.endif.endif.endif", !prof !0
B0.endif.endif.endif.endif.endif.endif.endif.if:
  %".108" = load i8*, i8** %"$6call_function.2"
  call void @"Py_DecRef"(i8* %".108")
  %".110" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".110")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endif.endif.endif.endif.endif:
  call void @"Py_IncRef"(i8* %".105")
  %".114" = call i8* @"PyDict_GetItem"(i8* %".92", i8* %".105")
  call void @"Py_IncRef"(i8* %".114")
  %".116" = icmp eq i8* null, %".114"
  br i1 %".116", label %"B0.endif.endif.endif.endif.endif.endif.endif.endif.if", label %"B0.endif.endif.endif.endif.endif.endif.endif.endif.endif", !prof !0
B0.endif.endif.endif.endif.endif.endif.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([45 x i8]* @".const.global name 'derivedFunction' is not defined" to i8*))
  %".119" = load i8*, i8** %"$6call_function.2"
  call void @"Py_DecRef"(i8* %".119")
  %".121" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".121")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endif.endif.endif.endif.endif.endif:
  store i8* %".114", i8** %"$8load_global.3"
  %".126" = load i8*, i8** %"x"
  %".127" = icmp eq i8* null, %".126"
  br i1 %".127", label %"B0.endif.endif.endif.endi...if", label %"B0.endif.endif.endif.endi...endif", !prof !0
B0.endif.endif.endif.endi...if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([24 x i8]* @".const.name 'x' is not defined" to i8*))
  %".130" = load i8*, i8** %"$6call_function.2"
  call void @"Py_DecRef"(i8* %".130")
  %".132" = load i8*, i8** %"$8load_global.3"
  call void @"Py_DecRef"(i8* %".132")
  %".134" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".134")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif:
  %".137" = load i8*, i8** %"$8load_global.3"
  %".138" = icmp eq i8* null, %".137"
  br i1 %".138", label %"B0.endif.endif.endif.endi...endif.if", label %"B0.endif.endif.endif.endi...endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([38 x i8]* @".const.name '$8load_global.3' is not defined" to i8*))
  %".141" = load i8*, i8** %"$6call_function.2"
  call void @"Py_DecRef"(i8* %".141")
  %".143" = load i8*, i8** %"$8load_global.3"
  call void @"Py_DecRef"(i8* %".143")
  %".145" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".145")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.endif:
  %".148" = call i8* (i64, ...) @"PyTuple_Pack"(i64 1, i8* %".126")
  %".149" = call i8* @"PyObject_Call"(i8* %".137", i8* %".148", i8* null)
  call void @"Py_DecRef"(i8* %".148")
  %".151" = icmp eq i8* null, %".149"
  br i1 %".151", label %"B0.endif.endif.endif.endi...endif.endif.if", label %"B0.endif.endif.endif.endi...endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.endif.if:
  %".153" = load i8*, i8** %"$6call_function.2"
  call void @"Py_DecRef"(i8* %".153")
  %".155" = load i8*, i8** %"$8load_global.3"
  call void @"Py_DecRef"(i8* %".155")
  %".157" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".157")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.endif.endif:
  store i8* %".149", i8** %"$12call_function.5"
  %".162" = load i8*, i8** %"$8load_global.3"
  call void @"Py_DecRef"(i8* %".162")
  store i8* null, i8** %"$8load_global.3"
  %".165" = load i8*, i8** %"$6call_function.2"
  %".166" = icmp eq i8* null, %".165"
  br i1 %".166", label %"B0.endif.endif.endif.endi...endif.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([40 x i8]* @".const.name '$6call_function.2' is not defined" to i8*))
  %".169" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".169")
  %".171" = load i8*, i8** %"$6call_function.2"
  call void @"Py_DecRef"(i8* %".171")
  %".173" = load i8*, i8** %"$12call_function.5"
  call void @"Py_DecRef"(i8* %".173")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.endif.endif.endif:
  %".176" = load i8*, i8** %"$12call_function.5"
  %".177" = icmp eq i8* null, %".176"
  br i1 %".177", label %"B0.endif.endif.endif.endi...if.1", label %"B0.endif.endif.endif.endi...endif.1", !prof !0
B0.endif.endif.endif.endi...if.1:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([41 x i8]* @".const.name '$12call_function.5' is not defined" to i8*))
  %".180" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".180")
  %".182" = load i8*, i8** %"$6call_function.2"
  call void @"Py_DecRef"(i8* %".182")
  %".184" = load i8*, i8** %"$12call_function.5"
  call void @"Py_DecRef"(i8* %".184")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.1:
  %".187" = call i8* @"PyNumber_TrueDivide"(i8* %".165", i8* %".176")
  %".188" = icmp eq i8* null, %".187"
  br i1 %".188", label %"B0.endif.endif.endif.endi...endif.1.if", label %"B0.endif.endif.endif.endi...endif.1.endif", !prof !0
B0.endif.endif.endif.endi...endif.1.if:
  %".190" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".190")
  %".192" = load i8*, i8** %"$6call_function.2"
  call void @"Py_DecRef"(i8* %".192")
  %".194" = load i8*, i8** %"$12call_function.5"
  call void @"Py_DecRef"(i8* %".194")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.1.endif:
  store i8* %".187", i8** %"h"
  %".199" = load i8*, i8** %"$6call_function.2"
  call void @"Py_DecRef"(i8* %".199")
  store i8* null, i8** %"$6call_function.2"
  %".202" = load i8*, i8** %"$12call_function.5"
  call void @"Py_DecRef"(i8* %".202")
  store i8* null, i8** %"$12call_function.5"
  br label %"B18"
B18.if:
  %".215" = call i8* @"PyList_GetItem"(i8* %".209", i64 2)
  store i8* %".215", i8** %".210"
  br label %"B18.endif"
B18.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B18.endif"
B18.endif:
  %".220" = load i8*, i8** %".210"
  %".221" = icmp eq i8* null, %".220"
  br i1 %".221", label %"B18.endif.if", label %"B18.endif.endif", !prof !0
B18.endif.if:
  %".223" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".223")
  %".225" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".225")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif:
  call void @"Py_IncRef"(i8* %".220")
  %".229" = call i8* @"PyDict_GetItem"(i8* %".207", i8* %".220")
  call void @"Py_IncRef"(i8* %".229")
  %".231" = icmp eq i8* null, %".229"
  br i1 %".231", label %"B18.endif.endif.if", label %"B18.endif.endif.endif"
B18.endif.endif.if:
  %".233" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".234" = load i8*, i8** %".233"
  store i8* null, i8** %".235"
  %".238" = icmp ne i8* null, %".234"
  br i1 %".238", label %"B18.endif.endif.if.if", label %"B18.endif.endif.if.else"
B18.endif.endif.endif:
  %".313" = phi i8* [%".229", %"B18.endif.endif"], [%".311", %"B18.endif.endif.if.endif.endif.endif.endif.endif"]
  store i8* %".313", i8** %"$18load_global.0"
  %".316" = load i8*, i8** %"h"
  %".317" = icmp eq i8* null, %".316"
  br i1 %".317", label %"B18.endif.endif.endif.if", label %"B18.endif.endif.endif.endif", !prof !0
B18.endif.endif.if.if:
  %".240" = call i8* @"PyList_GetItem"(i8* %".234", i64 3)
  store i8* %".240", i8** %".235"
  br label %"B18.endif.endif.if.endif"
B18.endif.endif.if.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B18.endif.endif.if.endif"
B18.endif.endif.if.endif:
  %".245" = load i8*, i8** %".235"
  %".246" = icmp eq i8* null, %".245"
  br i1 %".246", label %"B18.endif.endif.if.endif.if", label %"B18.endif.endif.if.endif.endif", !prof !0
B18.endif.endif.if.endif.if:
  %".248" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".248")
  %".250" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".250")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.if.endif.endif:
  call void @"Py_IncRef"(i8* %".245")
  %".254" = call i8* @"PyDict_GetItem"(i8* %".207", i8* %".245")
  %".255" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".256" = load i8*, i8** %".255"
  store i8* null, i8** %".257"
  %".260" = icmp ne i8* null, %".256"
  br i1 %".260", label %"B18.endif.endif.if.endif.endif.if", label %"B18.endif.endif.if.endif.endif.else"
B18.endif.endif.if.endif.endif.if:
  %".262" = call i8* @"PyList_GetItem"(i8* %".256", i64 2)
  store i8* %".262", i8** %".257"
  br label %"B18.endif.endif.if.endif.endif.endif"
B18.endif.endif.if.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B18.endif.endif.if.endif.endif.endif"
B18.endif.endif.if.endif.endif.endif:
  %".267" = load i8*, i8** %".257"
  %".268" = icmp eq i8* null, %".267"
  br i1 %".268", label %"B18.endif.endif.if.endif.endif.endif.if", label %"B18.endif.endif.if.endif.endif.endif.endif", !prof !0
B18.endif.endif.if.endif.endif.endif.if:
  %".270" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".270")
  %".272" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".272")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.if.endif.endif.endif.endif:
  call void @"Py_IncRef"(i8* %".267")
  %".276" = call i8* @"PyDict_GetItem"(i8* %".254", i8* %".267")
  call void @"Py_IncRef"(i8* %".276")
  %".278" = icmp eq i8* null, %".276"
  br i1 %".278", label %"B18.endif.endif.if.endif.endif.endif.endif.if", label %"B18.endif.endif.if.endif.endif.endif.endif.endif", !prof !0
B18.endif.endif.if.endif.endif.endif.endif.if:
  %".280" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".281" = load i8*, i8** %".280"
  store i8* null, i8** %".282"
  %".285" = icmp ne i8* null, %".281"
  br i1 %".285", label %"B18.endif.endif.if.endif.endif.endif.endif.if.if", label %"B18.endif.endif.if.endif.endif.endif.endif.if.else"
B18.endif.endif.if.endif.endif.endif.endif.endif:
  %".311" = phi i8* [%".276", %"B18.endif.endif.if.endif.endif.endif.endif"], [%".301", %"B18.endif.endif.if.endif....endif.endif"]
  br label %"B18.endif.endif.endif"
B18.endif.endif.if.endif.endif.endif.endif.if.if:
  %".287" = call i8* @"PyList_GetItem"(i8* %".281", i64 2)
  store i8* %".287", i8** %".282"
  br label %"B18.endif.endif.if.endif.endif.endif.endif.if.endif"
B18.endif.endif.if.endif.endif.endif.endif.if.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B18.endif.endif.if.endif.endif.endif.endif.if.endif"
B18.endif.endif.if.endif.endif.endif.endif.if.endif:
  %".292" = load i8*, i8** %".282"
  %".293" = icmp eq i8* null, %".292"
  br i1 %".293", label %"B18.endif.endif.if.endif....if", label %"B18.endif.endif.if.endif....endif", !prof !0
B18.endif.endif.if.endif....if:
  %".295" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".295")
  %".297" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".297")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.if.endif....endif:
  call void @"Py_IncRef"(i8* %".292")
  %".301" = call i8* @"PyObject_GetAttr"(i8* %".254", i8* %".292")
  %".302" = icmp eq i8* null, %".301"
  br i1 %".302", label %"B18.endif.endif.if.endif....endif.if", label %"B18.endif.endif.if.endif....endif.endif", !prof !0
B18.endif.endif.if.endif....endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([33 x i8]* @".const.global name 'abs' is not defined" to i8*))
  %".305" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".305")
  %".307" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".307")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.if.endif....endif.endif:
  br label %"B18.endif.endif.if.endif.endif.endif.endif.endif"
B18.endif.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([24 x i8]* @".const.name 'h' is not defined" to i8*))
  %".320" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".320")
  %".322" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".322")
  %".324" = load i8*, i8** %"$18load_global.0"
  call void @"Py_DecRef"(i8* %".324")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.endif:
  %".327" = load i8*, i8** %"$18load_global.0"
  %".328" = icmp eq i8* null, %".327"
  br i1 %".328", label %"B18.endif.endif.endif.endif.if", label %"B18.endif.endif.endif.endif.endif", !prof !0
B18.endif.endif.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([39 x i8]* @".const.name '$18load_global.0' is not defined" to i8*))
  %".331" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".331")
  %".333" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".333")
  %".335" = load i8*, i8** %"$18load_global.0"
  call void @"Py_DecRef"(i8* %".335")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.endif.endif:
  %".338" = call i8* (i64, ...) @"PyTuple_Pack"(i64 1, i8* %".316")
  %".339" = call i8* @"PyObject_Call"(i8* %".327", i8* %".338", i8* null)
  call void @"Py_DecRef"(i8* %".338")
  %".341" = icmp eq i8* null, %".339"
  br i1 %".341", label %"B18.endif.endif.endif.endif.endif.if", label %"B18.endif.endif.endif.endif.endif.endif", !prof !0
B18.endif.endif.endif.endif.endif.if:
  %".343" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".343")
  %".345" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".345")
  %".347" = load i8*, i8** %"$18load_global.0"
  call void @"Py_DecRef"(i8* %".347")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.endif.endif.endif:
  store i8* %".339", i8** %"$22call_function.2"
  %".352" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".352")
  store i8* null, i8** %"h"
  %".355" = load i8*, i8** %"$18load_global.0"
  call void @"Py_DecRef"(i8* %".355")
  store i8* null, i8** %"$18load_global.0"
  %".358" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".359" = load i8*, i8** %".358"
  store i8* null, i8** %".360"
  %".363" = icmp ne i8* null, %".359"
  br i1 %".363", label %"B18.endif.endif.endif.endif.endif.endif.if", label %"B18.endif.endif.endif.endif.endif.endif.else"
B18.endif.endif.endif.endif.endif.endif.if:
  %".365" = call i8* @"PyList_GetItem"(i8* %".359", i64 4)
  store i8* %".365", i8** %".360"
  br label %"B18.endif.endif.endif.endif.endif.endif.endif"
B18.endif.endif.endif.endif.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B18.endif.endif.endif.endif.endif.endif.endif"
B18.endif.endif.endif.endif.endif.endif.endif:
  %".370" = load i8*, i8** %".360"
  %".371" = icmp eq i8* null, %".370"
  br i1 %".371", label %"B18.endif.endif.endif.endif.endif.endif.endif.if", label %"B18.endif.endif.endif.endif.endif.endif.endif.endif", !prof !0
B18.endif.endif.endif.endif.endif.endif.endif.if:
  %".373" = load i8*, i8** %"$22call_function.2"
  call void @"Py_DecRef"(i8* %".373")
  %".375" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".375")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.endif.endif.endif.endif.endif:
  call void @"Py_IncRef"(i8* %".370")
  store i8* %".370", i8** %"$const24.3"
  %".381" = load i8*, i8** %"$22call_function.2"
  %".382" = icmp eq i8* null, %".381"
  br i1 %".382", label %"B18.endif.endif.endif.end...if", label %"B18.endif.endif.endif.end...endif", !prof !0
B18.endif.endif.endif.end...if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([41 x i8]* @".const.name '$22call_function.2' is not defined" to i8*))
  %".385" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".385")
  %".387" = load i8*, i8** %"$22call_function.2"
  call void @"Py_DecRef"(i8* %".387")
  %".389" = load i8*, i8** %"$const24.3"
  call void @"Py_DecRef"(i8* %".389")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.end...endif:
  %".392" = load i8*, i8** %"$const24.3"
  %".393" = icmp eq i8* null, %".392"
  br i1 %".393", label %"B18.endif.endif.endif.end...endif.if", label %"B18.endif.endif.endif.end...endif.endif", !prof !0
B18.endif.endif.endif.end...endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([33 x i8]* @".const.name '$const24.3' is not defined" to i8*))
  %".396" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".396")
  %".398" = load i8*, i8** %"$22call_function.2"
  call void @"Py_DecRef"(i8* %".398")
  %".400" = load i8*, i8** %"$const24.3"
  call void @"Py_DecRef"(i8* %".400")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.end...endif.endif:
  %".403" = call i8* @"PyObject_RichCompare"(i8* %".381", i8* %".392", i32 5)
  %".404" = icmp eq i8* null, %".403"
  br i1 %".404", label %"B18.endif.endif.endif.end...endif.endif.if", label %"B18.endif.endif.endif.end...endif.endif.endif", !prof !0
B18.endif.endif.endif.end...endif.endif.if:
  %".406" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".406")
  %".408" = load i8*, i8** %"$22call_function.2"
  call void @"Py_DecRef"(i8* %".408")
  %".410" = load i8*, i8** %"$const24.3"
  call void @"Py_DecRef"(i8* %".410")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.end...endif.endif.endif:
  store i8* %".403", i8** %"$26compare_op.4"
  %".415" = load i8*, i8** %"$const24.3"
  call void @"Py_DecRef"(i8* %".415")
  store i8* null, i8** %"$const24.3"
  %".418" = load i8*, i8** %"$22call_function.2"
  call void @"Py_DecRef"(i8* %".418")
  store i8* null, i8** %"$22call_function.2"
  %".421" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 0
  %".422" = load i8*, i8** %".421"
  %".423" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".424" = load i8*, i8** %".423"
  store i8* null, i8** %".425"
  %".428" = icmp ne i8* null, %".424"
  br i1 %".428", label %"B18.endif.endif.endif.end...endif.endif.endif.if", label %"B18.endif.endif.endif.end...endif.endif.endif.else"
B18.endif.endif.endif.end...endif.endif.endif.if:
  %".430" = call i8* @"PyList_GetItem"(i8* %".424", i64 5)
  store i8* %".430", i8** %".425"
  br label %"B18.endif.endif.endif.end...endif.endif.endif.endif"
B18.endif.endif.endif.end...endif.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B18.endif.endif.endif.end...endif.endif.endif.endif"
B18.endif.endif.endif.end...endif.endif.endif.endif:
  %".435" = load i8*, i8** %".425"
  %".436" = icmp eq i8* null, %".435"
  br i1 %".436", label %"B18.endif.endif.endif.end...if.1", label %"B18.endif.endif.endif.end...endif.1", !prof !0
B18.endif.endif.endif.end...if.1:
  %".438" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".438")
  %".440" = load i8*, i8** %"$26compare_op.4"
  call void @"Py_DecRef"(i8* %".440")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.end...endif.1:
  call void @"Py_IncRef"(i8* %".435")
  %".444" = call i8* @"PyDict_GetItem"(i8* %".422", i8* %".435")
  call void @"Py_IncRef"(i8* %".444")
  %".446" = icmp eq i8* null, %".444"
  br i1 %".446", label %"B18.endif.endif.endif.end...endif.1.if", label %"B18.endif.endif.endif.end...endif.1.endif"
B18.endif.endif.endif.end...endif.1.if:
  %".448" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".449" = load i8*, i8** %".448"
  store i8* null, i8** %".450"
  %".453" = icmp ne i8* null, %".449"
  br i1 %".453", label %"B18.endif.endif.endif.end...endif.1.if.if", label %"B18.endif.endif.endif.end...endif.1.if.else"
B18.endif.endif.endif.end...endif.1.endif:
  %".528" = phi i8* [%".444", %"B18.endif.endif.endif.end...endif.1"], [%".526", %"B18.endif.endif.endif.end...endif.2.endif"]
  store i8* %".528", i8** %"bool28"
  %".531" = load i8*, i8** %"$26compare_op.4"
  %".532" = icmp eq i8* null, %".531"
  br i1 %".532", label %"B18.endif.endif.endif.end...endif.1.endif.if", label %"B18.endif.endif.endif.end...endif.1.endif.endif", !prof !0
B18.endif.endif.endif.end...endif.1.if.if:
  %".455" = call i8* @"PyList_GetItem"(i8* %".449", i64 3)
  store i8* %".455", i8** %".450"
  br label %"B18.endif.endif.endif.end...endif.1.if.endif"
B18.endif.endif.endif.end...endif.1.if.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B18.endif.endif.endif.end...endif.1.if.endif"
B18.endif.endif.endif.end...endif.1.if.endif:
  %".460" = load i8*, i8** %".450"
  %".461" = icmp eq i8* null, %".460"
  br i1 %".461", label %"B18.endif.endif.endif.end...endif.1.if.endif.if", label %"B18.endif.endif.endif.end...endif.1.if.endif.endif", !prof !0
B18.endif.endif.endif.end...endif.1.if.endif.if:
  %".463" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".463")
  %".465" = load i8*, i8** %"$26compare_op.4"
  call void @"Py_DecRef"(i8* %".465")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.end...endif.1.if.endif.endif:
  call void @"Py_IncRef"(i8* %".460")
  %".469" = call i8* @"PyDict_GetItem"(i8* %".422", i8* %".460")
  %".470" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".471" = load i8*, i8** %".470"
  store i8* null, i8** %".472"
  %".475" = icmp ne i8* null, %".471"
  br i1 %".475", label %"B18.endif.endif.endif.end...endif.1.if.endif.endif.if", label %"B18.endif.endif.endif.end...endif.1.if.endif.endif.else"
B18.endif.endif.endif.end...endif.1.if.endif.endif.if:
  %".477" = call i8* @"PyList_GetItem"(i8* %".471", i64 5)
  store i8* %".477", i8** %".472"
  br label %"B18.endif.endif.endif.end...endif.1.if.endif.endif.endif"
B18.endif.endif.endif.end...endif.1.if.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B18.endif.endif.endif.end...endif.1.if.endif.endif.endif"
B18.endif.endif.endif.end...endif.1.if.endif.endif.endif:
  %".482" = load i8*, i8** %".472"
  %".483" = icmp eq i8* null, %".482"
  br i1 %".483", label %"B18.endif.endif.endif.end...if.2", label %"B18.endif.endif.endif.end...endif.2", !prof !0
B18.endif.endif.endif.end...if.2:
  %".485" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".485")
  %".487" = load i8*, i8** %"$26compare_op.4"
  call void @"Py_DecRef"(i8* %".487")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.end...endif.2:
  call void @"Py_IncRef"(i8* %".482")
  %".491" = call i8* @"PyDict_GetItem"(i8* %".469", i8* %".482")
  call void @"Py_IncRef"(i8* %".491")
  %".493" = icmp eq i8* null, %".491"
  br i1 %".493", label %"B18.endif.endif.endif.end...endif.2.if", label %"B18.endif.endif.endif.end...endif.2.endif", !prof !0
B18.endif.endif.endif.end...endif.2.if:
  %".495" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".496" = load i8*, i8** %".495"
  store i8* null, i8** %".497"
  %".500" = icmp ne i8* null, %".496"
  br i1 %".500", label %"B18.endif.endif.endif.end...endif.2.if.if", label %"B18.endif.endif.endif.end...endif.2.if.else"
B18.endif.endif.endif.end...endif.2.endif:
  %".526" = phi i8* [%".491", %"B18.endif.endif.endif.end...endif.2"], [%".516", %"B18.endif.endif.endif.end...endif.2.if.endif.endif.endif"]
  br label %"B18.endif.endif.endif.end...endif.1.endif"
B18.endif.endif.endif.end...endif.2.if.if:
  %".502" = call i8* @"PyList_GetItem"(i8* %".496", i64 5)
  store i8* %".502", i8** %".497"
  br label %"B18.endif.endif.endif.end...endif.2.if.endif"
B18.endif.endif.endif.end...endif.2.if.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B18.endif.endif.endif.end...endif.2.if.endif"
B18.endif.endif.endif.end...endif.2.if.endif:
  %".507" = load i8*, i8** %".497"
  %".508" = icmp eq i8* null, %".507"
  br i1 %".508", label %"B18.endif.endif.endif.end...endif.2.if.endif.if", label %"B18.endif.endif.endif.end...endif.2.if.endif.endif", !prof !0
B18.endif.endif.endif.end...endif.2.if.endif.if:
  %".510" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".510")
  %".512" = load i8*, i8** %"$26compare_op.4"
  call void @"Py_DecRef"(i8* %".512")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.end...endif.2.if.endif.endif:
  call void @"Py_IncRef"(i8* %".507")
  %".516" = call i8* @"PyObject_GetAttr"(i8* %".469", i8* %".507")
  %".517" = icmp eq i8* null, %".516"
  br i1 %".517", label %"B18.endif.endif.endif.end...endif.2.if.endif.endif.if", label %"B18.endif.endif.endif.end...endif.2.if.endif.endif.endif", !prof !0
B18.endif.endif.endif.end...endif.2.if.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([34 x i8]* @".const.global name 'bool' is not defined" to i8*))
  %".520" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".520")
  %".522" = load i8*, i8** %"$26compare_op.4"
  call void @"Py_DecRef"(i8* %".522")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.end...endif.2.if.endif.endif.endif:
  br label %"B18.endif.endif.endif.end...endif.2.endif"
B18.endif.endif.endif.end...endif.1.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([38 x i8]* @".const.name '$26compare_op.4' is not defined" to i8*))
  %".535" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".535")
  %".537" = load i8*, i8** %"$26compare_op.4"
  call void @"Py_DecRef"(i8* %".537")
  %".539" = load i8*, i8** %"bool28"
  call void @"Py_DecRef"(i8* %".539")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.end...endif.1.endif.endif:
  %".542" = load i8*, i8** %"bool28"
  %".543" = icmp eq i8* null, %".542"
  br i1 %".543", label %"B18.endif.endif.endif.end...endif.1.endif.endif.if", label %"B18.endif.endif.endif.end...endif.1.endif.endif.endif", !prof !0
B18.endif.endif.endif.end...endif.1.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([29 x i8]* @".const.name 'bool28' is not defined" to i8*))
  %".546" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".546")
  %".548" = load i8*, i8** %"$26compare_op.4"
  call void @"Py_DecRef"(i8* %".548")
  %".550" = load i8*, i8** %"bool28"
  call void @"Py_DecRef"(i8* %".550")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.end...endif.1.endif.endif.endif:
  %".553" = call i8* (i64, ...) @"PyTuple_Pack"(i64 1, i8* %".531")
  %".554" = call i8* @"PyObject_Call"(i8* %".542", i8* %".553", i8* null)
  call void @"Py_DecRef"(i8* %".553")
  %".556" = icmp eq i8* null, %".554"
  br i1 %".556", label %"B18.endif.endif.endif.end...if.3", label %"B18.endif.endif.endif.end...endif.3", !prof !0
B18.endif.endif.endif.end...if.3:
  %".558" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".558")
  %".560" = load i8*, i8** %"$26compare_op.4"
  call void @"Py_DecRef"(i8* %".560")
  %".562" = load i8*, i8** %"bool28"
  call void @"Py_DecRef"(i8* %".562")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.end...endif.3:
  store i8* %".554", i8** %"$28pred"
  %".567" = load i8*, i8** %"bool28"
  call void @"Py_DecRef"(i8* %".567")
  store i8* null, i8** %"bool28"
  %".570" = load i8*, i8** %"$26compare_op.4"
  call void @"Py_DecRef"(i8* %".570")
  store i8* null, i8** %"$26compare_op.4"
  %".573" = load i8*, i8** %"$28pred"
  %".574" = icmp eq i8* null, %".573"
  br i1 %".574", label %"B18.endif.endif.endif.end...endif.3.if", label %"B18.endif.endif.endif.end...endif.3.endif", !prof !0
B18.endif.endif.endif.end...endif.3.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([30 x i8]* @".const.name '$28pred' is not defined" to i8*))
  %".577" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".577")
  %".579" = load i8*, i8** %"$28pred"
  call void @"Py_DecRef"(i8* %".579")
  ret i32 -1, !ret_is_raise !1
B18.endif.endif.endif.end...endif.3.endif:
  %".582" = call i32 @"PyObject_IsTrue"(i8* %".573")
  %".583" = icmp ne i32 %".582", 0
  br i1 %".583", label %"B30", label %"B66"
B30.if:
  %".597" = call i8* @"PyList_GetItem"(i8* %".591", i64 0)
  store i8* %".597", i8** %".592"
  br label %"B30.endif"
B30.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B30.endif"
B30.endif:
  %".602" = load i8*, i8** %".592"
  %".603" = icmp eq i8* null, %".602"
  br i1 %".603", label %"B30.endif.if", label %"B30.endif.endif", !prof !0
B30.endif.if:
  %".605" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".605")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif:
  call void @"Py_IncRef"(i8* %".602")
  %".609" = call i8* @"PyDict_GetItem"(i8* %".589", i8* %".602")
  call void @"Py_IncRef"(i8* %".609")
  %".611" = icmp eq i8* null, %".609"
  br i1 %".611", label %"B30.endif.endif.if", label %"B30.endif.endif.endif", !prof !0
B30.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([38 x i8]* @".const.global name 'function' is not defined" to i8*))
  %".614" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".614")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif:
  store i8* %".609", i8** %"$30load_global.0"
  %".619" = load i8*, i8** %"x"
  %".620" = icmp eq i8* null, %".619"
  br i1 %".620", label %"B30.endif.endif.endif.if", label %"B30.endif.endif.endif.endif", !prof !0
B30.endif.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([24 x i8]* @".const.name 'x' is not defined" to i8*))
  %".623" = load i8*, i8** %"$30load_global.0"
  call void @"Py_DecRef"(i8* %".623")
  %".625" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".625")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.endif:
  %".628" = load i8*, i8** %"$30load_global.0"
  %".629" = icmp eq i8* null, %".628"
  br i1 %".629", label %"B30.endif.endif.endif.endif.if", label %"B30.endif.endif.endif.endif.endif", !prof !0
B30.endif.endif.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([39 x i8]* @".const.name '$30load_global.0' is not defined" to i8*))
  %".632" = load i8*, i8** %"$30load_global.0"
  call void @"Py_DecRef"(i8* %".632")
  %".634" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".634")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.endif.endif:
  %".637" = call i8* (i64, ...) @"PyTuple_Pack"(i64 1, i8* %".619")
  %".638" = call i8* @"PyObject_Call"(i8* %".628", i8* %".637", i8* null)
  call void @"Py_DecRef"(i8* %".637")
  %".640" = icmp eq i8* null, %".638"
  br i1 %".640", label %"B30.endif.endif.endif.endif.endif.if", label %"B30.endif.endif.endif.endif.endif.endif", !prof !0
B30.endif.endif.endif.endif.endif.if:
  %".642" = load i8*, i8** %"$30load_global.0"
  call void @"Py_DecRef"(i8* %".642")
  %".644" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".644")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.endif.endif.endif:
  store i8* %".638", i8** %"$34call_function.2"
  %".649" = load i8*, i8** %"$30load_global.0"
  call void @"Py_DecRef"(i8* %".649")
  store i8* null, i8** %"$30load_global.0"
  %".652" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 0
  %".653" = load i8*, i8** %".652"
  %".654" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".655" = load i8*, i8** %".654"
  store i8* null, i8** %".656"
  %".659" = icmp ne i8* null, %".655"
  br i1 %".659", label %"B30.endif.endif.endif.endif.endif.endif.if", label %"B30.endif.endif.endif.endif.endif.endif.else"
B30.endif.endif.endif.endif.endif.endif.if:
  %".661" = call i8* @"PyList_GetItem"(i8* %".655", i64 1)
  store i8* %".661", i8** %".656"
  br label %"B30.endif.endif.endif.endif.endif.endif.endif"
B30.endif.endif.endif.endif.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B30.endif.endif.endif.endif.endif.endif.endif"
B30.endif.endif.endif.endif.endif.endif.endif:
  %".666" = load i8*, i8** %".656"
  %".667" = icmp eq i8* null, %".666"
  br i1 %".667", label %"B30.endif.endif.endif.endif.endif.endif.endif.if", label %"B30.endif.endif.endif.endif.endif.endif.endif.endif", !prof !0
B30.endif.endif.endif.endif.endif.endif.endif.if:
  %".669" = load i8*, i8** %"$34call_function.2"
  call void @"Py_DecRef"(i8* %".669")
  %".671" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".671")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.endif.endif.endif.endif.endif:
  call void @"Py_IncRef"(i8* %".666")
  %".675" = call i8* @"PyDict_GetItem"(i8* %".653", i8* %".666")
  call void @"Py_IncRef"(i8* %".675")
  %".677" = icmp eq i8* null, %".675"
  br i1 %".677", label %"B30.endif.endif.endif.end...if", label %"B30.endif.endif.endif.end...endif", !prof !0
B30.endif.endif.endif.end...if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([45 x i8]* @".const.global name 'derivedFunction' is not defined" to i8*))
  %".680" = load i8*, i8** %"$34call_function.2"
  call void @"Py_DecRef"(i8* %".680")
  %".682" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".682")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif:
  store i8* %".675", i8** %"$36load_global.3"
  %".687" = load i8*, i8** %"x"
  %".688" = icmp eq i8* null, %".687"
  br i1 %".688", label %"B30.endif.endif.endif.end...endif.if", label %"B30.endif.endif.endif.end...endif.endif", !prof !0
B30.endif.endif.endif.end...endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([24 x i8]* @".const.name 'x' is not defined" to i8*))
  %".691" = load i8*, i8** %"$36load_global.3"
  call void @"Py_DecRef"(i8* %".691")
  %".693" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".693")
  %".695" = load i8*, i8** %"$34call_function.2"
  call void @"Py_DecRef"(i8* %".695")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.endif:
  %".698" = load i8*, i8** %"$36load_global.3"
  %".699" = icmp eq i8* null, %".698"
  br i1 %".699", label %"B30.endif.endif.endif.end...endif.endif.if", label %"B30.endif.endif.endif.end...endif.endif.endif", !prof !0
B30.endif.endif.endif.end...endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([39 x i8]* @".const.name '$36load_global.3' is not defined" to i8*))
  %".702" = load i8*, i8** %"$36load_global.3"
  call void @"Py_DecRef"(i8* %".702")
  %".704" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".704")
  %".706" = load i8*, i8** %"$34call_function.2"
  call void @"Py_DecRef"(i8* %".706")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.endif.endif:
  %".709" = call i8* (i64, ...) @"PyTuple_Pack"(i64 1, i8* %".687")
  %".710" = call i8* @"PyObject_Call"(i8* %".698", i8* %".709", i8* null)
  call void @"Py_DecRef"(i8* %".709")
  %".712" = icmp eq i8* null, %".710"
  br i1 %".712", label %"B30.endif.endif.endif.end...endif.endif.endif.if", label %"B30.endif.endif.endif.end...endif.endif.endif.endif", !prof !0
B30.endif.endif.endif.end...endif.endif.endif.if:
  %".714" = load i8*, i8** %"$36load_global.3"
  call void @"Py_DecRef"(i8* %".714")
  %".716" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".716")
  %".718" = load i8*, i8** %"$34call_function.2"
  call void @"Py_DecRef"(i8* %".718")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.endif.endif.endif:
  store i8* %".710", i8** %"$40call_function.5"
  %".723" = load i8*, i8** %"$36load_global.3"
  call void @"Py_DecRef"(i8* %".723")
  store i8* null, i8** %"$36load_global.3"
  %".726" = load i8*, i8** %"$34call_function.2"
  %".727" = icmp eq i8* null, %".726"
  br i1 %".727", label %"B30.endif.endif.endif.end...if.1", label %"B30.endif.endif.endif.end...endif.1", !prof !0
B30.endif.endif.endif.end...if.1:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([41 x i8]* @".const.name '$34call_function.2' is not defined" to i8*))
  %".730" = load i8*, i8** %"$40call_function.5"
  call void @"Py_DecRef"(i8* %".730")
  %".732" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".732")
  %".734" = load i8*, i8** %"$34call_function.2"
  call void @"Py_DecRef"(i8* %".734")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.1:
  %".737" = load i8*, i8** %"$40call_function.5"
  %".738" = icmp eq i8* null, %".737"
  br i1 %".738", label %"B30.endif.endif.endif.end...endif.1.if", label %"B30.endif.endif.endif.end...endif.1.endif", !prof !0
B30.endif.endif.endif.end...endif.1.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([41 x i8]* @".const.name '$40call_function.5' is not defined" to i8*))
  %".741" = load i8*, i8** %"$40call_function.5"
  call void @"Py_DecRef"(i8* %".741")
  %".743" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".743")
  %".745" = load i8*, i8** %"$34call_function.2"
  call void @"Py_DecRef"(i8* %".745")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.1.endif:
  %".748" = call i8* @"PyNumber_TrueDivide"(i8* %".726", i8* %".737")
  %".749" = icmp eq i8* null, %".748"
  br i1 %".749", label %"B30.endif.endif.endif.end...endif.1.endif.if", label %"B30.endif.endif.endif.end...endif.1.endif.endif", !prof !0
B30.endif.endif.endif.end...endif.1.endif.if:
  %".751" = load i8*, i8** %"$40call_function.5"
  call void @"Py_DecRef"(i8* %".751")
  %".753" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".753")
  %".755" = load i8*, i8** %"$34call_function.2"
  call void @"Py_DecRef"(i8* %".755")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.1.endif.endif:
  store i8* %".748", i8** %"h"
  %".759" = load i8*, i8** %"$40call_function.5"
  call void @"Py_DecRef"(i8* %".759")
  store i8* null, i8** %"$40call_function.5"
  %".762" = load i8*, i8** %"$34call_function.2"
  call void @"Py_DecRef"(i8* %".762")
  store i8* null, i8** %"$34call_function.2"
  %".765" = load i8*, i8** %"x"
  %".766" = icmp eq i8* null, %".765"
  br i1 %".766", label %"B30.endif.endif.endif.end...endif.1.endif.endif.if", label %"B30.endif.endif.endif.end...endif.1.endif.endif.endif", !prof !0
B30.endif.endif.endif.end...endif.1.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([24 x i8]* @".const.name 'x' is not defined" to i8*))
  %".769" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".769")
  %".771" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".771")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.1.endif.endif.endif:
  %".774" = load i8*, i8** %"h"
  %".775" = icmp eq i8* null, %".774"
  br i1 %".775", label %"B30.endif.endif.endif.end...if.2", label %"B30.endif.endif.endif.end...endif.2", !prof !0
B30.endif.endif.endif.end...if.2:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([24 x i8]* @".const.name 'h' is not defined" to i8*))
  %".778" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".778")
  %".780" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".780")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.2:
  %".783" = call i8* @"PyNumber_Subtract"(i8* %".765", i8* %".774")
  %".784" = icmp eq i8* null, %".783"
  br i1 %".784", label %"B30.endif.endif.endif.end...endif.2.if", label %"B30.endif.endif.endif.end...endif.2.endif", !prof !0
B30.endif.endif.endif.end...endif.2.if:
  %".786" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".786")
  %".788" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".788")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.2.endif:
  store i8* %".783", i8** %"$50binary_subtract.9"
  %".793" = load i8*, i8** %"$50binary_subtract.9"
  %".794" = icmp eq i8* null, %".793"
  br i1 %".794", label %"B30.endif.endif.endif.end...endif.2.endif.if", label %"B30.endif.endif.endif.end...endif.2.endif.endif", !prof !0
B30.endif.endif.endif.end...endif.2.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([43 x i8]* @".const.name '$50binary_subtract.9' is not defined" to i8*))
  %".797" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".797")
  %".799" = load i8*, i8** %"$50binary_subtract.9"
  call void @"Py_DecRef"(i8* %".799")
  %".801" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".801")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.2.endif.endif:
  call void @"Py_IncRef"(i8* %".793")
  %".805" = load i8*, i8** %"x"
  store i8* %".793", i8** %"x"
  call void @"Py_DecRef"(i8* %".805")
  %".808" = load i8*, i8** %"$50binary_subtract.9"
  call void @"Py_DecRef"(i8* %".808")
  store i8* null, i8** %"$50binary_subtract.9"
  %".811" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 0
  %".812" = load i8*, i8** %".811"
  %".813" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".814" = load i8*, i8** %".813"
  store i8* null, i8** %".815"
  %".818" = icmp ne i8* null, %".814"
  br i1 %".818", label %"B30.endif.endif.endif.end...endif.2.endif.endif.if", label %"B30.endif.endif.endif.end...endif.2.endif.endif.else"
B30.endif.endif.endif.end...endif.2.endif.endif.if:
  %".820" = call i8* @"PyList_GetItem"(i8* %".814", i64 6)
  store i8* %".820", i8** %".815"
  br label %"B30.endif.endif.endif.end...endif.2.endif.endif.endif"
B30.endif.endif.endif.end...endif.2.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B30.endif.endif.endif.end...endif.2.endif.endif.endif"
B30.endif.endif.endif.end...endif.2.endif.endif.endif:
  %".825" = load i8*, i8** %".815"
  %".826" = icmp eq i8* null, %".825"
  br i1 %".826", label %"B30.endif.endif.endif.end...if.3", label %"B30.endif.endif.endif.end...endif.3", !prof !0
B30.endif.endif.endif.end...if.3:
  %".828" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".828")
  %".830" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".830")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.3:
  call void @"Py_IncRef"(i8* %".825")
  %".834" = call i8* @"PyDict_GetItem"(i8* %".812", i8* %".825")
  call void @"Py_IncRef"(i8* %".834")
  %".836" = icmp eq i8* null, %".834"
  br i1 %".836", label %"B30.endif.endif.endif.end...endif.3.if", label %"B30.endif.endif.endif.end...endif.3.endif"
B30.endif.endif.endif.end...endif.3.if:
  %".838" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".839" = load i8*, i8** %".838"
  store i8* null, i8** %".840"
  %".843" = icmp ne i8* null, %".839"
  br i1 %".843", label %"B30.endif.endif.endif.end...endif.3.if.if", label %"B30.endif.endif.endif.end...endif.3.if.else"
B30.endif.endif.endif.end...endif.3.endif:
  %".918" = phi i8* [%".834", %"B30.endif.endif.endif.end...endif.3"], [%".916", %"B30.endif.endif.endif.end...endif.4.endif"]
  store i8* %".918", i8** %"$54load_global.10"
  %".921" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".922" = load i8*, i8** %".921"
  store i8* null, i8** %".923"
  %".926" = icmp ne i8* null, %".922"
  br i1 %".926", label %"B30.endif.endif.endif.end...endif.3.endif.if", label %"B30.endif.endif.endif.end...endif.3.endif.else"
B30.endif.endif.endif.end...endif.3.if.if:
  %".845" = call i8* @"PyList_GetItem"(i8* %".839", i64 3)
  store i8* %".845", i8** %".840"
  br label %"B30.endif.endif.endif.end...endif.3.if.endif"
B30.endif.endif.endif.end...endif.3.if.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B30.endif.endif.endif.end...endif.3.if.endif"
B30.endif.endif.endif.end...endif.3.if.endif:
  %".850" = load i8*, i8** %".840"
  %".851" = icmp eq i8* null, %".850"
  br i1 %".851", label %"B30.endif.endif.endif.end...endif.3.if.endif.if", label %"B30.endif.endif.endif.end...endif.3.if.endif.endif", !prof !0
B30.endif.endif.endif.end...endif.3.if.endif.if:
  %".853" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".853")
  %".855" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".855")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.3.if.endif.endif:
  call void @"Py_IncRef"(i8* %".850")
  %".859" = call i8* @"PyDict_GetItem"(i8* %".812", i8* %".850")
  %".860" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".861" = load i8*, i8** %".860"
  store i8* null, i8** %".862"
  %".865" = icmp ne i8* null, %".861"
  br i1 %".865", label %"B30.endif.endif.endif.end...endif.3.if.endif.endif.if", label %"B30.endif.endif.endif.end...endif.3.if.endif.endif.else"
B30.endif.endif.endif.end...endif.3.if.endif.endif.if:
  %".867" = call i8* @"PyList_GetItem"(i8* %".861", i64 6)
  store i8* %".867", i8** %".862"
  br label %"B30.endif.endif.endif.end...endif.3.if.endif.endif.endif"
B30.endif.endif.endif.end...endif.3.if.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B30.endif.endif.endif.end...endif.3.if.endif.endif.endif"
B30.endif.endif.endif.end...endif.3.if.endif.endif.endif:
  %".872" = load i8*, i8** %".862"
  %".873" = icmp eq i8* null, %".872"
  br i1 %".873", label %"B30.endif.endif.endif.end...if.4", label %"B30.endif.endif.endif.end...endif.4", !prof !0
B30.endif.endif.endif.end...if.4:
  %".875" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".875")
  %".877" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".877")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.4:
  call void @"Py_IncRef"(i8* %".872")
  %".881" = call i8* @"PyDict_GetItem"(i8* %".859", i8* %".872")
  call void @"Py_IncRef"(i8* %".881")
  %".883" = icmp eq i8* null, %".881"
  br i1 %".883", label %"B30.endif.endif.endif.end...endif.4.if", label %"B30.endif.endif.endif.end...endif.4.endif", !prof !0
B30.endif.endif.endif.end...endif.4.if:
  %".885" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".886" = load i8*, i8** %".885"
  store i8* null, i8** %".887"
  %".890" = icmp ne i8* null, %".886"
  br i1 %".890", label %"B30.endif.endif.endif.end...endif.4.if.if", label %"B30.endif.endif.endif.end...endif.4.if.else"
B30.endif.endif.endif.end...endif.4.endif:
  %".916" = phi i8* [%".881", %"B30.endif.endif.endif.end...endif.4"], [%".906", %"B30.endif.endif.endif.end...endif.4.if.endif.endif.endif"]
  br label %"B30.endif.endif.endif.end...endif.3.endif"
B30.endif.endif.endif.end...endif.4.if.if:
  %".892" = call i8* @"PyList_GetItem"(i8* %".886", i64 6)
  store i8* %".892", i8** %".887"
  br label %"B30.endif.endif.endif.end...endif.4.if.endif"
B30.endif.endif.endif.end...endif.4.if.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B30.endif.endif.endif.end...endif.4.if.endif"
B30.endif.endif.endif.end...endif.4.if.endif:
  %".897" = load i8*, i8** %".887"
  %".898" = icmp eq i8* null, %".897"
  br i1 %".898", label %"B30.endif.endif.endif.end...endif.4.if.endif.if", label %"B30.endif.endif.endif.end...endif.4.if.endif.endif", !prof !0
B30.endif.endif.endif.end...endif.4.if.endif.if:
  %".900" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".900")
  %".902" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".902")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.4.if.endif.endif:
  call void @"Py_IncRef"(i8* %".897")
  %".906" = call i8* @"PyObject_GetAttr"(i8* %".859", i8* %".897")
  %".907" = icmp eq i8* null, %".906"
  br i1 %".907", label %"B30.endif.endif.endif.end...endif.4.if.endif.endif.if", label %"B30.endif.endif.endif.end...endif.4.if.endif.endif.endif", !prof !0
B30.endif.endif.endif.end...endif.4.if.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([35 x i8]* @".const.global name 'print' is not defined" to i8*))
  %".910" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".910")
  %".912" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".912")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.4.if.endif.endif.endif:
  br label %"B30.endif.endif.endif.end...endif.4.endif"
B30.endif.endif.endif.end...endif.3.endif.if:
  %".928" = call i8* @"PyList_GetItem"(i8* %".922", i64 7)
  store i8* %".928", i8** %".923"
  br label %"B30.endif.endif.endif.end...endif.3.endif.endif"
B30.endif.endif.endif.end...endif.3.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B30.endif.endif.endif.end...endif.3.endif.endif"
B30.endif.endif.endif.end...endif.3.endif.endif:
  %".933" = load i8*, i8** %".923"
  %".934" = icmp eq i8* null, %".933"
  br i1 %".934", label %"B30.endif.endif.endif.end...endif.3.endif.endif.if", label %"B30.endif.endif.endif.end...endif.3.endif.endif.endif", !prof !0
B30.endif.endif.endif.end...endif.3.endif.endif.if:
  %".936" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".936")
  %".938" = load i8*, i8** %"$54load_global.10"
  call void @"Py_DecRef"(i8* %".938")
  %".940" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".940")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.3.endif.endif.endif:
  call void @"Py_IncRef"(i8* %".933")
  store i8* %".933", i8** %"$const56.11"
  %".946" = load i8*, i8** %"$const56.11"
  %".947" = icmp eq i8* null, %".946"
  br i1 %".947", label %"B30.endif.endif.endif.end...if.5", label %"B30.endif.endif.endif.end...endif.5", !prof !0
B30.endif.endif.endif.end...if.5:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([34 x i8]* @".const.name '$const56.11' is not defined" to i8*))
  %".950" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".950")
  %".952" = load i8*, i8** %"$const56.11"
  call void @"Py_DecRef"(i8* %".952")
  %".954" = load i8*, i8** %"$54load_global.10"
  call void @"Py_DecRef"(i8* %".954")
  %".956" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".956")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.5:
  %".959" = load i8*, i8** %"x"
  %".960" = icmp eq i8* null, %".959"
  br i1 %".960", label %"B30.endif.endif.endif.end...endif.5.if", label %"B30.endif.endif.endif.end...endif.5.endif", !prof !0
B30.endif.endif.endif.end...endif.5.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([24 x i8]* @".const.name 'x' is not defined" to i8*))
  %".963" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".963")
  %".965" = load i8*, i8** %"$const56.11"
  call void @"Py_DecRef"(i8* %".965")
  %".967" = load i8*, i8** %"$54load_global.10"
  call void @"Py_DecRef"(i8* %".967")
  %".969" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".969")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.5.endif:
  %".972" = load i8*, i8** %"$54load_global.10"
  %".973" = icmp eq i8* null, %".972"
  br i1 %".973", label %"B30.endif.endif.endif.end...endif.5.endif.if", label %"B30.endif.endif.endif.end...endif.5.endif.endif", !prof !0
B30.endif.endif.endif.end...endif.5.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([40 x i8]* @".const.name '$54load_global.10' is not defined" to i8*))
  %".976" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".976")
  %".978" = load i8*, i8** %"$const56.11"
  call void @"Py_DecRef"(i8* %".978")
  %".980" = load i8*, i8** %"$54load_global.10"
  call void @"Py_DecRef"(i8* %".980")
  %".982" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".982")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.5.endif.endif:
  %".985" = call i8* (i64, ...) @"PyTuple_Pack"(i64 2, i8* %".946", i8* %".959")
  %".986" = call i8* @"PyObject_Call"(i8* %".972", i8* %".985", i8* null)
  call void @"Py_DecRef"(i8* %".985")
  %".988" = icmp eq i8* null, %".986"
  br i1 %".988", label %"B30.endif.endif.endif.end...endif.5.endif.endif.if", label %"B30.endif.endif.endif.end...endif.5.endif.endif.endif", !prof !0
B30.endif.endif.endif.end...endif.5.endif.endif.if:
  %".990" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".990")
  %".992" = load i8*, i8** %"$const56.11"
  call void @"Py_DecRef"(i8* %".992")
  %".994" = load i8*, i8** %"$54load_global.10"
  call void @"Py_DecRef"(i8* %".994")
  %".996" = load i8*, i8** %"h"
  call void @"Py_DecRef"(i8* %".996")
  ret i32 -1, !ret_is_raise !1
B30.endif.endif.endif.end...endif.5.endif.endif.endif:
  store i8* %".986", i8** %"$60call_function.13"
  %".1001" = load i8*, i8** %"$const56.11"
  call void @"Py_DecRef"(i8* %".1001")
  store i8* null, i8** %"$const56.11"
  %".1004" = load i8*, i8** %"$60call_function.13"
  call void @"Py_DecRef"(i8* %".1004")
  store i8* null, i8** %"$60call_function.13"
  %".1007" = load i8*, i8** %"$54load_global.10"
  call void @"Py_DecRef"(i8* %".1007")
  store i8* null, i8** %"$54load_global.10"
  br label %"B18"
B67.if:
  %".1024" = call i8* @"PyList_GetItem"(i8* %".1018", i64 6)
  store i8* %".1024", i8** %".1019"
  br label %"B67.endif"
B67.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B67.endif"
B67.endif:
  %".1029" = load i8*, i8** %".1019"
  %".1030" = icmp eq i8* null, %".1029"
  br i1 %".1030", label %"B67.endif.if", label %"B67.endif.endif", !prof !0
B67.endif.if:
  %".1032" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".1032")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif:
  call void @"Py_IncRef"(i8* %".1029")
  %".1036" = call i8* @"PyDict_GetItem"(i8* %".1016", i8* %".1029")
  call void @"Py_IncRef"(i8* %".1036")
  %".1038" = icmp eq i8* null, %".1036"
  br i1 %".1038", label %"B67.endif.endif.if", label %"B67.endif.endif.endif"
B67.endif.endif.if:
  %".1040" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".1041" = load i8*, i8** %".1040"
  store i8* null, i8** %".1042"
  %".1045" = icmp ne i8* null, %".1041"
  br i1 %".1045", label %"B67.endif.endif.if.if", label %"B67.endif.endif.if.else"
B67.endif.endif.endif:
  %".1112" = phi i8* [%".1036", %"B67.endif.endif"], [%".1110", %"B67.endif.endif.if.endif.endif.endif.endif.endif"]
  store i8* %".1112", i8** %"$66load_global.0"
  %".1115" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".1116" = load i8*, i8** %".1115"
  store i8* null, i8** %".1117"
  %".1120" = icmp ne i8* null, %".1116"
  br i1 %".1120", label %"B67.endif.endif.endif.if", label %"B67.endif.endif.endif.else"
B67.endif.endif.if.if:
  %".1047" = call i8* @"PyList_GetItem"(i8* %".1041", i64 3)
  store i8* %".1047", i8** %".1042"
  br label %"B67.endif.endif.if.endif"
B67.endif.endif.if.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B67.endif.endif.if.endif"
B67.endif.endif.if.endif:
  %".1052" = load i8*, i8** %".1042"
  %".1053" = icmp eq i8* null, %".1052"
  br i1 %".1053", label %"B67.endif.endif.if.endif.if", label %"B67.endif.endif.if.endif.endif", !prof !0
B67.endif.endif.if.endif.if:
  %".1055" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".1055")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.if.endif.endif:
  call void @"Py_IncRef"(i8* %".1052")
  %".1059" = call i8* @"PyDict_GetItem"(i8* %".1016", i8* %".1052")
  %".1060" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".1061" = load i8*, i8** %".1060"
  store i8* null, i8** %".1062"
  %".1065" = icmp ne i8* null, %".1061"
  br i1 %".1065", label %"B67.endif.endif.if.endif.endif.if", label %"B67.endif.endif.if.endif.endif.else"
B67.endif.endif.if.endif.endif.if:
  %".1067" = call i8* @"PyList_GetItem"(i8* %".1061", i64 6)
  store i8* %".1067", i8** %".1062"
  br label %"B67.endif.endif.if.endif.endif.endif"
B67.endif.endif.if.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B67.endif.endif.if.endif.endif.endif"
B67.endif.endif.if.endif.endif.endif:
  %".1072" = load i8*, i8** %".1062"
  %".1073" = icmp eq i8* null, %".1072"
  br i1 %".1073", label %"B67.endif.endif.if.endif.endif.endif.if", label %"B67.endif.endif.if.endif.endif.endif.endif", !prof !0
B67.endif.endif.if.endif.endif.endif.if:
  %".1075" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".1075")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.if.endif.endif.endif.endif:
  call void @"Py_IncRef"(i8* %".1072")
  %".1079" = call i8* @"PyDict_GetItem"(i8* %".1059", i8* %".1072")
  call void @"Py_IncRef"(i8* %".1079")
  %".1081" = icmp eq i8* null, %".1079"
  br i1 %".1081", label %"B67.endif.endif.if.endif.endif.endif.endif.if", label %"B67.endif.endif.if.endif.endif.endif.endif.endif", !prof !0
B67.endif.endif.if.endif.endif.endif.endif.if:
  %".1083" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".1084" = load i8*, i8** %".1083"
  store i8* null, i8** %".1085"
  %".1088" = icmp ne i8* null, %".1084"
  br i1 %".1088", label %"B67.endif.endif.if.endif.endif.endif.endif.if.if", label %"B67.endif.endif.if.endif.endif.endif.endif.if.else"
B67.endif.endif.if.endif.endif.endif.endif.endif:
  %".1110" = phi i8* [%".1079", %"B67.endif.endif.if.endif.endif.endif.endif"], [%".1102", %"B67.endif.endif.if.endif....endif.endif"]
  br label %"B67.endif.endif.endif"
B67.endif.endif.if.endif.endif.endif.endif.if.if:
  %".1090" = call i8* @"PyList_GetItem"(i8* %".1084", i64 6)
  store i8* %".1090", i8** %".1085"
  br label %"B67.endif.endif.if.endif.endif.endif.endif.if.endif"
B67.endif.endif.if.endif.endif.endif.endif.if.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B67.endif.endif.if.endif.endif.endif.endif.if.endif"
B67.endif.endif.if.endif.endif.endif.endif.if.endif:
  %".1095" = load i8*, i8** %".1085"
  %".1096" = icmp eq i8* null, %".1095"
  br i1 %".1096", label %"B67.endif.endif.if.endif....if", label %"B67.endif.endif.if.endif....endif", !prof !0
B67.endif.endif.if.endif....if:
  %".1098" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".1098")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.if.endif....endif:
  call void @"Py_IncRef"(i8* %".1095")
  %".1102" = call i8* @"PyObject_GetAttr"(i8* %".1059", i8* %".1095")
  %".1103" = icmp eq i8* null, %".1102"
  br i1 %".1103", label %"B67.endif.endif.if.endif....endif.if", label %"B67.endif.endif.if.endif....endif.endif", !prof !0
B67.endif.endif.if.endif....endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([35 x i8]* @".const.global name 'print' is not defined" to i8*))
  %".1106" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".1106")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.if.endif....endif.endif:
  br label %"B67.endif.endif.if.endif.endif.endif.endif.endif"
B67.endif.endif.endif.if:
  %".1122" = call i8* @"PyList_GetItem"(i8* %".1116", i64 8)
  store i8* %".1122", i8** %".1117"
  br label %"B67.endif.endif.endif.endif"
B67.endif.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B67.endif.endif.endif.endif"
B67.endif.endif.endif.endif:
  %".1127" = load i8*, i8** %".1117"
  %".1128" = icmp eq i8* null, %".1127"
  br i1 %".1128", label %"B67.endif.endif.endif.endif.if", label %"B67.endif.endif.endif.endif.endif", !prof !0
B67.endif.endif.endif.endif.if:
  %".1130" = load i8*, i8** %"$66load_global.0"
  call void @"Py_DecRef"(i8* %".1130")
  %".1132" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".1132")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.endif.endif.endif:
  call void @"Py_IncRef"(i8* %".1127")
  store i8* %".1127", i8** %"$const68.1"
  %".1138" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".1139" = load i8*, i8** %".1138"
  store i8* null, i8** %".1140"
  %".1143" = icmp ne i8* null, %".1139"
  br i1 %".1143", label %"B67.endif.endif.endif.endif.endif.if", label %"B67.endif.endif.endif.endif.endif.else"
B67.endif.endif.endif.endif.endif.if:
  %".1145" = call i8* @"PyList_GetItem"(i8* %".1139", i64 9)
  store i8* %".1145", i8** %".1140"
  br label %"B67.endif.endif.endif.endif.endif.endif"
B67.endif.endif.endif.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B67.endif.endif.endif.endif.endif.endif"
B67.endif.endif.endif.endif.endif.endif:
  %".1150" = load i8*, i8** %".1140"
  %".1151" = icmp eq i8* null, %".1150"
  br i1 %".1151", label %"B67.endif.endif.endif.endif.endif.endif.if", label %"B67.endif.endif.endif.endif.endif.endif.endif", !prof !0
B67.endif.endif.endif.endif.endif.endif.if:
  %".1153" = load i8*, i8** %"$const68.1"
  call void @"Py_DecRef"(i8* %".1153")
  %".1155" = load i8*, i8** %"$66load_global.0"
  call void @"Py_DecRef"(i8* %".1155")
  %".1157" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".1157")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.endif.endif.endif.endif.endif:
  call void @"Py_IncRef"(i8* %".1150")
  store i8* %".1150", i8** %"$const70.2"
  %".1163" = load i8*, i8** %"$const70.2"
  %".1164" = icmp eq i8* null, %".1163"
  br i1 %".1164", label %"B67.endif.endif.endif.endif.endif.endif.endif.if", label %"B67.endif.endif.endif.endif.endif.endif.endif.endif", !prof !0
B67.endif.endif.endif.endif.endif.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([33 x i8]* @".const.name '$const70.2' is not defined" to i8*))
  %".1167" = load i8*, i8** %"$const68.1"
  call void @"Py_DecRef"(i8* %".1167")
  %".1169" = load i8*, i8** %"$66load_global.0"
  call void @"Py_DecRef"(i8* %".1169")
  %".1171" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".1171")
  %".1173" = load i8*, i8** %"$const70.2"
  call void @"Py_DecRef"(i8* %".1173")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.endif.endif.endif.endif.endif.endif:
  %".1176" = load i8*, i8** %"x"
  %".1177" = icmp eq i8* null, %".1176"
  br i1 %".1177", label %"B67.endif.endif.endif.end...if", label %"B67.endif.endif.endif.end...endif", !prof !0
B67.endif.endif.endif.end...if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([24 x i8]* @".const.name 'x' is not defined" to i8*))
  %".1180" = load i8*, i8** %"$const68.1"
  call void @"Py_DecRef"(i8* %".1180")
  %".1182" = load i8*, i8** %"$66load_global.0"
  call void @"Py_DecRef"(i8* %".1182")
  %".1184" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".1184")
  %".1186" = load i8*, i8** %"$const70.2"
  call void @"Py_DecRef"(i8* %".1186")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.endif.end...endif:
  %".1189" = call i8* @"PyNumber_Remainder"(i8* %".1163", i8* %".1176")
  %".1190" = icmp eq i8* null, %".1189"
  br i1 %".1190", label %"B67.endif.endif.endif.end...endif.if", label %"B67.endif.endif.endif.end...endif.endif", !prof !0
B67.endif.endif.endif.end...endif.if:
  %".1192" = load i8*, i8** %"$const68.1"
  call void @"Py_DecRef"(i8* %".1192")
  %".1194" = load i8*, i8** %"$66load_global.0"
  call void @"Py_DecRef"(i8* %".1194")
  %".1196" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".1196")
  %".1198" = load i8*, i8** %"$const70.2"
  call void @"Py_DecRef"(i8* %".1198")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.endif.end...endif.endif:
  store i8* %".1189", i8** %"$74binary_modulo.4"
  %".1203" = load i8*, i8** %"x"
  call void @"Py_DecRef"(i8* %".1203")
  store i8* null, i8** %"x"
  %".1206" = load i8*, i8** %"$const70.2"
  call void @"Py_DecRef"(i8* %".1206")
  store i8* null, i8** %"$const70.2"
  %".1209" = load i8*, i8** %"$const68.1"
  %".1210" = icmp eq i8* null, %".1209"
  br i1 %".1210", label %"B67.endif.endif.endif.end...endif.endif.if", label %"B67.endif.endif.endif.end...endif.endif.endif", !prof !0
B67.endif.endif.endif.end...endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([33 x i8]* @".const.name '$const68.1' is not defined" to i8*))
  %".1213" = load i8*, i8** %"$const68.1"
  call void @"Py_DecRef"(i8* %".1213")
  %".1215" = load i8*, i8** %"$66load_global.0"
  call void @"Py_DecRef"(i8* %".1215")
  %".1217" = load i8*, i8** %"$74binary_modulo.4"
  call void @"Py_DecRef"(i8* %".1217")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.endif.end...endif.endif.endif:
  %".1220" = load i8*, i8** %"$74binary_modulo.4"
  %".1221" = icmp eq i8* null, %".1220"
  br i1 %".1221", label %"B67.endif.endif.endif.end...endif.endif.endif.if", label %"B67.endif.endif.endif.end...endif.endif.endif.endif", !prof !0
B67.endif.endif.endif.end...endif.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([41 x i8]* @".const.name '$74binary_modulo.4' is not defined" to i8*))
  %".1224" = load i8*, i8** %"$const68.1"
  call void @"Py_DecRef"(i8* %".1224")
  %".1226" = load i8*, i8** %"$66load_global.0"
  call void @"Py_DecRef"(i8* %".1226")
  %".1228" = load i8*, i8** %"$74binary_modulo.4"
  call void @"Py_DecRef"(i8* %".1228")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.endif.end...endif.endif.endif.endif:
  %".1231" = load i8*, i8** %"$66load_global.0"
  %".1232" = icmp eq i8* null, %".1231"
  br i1 %".1232", label %"B67.endif.endif.endif.end...if.1", label %"B67.endif.endif.endif.end...endif.1", !prof !0
B67.endif.endif.endif.end...if.1:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([39 x i8]* @".const.name '$66load_global.0' is not defined" to i8*))
  %".1235" = load i8*, i8** %"$const68.1"
  call void @"Py_DecRef"(i8* %".1235")
  %".1237" = load i8*, i8** %"$66load_global.0"
  call void @"Py_DecRef"(i8* %".1237")
  %".1239" = load i8*, i8** %"$74binary_modulo.4"
  call void @"Py_DecRef"(i8* %".1239")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.endif.end...endif.1:
  %".1242" = call i8* (i64, ...) @"PyTuple_Pack"(i64 2, i8* %".1209", i8* %".1220")
  %".1243" = call i8* @"PyObject_Call"(i8* %".1231", i8* %".1242", i8* null)
  call void @"Py_DecRef"(i8* %".1242")
  %".1245" = icmp eq i8* null, %".1243"
  br i1 %".1245", label %"B67.endif.endif.endif.end...endif.1.if", label %"B67.endif.endif.endif.end...endif.1.endif", !prof !0
B67.endif.endif.endif.end...endif.1.if:
  %".1247" = load i8*, i8** %"$const68.1"
  call void @"Py_DecRef"(i8* %".1247")
  %".1249" = load i8*, i8** %"$66load_global.0"
  call void @"Py_DecRef"(i8* %".1249")
  %".1251" = load i8*, i8** %"$74binary_modulo.4"
  call void @"Py_DecRef"(i8* %".1251")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.endif.end...endif.1.endif:
  store i8* %".1243", i8** %"$76call_function.5"
  %".1256" = load i8*, i8** %"$const68.1"
  call void @"Py_DecRef"(i8* %".1256")
  store i8* null, i8** %"$const68.1"
  %".1259" = load i8*, i8** %"$76call_function.5"
  call void @"Py_DecRef"(i8* %".1259")
  store i8* null, i8** %"$76call_function.5"
  %".1262" = load i8*, i8** %"$74binary_modulo.4"
  call void @"Py_DecRef"(i8* %".1262")
  store i8* null, i8** %"$74binary_modulo.4"
  %".1265" = load i8*, i8** %"$66load_global.0"
  call void @"Py_DecRef"(i8* %".1265")
  store i8* null, i8** %"$66load_global.0"
  %".1268" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".18", i32 0, i32 1
  %".1269" = load i8*, i8** %".1268"
  store i8* null, i8** %".1270"
  %".1273" = icmp ne i8* null, %".1269"
  br i1 %".1273", label %"B67.endif.endif.endif.end...endif.1.endif.if", label %"B67.endif.endif.endif.end...endif.1.endif.else"
B67.endif.endif.endif.end...endif.1.endif.if:
  %".1275" = call i8* @"PyList_GetItem"(i8* %".1269", i64 10)
  store i8* %".1275", i8** %".1270"
  br label %"B67.endif.endif.endif.end...endif.1.endif.endif"
B67.endif.endif.endif.end...endif.1.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B67.endif.endif.endif.end...endif.1.endif.endif"
B67.endif.endif.endif.end...endif.1.endif.endif:
  %".1280" = load i8*, i8** %".1270"
  %".1281" = icmp eq i8* null, %".1280"
  br i1 %".1281", label %"B67.endif.endif.endif.end...endif.1.endif.endif.if", label %"B67.endif.endif.endif.end...endif.1.endif.endif.endif", !prof !0
B67.endif.endif.endif.end...endif.1.endif.endif.if:
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.endif.end...endif.1.endif.endif.endif:
  call void @"Py_IncRef"(i8* %".1280")
  store i8* %".1280", i8** %"$const80.6"
  %".1287" = load i8*, i8** %"$const80.6"
  %".1288" = icmp eq i8* null, %".1287"
  br i1 %".1288", label %"B67.endif.endif.endif.end...if.2", label %"B67.endif.endif.endif.end...endif.2", !prof !0
B67.endif.endif.endif.end...if.2:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([33 x i8]* @".const.name '$const80.6' is not defined" to i8*))
  %".1291" = load i8*, i8** %"$const80.6"
  call void @"Py_DecRef"(i8* %".1291")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.endif.end...endif.2:
  call void @"Py_IncRef"(i8* %".1287")
  store i8* %".1287", i8** %"$82return_value.7"
  %".1297" = load i8*, i8** %"$const80.6"
  call void @"Py_DecRef"(i8* %".1297")
  store i8* null, i8** %"$const80.6"
  %".1300" = load i8*, i8** %"$82return_value.7"
  %".1301" = icmp eq i8* null, %".1300"
  br i1 %".1301", label %"B67.endif.endif.endif.end...endif.2.if", label %"B67.endif.endif.endif.end...endif.2.endif", !prof !0
B67.endif.endif.endif.end...endif.2.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([40 x i8]* @".const.name '$82return_value.7' is not defined" to i8*))
  %".1304" = load i8*, i8** %"$82return_value.7"
  call void @"Py_DecRef"(i8* %".1304")
  ret i32 -1, !ret_is_raise !1
B67.endif.endif.endif.end...endif.2.endif:
  store i8* %".1300", i8** %"retptr"
  ret i32 0
}

@".const.pickledata.3019473895616" = internal constant [122 x i8] c"\80\04\95o\00\00\00\00\00\00\00\8c\08builtins\94\8c\0cRuntimeError\94\93\94\8cJmissing Environment: _ZN08NumbaEnv8__main__19newtonIteration_241E8pyobject\94\85\94N\87\94."
@".const.pickledata.3019473895616.sha1" = internal constant [20 x i8] c"\f0e\06\df\f1h\df]\13\17'5\abv\f6_\c8 \1a\c0"
@".const.picklebuf.3019473895616" = internal constant {i8*, i32, i8*} {i8* bitcast ([122 x i8]* @".const.pickledata.3019473895616" to i8*), i32 122, i8* bitcast ([20 x i8]* @".const.pickledata.3019473895616.sha1" to i8*)}
declare void @"Py_IncRef"(i8* %".1") 

declare i8* @"PyList_GetItem"(i8* %".1", i64 %".2") 

declare void @"PyErr_SetString"(i8* %".1", i8* %".2") 

@"PyExc_RuntimeError" = external global i8
@".const.`env.consts` is NULL in `read_const`" = internal constant [37 x i8] c"`env.consts` is NULL in `read_const`\00"
declare void @"Py_DecRef"(i8* %".1") 

declare i8* @"PyDict_GetItem"(i8* %".1", i8* %".2") 

@".const.global name 'function' is not defined" = internal constant [38 x i8] c"global name 'function' is not defined\00"
@"PyExc_NameError" = external global i8
@".const.name 'x' is not defined" = internal constant [24 x i8] c"name 'x' is not defined\00"
@".const.name '$2load_global.0' is not defined" = internal constant [38 x i8] c"name '$2load_global.0' is not defined\00"
declare i8* @"PyTuple_Pack"(i64 %".1", ...) 

declare i8* @"PyObject_Call"(i8* %".1", i8* %".2", i8* %".3") 

@".const.global name 'derivedFunction' is not defined" = internal constant [45 x i8] c"global name 'derivedFunction' is not defined\00"
@".const.name '$8load_global.3' is not defined" = internal constant [38 x i8] c"name '$8load_global.3' is not defined\00"
@".const.name '$6call_function.2' is not defined" = internal constant [40 x i8] c"name '$6call_function.2' is not defined\00"
@".const.name '$12call_function.5' is not defined" = internal constant [41 x i8] c"name '$12call_function.5' is not defined\00"
declare i8* @"PyNumber_TrueDivide"(i8* %".1", i8* %".2") 

declare i8* @"PyObject_GetAttr"(i8* %".1", i8* %".2") 

@".const.global name 'abs' is not defined" = internal constant [33 x i8] c"global name 'abs' is not defined\00"
@".const.name 'h' is not defined" = internal constant [24 x i8] c"name 'h' is not defined\00"
@".const.name '$18load_global.0' is not defined" = internal constant [39 x i8] c"name '$18load_global.0' is not defined\00"
@".const.name '$22call_function.2' is not defined" = internal constant [41 x i8] c"name '$22call_function.2' is not defined\00"
@".const.name '$const24.3' is not defined" = internal constant [33 x i8] c"name '$const24.3' is not defined\00"
declare i8* @"PyObject_RichCompare"(i8* %".1", i8* %".2", i32 %".3") 

@".const.global name 'bool' is not defined" = internal constant [34 x i8] c"global name 'bool' is not defined\00"
@".const.name '$26compare_op.4' is not defined" = internal constant [38 x i8] c"name '$26compare_op.4' is not defined\00"
@".const.name 'bool28' is not defined" = internal constant [29 x i8] c"name 'bool28' is not defined\00"
@".const.name '$28pred' is not defined" = internal constant [30 x i8] c"name '$28pred' is not defined\00"
declare i32 @"PyObject_IsTrue"(i8* %".1") 

@".const.name '$30load_global.0' is not defined" = internal constant [39 x i8] c"name '$30load_global.0' is not defined\00"
@".const.name '$36load_global.3' is not defined" = internal constant [39 x i8] c"name '$36load_global.3' is not defined\00"
@".const.name '$34call_function.2' is not defined" = internal constant [41 x i8] c"name '$34call_function.2' is not defined\00"
@".const.name '$40call_function.5' is not defined" = internal constant [41 x i8] c"name '$40call_function.5' is not defined\00"
declare i8* @"PyNumber_Subtract"(i8* %".1", i8* %".2") 

@".const.name '$50binary_subtract.9' is not defined" = internal constant [43 x i8] c"name '$50binary_subtract.9' is not defined\00"
@".const.global name 'print' is not defined" = internal constant [35 x i8] c"global name 'print' is not defined\00"
@".const.name '$const56.11' is not defined" = internal constant [34 x i8] c"name '$const56.11' is not defined\00"
@".const.name '$54load_global.10' is not defined" = internal constant [40 x i8] c"name '$54load_global.10' is not defined\00"
@".const.name '$const70.2' is not defined" = internal constant [33 x i8] c"name '$const70.2' is not defined\00"
declare i8* @"PyNumber_Remainder"(i8* %".1", i8* %".2") 

@".const.name '$const68.1' is not defined" = internal constant [33 x i8] c"name '$const68.1' is not defined\00"
@".const.name '$74binary_modulo.4' is not defined" = internal constant [41 x i8] c"name '$74binary_modulo.4' is not defined\00"
@".const.name '$66load_global.0' is not defined" = internal constant [39 x i8] c"name '$66load_global.0' is not defined\00"
@".const.name '$const80.6' is not defined" = internal constant [33 x i8] c"name '$const80.6' is not defined\00"
@".const.name '$82return_value.7' is not defined" = internal constant [40 x i8] c"name '$82return_value.7' is not defined\00"
!0 = !{ !"branch_weights", i32 1, i32 99 }
!1 = !{ i1 1 }
================================================================================
