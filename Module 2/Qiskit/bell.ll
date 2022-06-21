-----------------LLVM DUMP <function descriptor 'BellState$1'>------------------
; ModuleID = "BellState$1"
target triple = "x86_64-pc-windows-msvc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"

@"_ZN08NumbaEnv8__main__13BellState_241E" = common global i8* null
define i32 @"_ZN8__main__13BellState_241E"(i8** noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo") 
{
entry:
  %".4" = load i8*, i8** @"_ZN08NumbaEnv8__main__13BellState_241E"
  %".5" = icmp eq i8* null, %".4"
  %"try_state" = alloca i64
  store i64 0, i64* %"try_state"
  %".22" = alloca i8*
  store i8* null, i8** %".22"
  %"$2load_global.0" = alloca i8*
  store i8* null, i8** %"$2load_global.0"
  %".47" = alloca i8*
  store i8* null, i8** %".47"
  %"$const4.1" = alloca i8*
  store i8* null, i8** %"$const4.1"
  %".68" = alloca i8*
  store i8* null, i8** %".68"
  %"$const6.2" = alloca i8*
  store i8* null, i8** %"$const6.2"
  %"qreg_q" = alloca i8*
  store i8* null, i8** %"qreg_q"
  %".149" = alloca i8*
  store i8* null, i8** %".149"
  %"$12load_global.4" = alloca i8*
  store i8* null, i8** %"$12load_global.4"
  %".178" = alloca i8*
  store i8* null, i8** %".178"
  %"$const14.5" = alloca i8*
  store i8* null, i8** %"$const14.5"
  %".201" = alloca i8*
  store i8* null, i8** %".201"
  %"$const16.6" = alloca i8*
  store i8* null, i8** %"$const16.6"
  %"creg_c" = alloca i8*
  store i8* null, i8** %"creg_c"
  %".292" = alloca i8*
  store i8* null, i8** %".292"
  %"$22load_global.8" = alloca i8*
  store i8* null, i8** %"$22load_global.8"
  %"circuit" = alloca i8*
  store i8* null, i8** %"circuit"
  %".386" = alloca i8*
  store i8* null, i8** %".386"
  %"$34load_method.13" = alloca i8*
  store i8* null, i8** %"$34load_method.13"
  %".421" = alloca i8*
  store i8* null, i8** %".421"
  %"$const38.15" = alloca i8*
  store i8* null, i8** %"$const38.15"
  %"$40binary_subscr.16" = alloca i8*
  store i8* null, i8** %"$40binary_subscr.16"
  %"$42call_method.17" = alloca i8*
  store i8* null, i8** %"$42call_method.17"
  %".565" = alloca i8*
  store i8* null, i8** %".565"
  %"$48load_method.19" = alloca i8*
  store i8* null, i8** %"$48load_method.19"
  %".600" = alloca i8*
  store i8* null, i8** %".600"
  %"$const52.21" = alloca i8*
  store i8* null, i8** %"$const52.21"
  %"$54binary_subscr.22" = alloca i8*
  store i8* null, i8** %"$54binary_subscr.22"
  %".676" = alloca i8*
  store i8* null, i8** %".676"
  %"$const58.24" = alloca i8*
  store i8* null, i8** %"$const58.24"
  %"$60binary_subscr.25" = alloca i8*
  store i8* null, i8** %"$60binary_subscr.25"
  %"$62call_method.26" = alloca i8*
  store i8* null, i8** %"$62call_method.26"
  %".854" = alloca i8*
  store i8* null, i8** %".854"
  %"$68load_method.28" = alloca i8*
  store i8* null, i8** %"$68load_method.28"
  %".889" = alloca i8*
  store i8* null, i8** %".889"
  %"$const72.30" = alloca i8*
  store i8* null, i8** %"$const72.30"
  %"$74binary_subscr.31" = alloca i8*
  store i8* null, i8** %"$74binary_subscr.31"
  %".965" = alloca i8*
  store i8* null, i8** %".965"
  %"$const78.33" = alloca i8*
  store i8* null, i8** %"$const78.33"
  %"$80binary_subscr.34" = alloca i8*
  store i8* null, i8** %"$80binary_subscr.34"
  %"$82call_method.35" = alloca i8*
  store i8* null, i8** %"$82call_method.35"
  %".1143" = alloca i8*
  store i8* null, i8** %".1143"
  %"$88load_method.37" = alloca i8*
  store i8* null, i8** %"$88load_method.37"
  %".1181" = alloca i8*
  store i8* null, i8** %".1181"
  %"$const92.39" = alloca i8*
  store i8* null, i8** %"$const92.39"
  %"$94binary_subscr.40" = alloca i8*
  store i8* null, i8** %"$94binary_subscr.40"
  %".1252" = alloca i8*
  store i8* null, i8** %".1252"
  %"$const98.42" = alloca i8*
  store i8* null, i8** %"$const98.42"
  %"$100binary_subscr.43" = alloca i8*
  store i8* null, i8** %"$100binary_subscr.43"
  %"$102call_method.44" = alloca i8*
  store i8* null, i8** %"$102call_method.44"
  %".1382" = alloca i8*
  store i8* null, i8** %".1382"
  %"$const106.45" = alloca i8*
  store i8* null, i8** %"$const106.45"
  %"$108return_value.46" = alloca i8*
  store i8* null, i8** %"$108return_value.46"
  br i1 %".5", label %"entry.if", label %"entry.endif", !prof !0
B0:
  %".18" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 0
  %".19" = load i8*, i8** %".18"
  %".20" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".21" = load i8*, i8** %".20"
  store i8* null, i8** %".22"
  %".25" = icmp ne i8* null, %".21"
  br i1 %".25", label %"B0.if", label %"B0.else"
entry.if:
  store {i8*, i32, i8*}* @".const.picklebuf.2044579610816", {i8*, i32, i8*}** %"excinfo"
  store i64 0, i64* %"try_state"
  %".10" = load i64, i64* %"try_state"
  %".11" = icmp ugt i64 %".10", 0
  %".12" = load {i8*, i32, i8*}*, {i8*, i32, i8*}** %"excinfo"
  ret i32 1, !ret_is_raise !1
entry.endif:
  %".14" = ptrtoint i8* %".4" to i64
  %".15" = add i64 %".14", 16
  %".16" = inttoptr i64 %".15" to i8*
  %".17" = bitcast i8* %".16" to {i8*, i8*}*
  br label %"B0"
B0.if:
  %".27" = call i8* @"PyList_GetItem"(i8* %".21", i64 0)
  store i8* %".27", i8** %".22"
  br label %"B0.endif"
B0.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif"
B0.endif:
  %".32" = load i8*, i8** %".22"
  %".33" = icmp eq i8* null, %".32"
  br i1 %".33", label %"B0.endif.if", label %"B0.endif.endif", !prof !0
B0.endif.if:
  ret i32 -1, !ret_is_raise !1
B0.endif.endif:
  call void @"Py_IncRef"(i8* %".32")
  %".37" = call i8* @"PyDict_GetItem"(i8* %".19", i8* %".32")
  call void @"Py_IncRef"(i8* %".37")
  %".39" = icmp eq i8* null, %".37"
  br i1 %".39", label %"B0.endif.endif.if", label %"B0.endif.endif.endif", !prof !0
B0.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([45 x i8]* @".const.global name 'QuantumRegister' is not defined" to i8*))
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif:
  store i8* %".37", i8** %"$2load_global.0"
  %".45" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".46" = load i8*, i8** %".45"
  store i8* null, i8** %".47"
  %".50" = icmp ne i8* null, %".46"
  br i1 %".50", label %"B0.endif.endif.endif.if", label %"B0.endif.endif.endif.else"
B0.endif.endif.endif.if:
  %".52" = call i8* @"PyList_GetItem"(i8* %".46", i64 1)
  store i8* %".52", i8** %".47"
  br label %"B0.endif.endif.endif.endif"
B0.endif.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endif"
B0.endif.endif.endif.endif:
  %".57" = load i8*, i8** %".47"
  %".58" = icmp eq i8* null, %".57"
  br i1 %".58", label %"B0.endif.endif.endif.endif.if", label %"B0.endif.endif.endif.endif.endif", !prof !0
B0.endif.endif.endif.endif.if:
  %".60" = load i8*, i8** %"$2load_global.0"
  call void @"Py_DecRef"(i8* %".60")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endif.endif:
  call void @"Py_IncRef"(i8* %".57")
  store i8* %".57", i8** %"$const4.1"
  %".66" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".67" = load i8*, i8** %".66"
  store i8* null, i8** %".68"
  %".71" = icmp ne i8* null, %".67"
  br i1 %".71", label %"B0.endif.endif.endif.endif.endif.if", label %"B0.endif.endif.endif.endif.endif.else"
B0.endif.endif.endif.endif.endif.if:
  %".73" = call i8* @"PyList_GetItem"(i8* %".67", i64 2)
  store i8* %".73", i8** %".68"
  br label %"B0.endif.endif.endif.endif.endif.endif"
B0.endif.endif.endif.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endif.endif.endif"
B0.endif.endif.endif.endif.endif.endif:
  %".78" = load i8*, i8** %".68"
  %".79" = icmp eq i8* null, %".78"
  br i1 %".79", label %"B0.endif.endif.endif.endif.endif.endif.if", label %"B0.endif.endif.endif.endif.endif.endif.endif", !prof !0
B0.endif.endif.endif.endif.endif.endif.if:
  %".81" = load i8*, i8** %"$2load_global.0"
  call void @"Py_DecRef"(i8* %".81")
  %".83" = load i8*, i8** %"$const4.1"
  call void @"Py_DecRef"(i8* %".83")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endif.endif.endif.endif:
  call void @"Py_IncRef"(i8* %".78")
  store i8* %".78", i8** %"$const6.2"
  %".89" = load i8*, i8** %"$const4.1"
  %".90" = icmp eq i8* null, %".89"
  br i1 %".90", label %"B0.endif.endif.endif.endif.endif.endif.endif.if", label %"B0.endif.endif.endif.endif.endif.endif.endif.endif", !prof !0
B0.endif.endif.endif.endif.endif.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([32 x i8]* @".const.name '$const4.1' is not defined" to i8*))
  %".93" = load i8*, i8** %"$2load_global.0"
  call void @"Py_DecRef"(i8* %".93")
  %".95" = load i8*, i8** %"$const4.1"
  call void @"Py_DecRef"(i8* %".95")
  %".97" = load i8*, i8** %"$const6.2"
  call void @"Py_DecRef"(i8* %".97")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endif.endif.endif.endif.endif:
  %".100" = load i8*, i8** %"$const6.2"
  %".101" = icmp eq i8* null, %".100"
  br i1 %".101", label %"B0.endif.endif.endif.endif.endif.endif.endif.endif.if", label %"B0.endif.endif.endif.endif.endif.endif.endif.endif.endif", !prof !0
B0.endif.endif.endif.endif.endif.endif.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([32 x i8]* @".const.name '$const6.2' is not defined" to i8*))
  %".104" = load i8*, i8** %"$2load_global.0"
  call void @"Py_DecRef"(i8* %".104")
  %".106" = load i8*, i8** %"$const4.1"
  call void @"Py_DecRef"(i8* %".106")
  %".108" = load i8*, i8** %"$const6.2"
  call void @"Py_DecRef"(i8* %".108")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endif.endif.endif.endif.endif.endif:
  %".111" = load i8*, i8** %"$2load_global.0"
  %".112" = icmp eq i8* null, %".111"
  br i1 %".112", label %"B0.endif.endif.endif.endi...if", label %"B0.endif.endif.endif.endi...endif", !prof !0
B0.endif.endif.endif.endi...if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([38 x i8]* @".const.name '$2load_global.0' is not defined" to i8*))
  %".115" = load i8*, i8** %"$2load_global.0"
  call void @"Py_DecRef"(i8* %".115")
  %".117" = load i8*, i8** %"$const4.1"
  call void @"Py_DecRef"(i8* %".117")
  %".119" = load i8*, i8** %"$const6.2"
  call void @"Py_DecRef"(i8* %".119")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif:
  %".122" = call i8* (i64, ...) @"PyTuple_Pack"(i64 2, i8* %".89", i8* %".100")
  %".123" = call i8* @"PyObject_Call"(i8* %".111", i8* %".122", i8* null)
  call void @"Py_DecRef"(i8* %".122")
  %".125" = icmp eq i8* null, %".123"
  br i1 %".125", label %"B0.endif.endif.endif.endi...endif.if", label %"B0.endif.endif.endif.endi...endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.if:
  %".127" = load i8*, i8** %"$2load_global.0"
  call void @"Py_DecRef"(i8* %".127")
  %".129" = load i8*, i8** %"$const4.1"
  call void @"Py_DecRef"(i8* %".129")
  %".131" = load i8*, i8** %"$const6.2"
  call void @"Py_DecRef"(i8* %".131")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.endif:
  store i8* %".123", i8** %"qreg_q"
  %".136" = load i8*, i8** %"$const6.2"
  call void @"Py_DecRef"(i8* %".136")
  store i8* null, i8** %"$const6.2"
  %".139" = load i8*, i8** %"$const4.1"
  call void @"Py_DecRef"(i8* %".139")
  store i8* null, i8** %"$const4.1"
  %".142" = load i8*, i8** %"$2load_global.0"
  call void @"Py_DecRef"(i8* %".142")
  store i8* null, i8** %"$2load_global.0"
  %".145" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 0
  %".146" = load i8*, i8** %".145"
  %".147" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".148" = load i8*, i8** %".147"
  store i8* null, i8** %".149"
  %".152" = icmp ne i8* null, %".148"
  br i1 %".152", label %"B0.endif.endif.endif.endi...endif.endif.if", label %"B0.endif.endif.endif.endi...endif.endif.else"
B0.endif.endif.endif.endi...endif.endif.if:
  %".154" = call i8* @"PyList_GetItem"(i8* %".148", i64 3)
  store i8* %".154", i8** %".149"
  br label %"B0.endif.endif.endif.endi...endif.endif.endif"
B0.endif.endif.endif.endi...endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.endif.endif"
B0.endif.endif.endif.endi...endif.endif.endif:
  %".159" = load i8*, i8** %".149"
  %".160" = icmp eq i8* null, %".159"
  br i1 %".160", label %"B0.endif.endif.endif.endi...endif.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.endif.endif.if:
  %".162" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".162")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.endif.endif.endif:
  call void @"Py_IncRef"(i8* %".159")
  %".166" = call i8* @"PyDict_GetItem"(i8* %".146", i8* %".159")
  call void @"Py_IncRef"(i8* %".166")
  %".168" = icmp eq i8* null, %".166"
  br i1 %".168", label %"B0.endif.endif.endif.endi...if.1", label %"B0.endif.endif.endif.endi...endif.1", !prof !0
B0.endif.endif.endif.endi...if.1:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([47 x i8]* @".const.global name 'ClassicalRegister' is not defined" to i8*))
  %".171" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".171")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.1:
  store i8* %".166", i8** %"$12load_global.4"
  %".176" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".177" = load i8*, i8** %".176"
  store i8* null, i8** %".178"
  %".181" = icmp ne i8* null, %".177"
  br i1 %".181", label %"B0.endif.endif.endif.endi...endif.1.if", label %"B0.endif.endif.endif.endi...endif.1.else"
B0.endif.endif.endif.endi...endif.1.if:
  %".183" = call i8* @"PyList_GetItem"(i8* %".177", i64 1)
  store i8* %".183", i8** %".178"
  br label %"B0.endif.endif.endif.endi...endif.1.endif"
B0.endif.endif.endif.endi...endif.1.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.1.endif"
B0.endif.endif.endif.endi...endif.1.endif:
  %".188" = load i8*, i8** %".178"
  %".189" = icmp eq i8* null, %".188"
  br i1 %".189", label %"B0.endif.endif.endif.endi...endif.1.endif.if", label %"B0.endif.endif.endif.endi...endif.1.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.1.endif.if:
  %".191" = load i8*, i8** %"$12load_global.4"
  call void @"Py_DecRef"(i8* %".191")
  %".193" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".193")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.1.endif.endif:
  call void @"Py_IncRef"(i8* %".188")
  store i8* %".188", i8** %"$const14.5"
  %".199" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".200" = load i8*, i8** %".199"
  store i8* null, i8** %".201"
  %".204" = icmp ne i8* null, %".200"
  br i1 %".204", label %"B0.endif.endif.endif.endi...endif.1.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.1.endif.endif.else"
B0.endif.endif.endif.endi...endif.1.endif.endif.if:
  %".206" = call i8* @"PyList_GetItem"(i8* %".200", i64 4)
  store i8* %".206", i8** %".201"
  br label %"B0.endif.endif.endif.endi...endif.1.endif.endif.endif"
B0.endif.endif.endif.endi...endif.1.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.1.endif.endif.endif"
B0.endif.endif.endif.endi...endif.1.endif.endif.endif:
  %".211" = load i8*, i8** %".201"
  %".212" = icmp eq i8* null, %".211"
  br i1 %".212", label %"B0.endif.endif.endif.endi...if.2", label %"B0.endif.endif.endif.endi...endif.2", !prof !0
B0.endif.endif.endif.endi...if.2:
  %".214" = load i8*, i8** %"$12load_global.4"
  call void @"Py_DecRef"(i8* %".214")
  %".216" = load i8*, i8** %"$const14.5"
  call void @"Py_DecRef"(i8* %".216")
  %".218" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".218")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.2:
  call void @"Py_IncRef"(i8* %".211")
  store i8* %".211", i8** %"$const16.6"
  %".224" = load i8*, i8** %"$const14.5"
  %".225" = icmp eq i8* null, %".224"
  br i1 %".225", label %"B0.endif.endif.endif.endi...endif.2.if", label %"B0.endif.endif.endif.endi...endif.2.endif", !prof !0
B0.endif.endif.endif.endi...endif.2.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([33 x i8]* @".const.name '$const14.5' is not defined" to i8*))
  %".228" = load i8*, i8** %"$12load_global.4"
  call void @"Py_DecRef"(i8* %".228")
  %".230" = load i8*, i8** %"$const14.5"
  call void @"Py_DecRef"(i8* %".230")
  %".232" = load i8*, i8** %"$const16.6"
  call void @"Py_DecRef"(i8* %".232")
  %".234" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".234")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.2.endif:
  %".237" = load i8*, i8** %"$const16.6"
  %".238" = icmp eq i8* null, %".237"
  br i1 %".238", label %"B0.endif.endif.endif.endi...endif.2.endif.if", label %"B0.endif.endif.endif.endi...endif.2.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.2.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([33 x i8]* @".const.name '$const16.6' is not defined" to i8*))
  %".241" = load i8*, i8** %"$12load_global.4"
  call void @"Py_DecRef"(i8* %".241")
  %".243" = load i8*, i8** %"$const14.5"
  call void @"Py_DecRef"(i8* %".243")
  %".245" = load i8*, i8** %"$const16.6"
  call void @"Py_DecRef"(i8* %".245")
  %".247" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".247")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.2.endif.endif:
  %".250" = load i8*, i8** %"$12load_global.4"
  %".251" = icmp eq i8* null, %".250"
  br i1 %".251", label %"B0.endif.endif.endif.endi...endif.2.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.2.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.2.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([39 x i8]* @".const.name '$12load_global.4' is not defined" to i8*))
  %".254" = load i8*, i8** %"$12load_global.4"
  call void @"Py_DecRef"(i8* %".254")
  %".256" = load i8*, i8** %"$const14.5"
  call void @"Py_DecRef"(i8* %".256")
  %".258" = load i8*, i8** %"$const16.6"
  call void @"Py_DecRef"(i8* %".258")
  %".260" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".260")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.2.endif.endif.endif:
  %".263" = call i8* (i64, ...) @"PyTuple_Pack"(i64 2, i8* %".224", i8* %".237")
  %".264" = call i8* @"PyObject_Call"(i8* %".250", i8* %".263", i8* null)
  call void @"Py_DecRef"(i8* %".263")
  %".266" = icmp eq i8* null, %".264"
  br i1 %".266", label %"B0.endif.endif.endif.endi...if.3", label %"B0.endif.endif.endif.endi...endif.3", !prof !0
B0.endif.endif.endif.endi...if.3:
  %".268" = load i8*, i8** %"$12load_global.4"
  call void @"Py_DecRef"(i8* %".268")
  %".270" = load i8*, i8** %"$const14.5"
  call void @"Py_DecRef"(i8* %".270")
  %".272" = load i8*, i8** %"$const16.6"
  call void @"Py_DecRef"(i8* %".272")
  %".274" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".274")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.3:
  store i8* %".264", i8** %"creg_c"
  %".279" = load i8*, i8** %"$const16.6"
  call void @"Py_DecRef"(i8* %".279")
  store i8* null, i8** %"$const16.6"
  %".282" = load i8*, i8** %"$const14.5"
  call void @"Py_DecRef"(i8* %".282")
  store i8* null, i8** %"$const14.5"
  %".285" = load i8*, i8** %"$12load_global.4"
  call void @"Py_DecRef"(i8* %".285")
  store i8* null, i8** %"$12load_global.4"
  %".288" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 0
  %".289" = load i8*, i8** %".288"
  %".290" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".291" = load i8*, i8** %".290"
  store i8* null, i8** %".292"
  %".295" = icmp ne i8* null, %".291"
  br i1 %".295", label %"B0.endif.endif.endif.endi...endif.3.if", label %"B0.endif.endif.endif.endi...endif.3.else"
B0.endif.endif.endif.endi...endif.3.if:
  %".297" = call i8* @"PyList_GetItem"(i8* %".291", i64 5)
  store i8* %".297", i8** %".292"
  br label %"B0.endif.endif.endif.endi...endif.3.endif"
B0.endif.endif.endif.endi...endif.3.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.3.endif"
B0.endif.endif.endif.endi...endif.3.endif:
  %".302" = load i8*, i8** %".292"
  %".303" = icmp eq i8* null, %".302"
  br i1 %".303", label %"B0.endif.endif.endif.endi...endif.3.endif.if", label %"B0.endif.endif.endif.endi...endif.3.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.3.endif.if:
  %".305" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".305")
  %".307" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".307")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.3.endif.endif:
  call void @"Py_IncRef"(i8* %".302")
  %".311" = call i8* @"PyDict_GetItem"(i8* %".289", i8* %".302")
  call void @"Py_IncRef"(i8* %".311")
  %".313" = icmp eq i8* null, %".311"
  br i1 %".313", label %"B0.endif.endif.endif.endi...endif.3.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.3.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.3.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([44 x i8]* @".const.global name 'QuantumCircuit' is not defined" to i8*))
  %".316" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".316")
  %".318" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".318")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.3.endif.endif.endif:
  store i8* %".311", i8** %"$22load_global.8"
  %".323" = load i8*, i8** %"qreg_q"
  %".324" = icmp eq i8* null, %".323"
  br i1 %".324", label %"B0.endif.endif.endif.endi...if.4", label %"B0.endif.endif.endif.endi...endif.4", !prof !0
B0.endif.endif.endif.endi...if.4:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([29 x i8]* @".const.name 'qreg_q' is not defined" to i8*))
  %".327" = load i8*, i8** %"$22load_global.8"
  call void @"Py_DecRef"(i8* %".327")
  %".329" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".329")
  %".331" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".331")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.4:
  %".334" = load i8*, i8** %"creg_c"
  %".335" = icmp eq i8* null, %".334"
  br i1 %".335", label %"B0.endif.endif.endif.endi...endif.4.if", label %"B0.endif.endif.endif.endi...endif.4.endif", !prof !0
B0.endif.endif.endif.endi...endif.4.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([29 x i8]* @".const.name 'creg_c' is not defined" to i8*))
  %".338" = load i8*, i8** %"$22load_global.8"
  call void @"Py_DecRef"(i8* %".338")
  %".340" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".340")
  %".342" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".342")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.4.endif:
  %".345" = load i8*, i8** %"$22load_global.8"
  %".346" = icmp eq i8* null, %".345"
  br i1 %".346", label %"B0.endif.endif.endif.endi...endif.4.endif.if", label %"B0.endif.endif.endif.endi...endif.4.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.4.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([39 x i8]* @".const.name '$22load_global.8' is not defined" to i8*))
  %".349" = load i8*, i8** %"$22load_global.8"
  call void @"Py_DecRef"(i8* %".349")
  %".351" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".351")
  %".353" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".353")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.4.endif.endif:
  %".356" = call i8* (i64, ...) @"PyTuple_Pack"(i64 2, i8* %".323", i8* %".334")
  %".357" = call i8* @"PyObject_Call"(i8* %".345", i8* %".356", i8* null)
  call void @"Py_DecRef"(i8* %".356")
  %".359" = icmp eq i8* null, %".357"
  br i1 %".359", label %"B0.endif.endif.endif.endi...endif.4.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.4.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.4.endif.endif.if:
  %".361" = load i8*, i8** %"$22load_global.8"
  call void @"Py_DecRef"(i8* %".361")
  %".363" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".363")
  %".365" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".365")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.4.endif.endif.endif:
  store i8* %".357", i8** %"circuit"
  %".370" = load i8*, i8** %"$22load_global.8"
  call void @"Py_DecRef"(i8* %".370")
  store i8* null, i8** %"$22load_global.8"
  %".373" = load i8*, i8** %"circuit"
  %".374" = icmp eq i8* null, %".373"
  br i1 %".374", label %"B0.endif.endif.endif.endi...if.5", label %"B0.endif.endif.endif.endi...endif.5", !prof !0
B0.endif.endif.endif.endi...if.5:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([30 x i8]* @".const.name 'circuit' is not defined" to i8*))
  %".377" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".377")
  %".379" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".379")
  %".381" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".381")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.5:
  %".384" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".385" = load i8*, i8** %".384"
  store i8* null, i8** %".386"
  %".389" = icmp ne i8* null, %".385"
  br i1 %".389", label %"B0.endif.endif.endif.endi...endif.5.if", label %"B0.endif.endif.endif.endi...endif.5.else"
B0.endif.endif.endif.endi...endif.5.if:
  %".391" = call i8* @"PyList_GetItem"(i8* %".385", i64 6)
  store i8* %".391", i8** %".386"
  br label %"B0.endif.endif.endif.endi...endif.5.endif"
B0.endif.endif.endif.endi...endif.5.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.5.endif"
B0.endif.endif.endif.endi...endif.5.endif:
  %".396" = load i8*, i8** %".386"
  %".397" = icmp eq i8* null, %".396"
  br i1 %".397", label %"B0.endif.endif.endif.endi...endif.5.endif.if", label %"B0.endif.endif.endif.endi...endif.5.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.5.endif.if:
  %".399" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".399")
  %".401" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".401")
  %".403" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".403")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.5.endif.endif:
  call void @"Py_IncRef"(i8* %".396")
  %".407" = call i8* @"PyObject_GetAttr"(i8* %".373", i8* %".396")
  %".408" = icmp eq i8* null, %".407"
  br i1 %".408", label %"B0.endif.endif.endif.endi...endif.5.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.5.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.5.endif.endif.if:
  %".410" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".410")
  %".412" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".412")
  %".414" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".414")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.5.endif.endif.endif:
  store i8* %".407", i8** %"$34load_method.13"
  %".419" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".420" = load i8*, i8** %".419"
  store i8* null, i8** %".421"
  %".424" = icmp ne i8* null, %".420"
  br i1 %".424", label %"B0.endif.endif.endif.endi...if.6", label %"B0.endif.endif.endif.endi...else"
B0.endif.endif.endif.endi...if.6:
  %".426" = call i8* @"PyList_GetItem"(i8* %".420", i64 7)
  store i8* %".426", i8** %".421"
  br label %"B0.endif.endif.endif.endi...endif.6"
B0.endif.endif.endif.endi...else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.6"
B0.endif.endif.endif.endi...endif.6:
  %".431" = load i8*, i8** %".421"
  %".432" = icmp eq i8* null, %".431"
  br i1 %".432", label %"B0.endif.endif.endif.endi...endif.6.if", label %"B0.endif.endif.endif.endi...endif.6.endif", !prof !0
B0.endif.endif.endif.endi...endif.6.if:
  %".434" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".434")
  %".436" = load i8*, i8** %"$34load_method.13"
  call void @"Py_DecRef"(i8* %".436")
  %".438" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".438")
  %".440" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".440")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.6.endif:
  call void @"Py_IncRef"(i8* %".431")
  store i8* %".431", i8** %"$const38.15"
  %".446" = load i8*, i8** %"qreg_q"
  %".447" = icmp eq i8* null, %".446"
  br i1 %".447", label %"B0.endif.endif.endif.endi...endif.6.endif.if", label %"B0.endif.endif.endif.endi...endif.6.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.6.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([29 x i8]* @".const.name 'qreg_q' is not defined" to i8*))
  %".450" = load i8*, i8** %"$const38.15"
  call void @"Py_DecRef"(i8* %".450")
  %".452" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".452")
  %".454" = load i8*, i8** %"$34load_method.13"
  call void @"Py_DecRef"(i8* %".454")
  %".456" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".456")
  %".458" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".458")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.6.endif.endif:
  %".461" = load i8*, i8** %"$const38.15"
  %".462" = icmp eq i8* null, %".461"
  br i1 %".462", label %"B0.endif.endif.endif.endi...endif.6.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.6.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.6.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([34 x i8]* @".const.name '$const38.15' is not defined" to i8*))
  %".465" = load i8*, i8** %"$const38.15"
  call void @"Py_DecRef"(i8* %".465")
  %".467" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".467")
  %".469" = load i8*, i8** %"$34load_method.13"
  call void @"Py_DecRef"(i8* %".469")
  %".471" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".471")
  %".473" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".473")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.6.endif.endif.endif:
  %".476" = call i8* @"PyObject_GetItem"(i8* %".446", i8* %".461")
  %".477" = icmp eq i8* null, %".476"
  br i1 %".477", label %"B0.endif.endif.endif.endi...if.7", label %"B0.endif.endif.endif.endi...endif.7", !prof !0
B0.endif.endif.endif.endi...if.7:
  %".479" = load i8*, i8** %"$const38.15"
  call void @"Py_DecRef"(i8* %".479")
  %".481" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".481")
  %".483" = load i8*, i8** %"$34load_method.13"
  call void @"Py_DecRef"(i8* %".483")
  %".485" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".485")
  %".487" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".487")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.7:
  store i8* %".476", i8** %"$40binary_subscr.16"
  %".492" = load i8*, i8** %"$const38.15"
  call void @"Py_DecRef"(i8* %".492")
  store i8* null, i8** %"$const38.15"
  %".495" = load i8*, i8** %"$40binary_subscr.16"
  %".496" = icmp eq i8* null, %".495"
  br i1 %".496", label %"B0.endif.endif.endif.endi...endif.7.if", label %"B0.endif.endif.endif.endi...endif.7.endif", !prof !0
B0.endif.endif.endif.endi...endif.7.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([42 x i8]* @".const.name '$40binary_subscr.16' is not defined" to i8*))
  %".499" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".499")
  %".501" = load i8*, i8** %"$40binary_subscr.16"
  call void @"Py_DecRef"(i8* %".501")
  %".503" = load i8*, i8** %"$34load_method.13"
  call void @"Py_DecRef"(i8* %".503")
  %".505" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".505")
  %".507" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".507")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.7.endif:
  %".510" = load i8*, i8** %"$34load_method.13"
  %".511" = icmp eq i8* null, %".510"
  br i1 %".511", label %"B0.endif.endif.endif.endi...endif.7.endif.if", label %"B0.endif.endif.endif.endi...endif.7.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.7.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([40 x i8]* @".const.name '$34load_method.13' is not defined" to i8*))
  %".514" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".514")
  %".516" = load i8*, i8** %"$40binary_subscr.16"
  call void @"Py_DecRef"(i8* %".516")
  %".518" = load i8*, i8** %"$34load_method.13"
  call void @"Py_DecRef"(i8* %".518")
  %".520" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".520")
  %".522" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".522")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.7.endif.endif:
  %".525" = call i8* (i64, ...) @"PyTuple_Pack"(i64 1, i8* %".495")
  %".526" = call i8* @"PyObject_Call"(i8* %".510", i8* %".525", i8* null)
  call void @"Py_DecRef"(i8* %".525")
  %".528" = icmp eq i8* null, %".526"
  br i1 %".528", label %"B0.endif.endif.endif.endi...endif.7.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.7.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.7.endif.endif.if:
  %".530" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".530")
  %".532" = load i8*, i8** %"$40binary_subscr.16"
  call void @"Py_DecRef"(i8* %".532")
  %".534" = load i8*, i8** %"$34load_method.13"
  call void @"Py_DecRef"(i8* %".534")
  %".536" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".536")
  %".538" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".538")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.7.endif.endif.endif:
  store i8* %".526", i8** %"$42call_method.17"
  %".543" = load i8*, i8** %"$42call_method.17"
  call void @"Py_DecRef"(i8* %".543")
  store i8* null, i8** %"$42call_method.17"
  %".546" = load i8*, i8** %"$40binary_subscr.16"
  call void @"Py_DecRef"(i8* %".546")
  store i8* null, i8** %"$40binary_subscr.16"
  %".549" = load i8*, i8** %"$34load_method.13"
  call void @"Py_DecRef"(i8* %".549")
  store i8* null, i8** %"$34load_method.13"
  %".552" = load i8*, i8** %"circuit"
  %".553" = icmp eq i8* null, %".552"
  br i1 %".553", label %"B0.endif.endif.endif.endi...if.8", label %"B0.endif.endif.endif.endi...endif.8", !prof !0
B0.endif.endif.endif.endi...if.8:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([30 x i8]* @".const.name 'circuit' is not defined" to i8*))
  %".556" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".556")
  %".558" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".558")
  %".560" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".560")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.8:
  %".563" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".564" = load i8*, i8** %".563"
  store i8* null, i8** %".565"
  %".568" = icmp ne i8* null, %".564"
  br i1 %".568", label %"B0.endif.endif.endif.endi...endif.8.if", label %"B0.endif.endif.endif.endi...endif.8.else"
B0.endif.endif.endif.endi...endif.8.if:
  %".570" = call i8* @"PyList_GetItem"(i8* %".564", i64 8)
  store i8* %".570", i8** %".565"
  br label %"B0.endif.endif.endif.endi...endif.8.endif"
B0.endif.endif.endif.endi...endif.8.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.8.endif"
B0.endif.endif.endif.endi...endif.8.endif:
  %".575" = load i8*, i8** %".565"
  %".576" = icmp eq i8* null, %".575"
  br i1 %".576", label %"B0.endif.endif.endif.endi...endif.8.endif.if", label %"B0.endif.endif.endif.endi...endif.8.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.8.endif.if:
  %".578" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".578")
  %".580" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".580")
  %".582" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".582")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.8.endif.endif:
  call void @"Py_IncRef"(i8* %".575")
  %".586" = call i8* @"PyObject_GetAttr"(i8* %".552", i8* %".575")
  %".587" = icmp eq i8* null, %".586"
  br i1 %".587", label %"B0.endif.endif.endif.endi...endif.8.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.8.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.8.endif.endif.if:
  %".589" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".589")
  %".591" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".591")
  %".593" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".593")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.8.endif.endif.endif:
  store i8* %".586", i8** %"$48load_method.19"
  %".598" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".599" = load i8*, i8** %".598"
  store i8* null, i8** %".600"
  %".603" = icmp ne i8* null, %".599"
  br i1 %".603", label %"B0.endif.endif.endif.endi...if.9", label %"B0.endif.endif.endif.endi...else.1"
B0.endif.endif.endif.endi...if.9:
  %".605" = call i8* @"PyList_GetItem"(i8* %".599", i64 7)
  store i8* %".605", i8** %".600"
  br label %"B0.endif.endif.endif.endi...endif.9"
B0.endif.endif.endif.endi...else.1:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.9"
B0.endif.endif.endif.endi...endif.9:
  %".610" = load i8*, i8** %".600"
  %".611" = icmp eq i8* null, %".610"
  br i1 %".611", label %"B0.endif.endif.endif.endi...endif.9.if", label %"B0.endif.endif.endif.endi...endif.9.endif", !prof !0
B0.endif.endif.endif.endi...endif.9.if:
  %".613" = load i8*, i8** %"$48load_method.19"
  call void @"Py_DecRef"(i8* %".613")
  %".615" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".615")
  %".617" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".617")
  %".619" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".619")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.9.endif:
  call void @"Py_IncRef"(i8* %".610")
  store i8* %".610", i8** %"$const52.21"
  %".625" = load i8*, i8** %"qreg_q"
  %".626" = icmp eq i8* null, %".625"
  br i1 %".626", label %"B0.endif.endif.endif.endi...endif.9.endif.if", label %"B0.endif.endif.endif.endi...endif.9.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.9.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([29 x i8]* @".const.name 'qreg_q' is not defined" to i8*))
  %".629" = load i8*, i8** %"$48load_method.19"
  call void @"Py_DecRef"(i8* %".629")
  %".631" = load i8*, i8** %"$const52.21"
  call void @"Py_DecRef"(i8* %".631")
  %".633" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".633")
  %".635" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".635")
  %".637" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".637")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.9.endif.endif:
  %".640" = load i8*, i8** %"$const52.21"
  %".641" = icmp eq i8* null, %".640"
  br i1 %".641", label %"B0.endif.endif.endif.endi...endif.9.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.9.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.9.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([34 x i8]* @".const.name '$const52.21' is not defined" to i8*))
  %".644" = load i8*, i8** %"$48load_method.19"
  call void @"Py_DecRef"(i8* %".644")
  %".646" = load i8*, i8** %"$const52.21"
  call void @"Py_DecRef"(i8* %".646")
  %".648" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".648")
  %".650" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".650")
  %".652" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".652")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.9.endif.endif.endif:
  %".655" = call i8* @"PyObject_GetItem"(i8* %".625", i8* %".640")
  %".656" = icmp eq i8* null, %".655"
  br i1 %".656", label %"B0.endif.endif.endif.endi...if.10", label %"B0.endif.endif.endif.endi...endif.10", !prof !0
B0.endif.endif.endif.endi...if.10:
  %".658" = load i8*, i8** %"$48load_method.19"
  call void @"Py_DecRef"(i8* %".658")
  %".660" = load i8*, i8** %"$const52.21"
  call void @"Py_DecRef"(i8* %".660")
  %".662" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".662")
  %".664" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".664")
  %".666" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".666")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.10:
  store i8* %".655", i8** %"$54binary_subscr.22"
  %".671" = load i8*, i8** %"$const52.21"
  call void @"Py_DecRef"(i8* %".671")
  store i8* null, i8** %"$const52.21"
  %".674" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".675" = load i8*, i8** %".674"
  store i8* null, i8** %".676"
  %".679" = icmp ne i8* null, %".675"
  br i1 %".679", label %"B0.endif.endif.endif.endi...endif.10.if", label %"B0.endif.endif.endif.endi...endif.10.else"
B0.endif.endif.endif.endi...endif.10.if:
  %".681" = call i8* @"PyList_GetItem"(i8* %".675", i64 9)
  store i8* %".681", i8** %".676"
  br label %"B0.endif.endif.endif.endi...endif.10.endif"
B0.endif.endif.endif.endi...endif.10.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.10.endif"
B0.endif.endif.endif.endi...endif.10.endif:
  %".686" = load i8*, i8** %".676"
  %".687" = icmp eq i8* null, %".686"
  br i1 %".687", label %"B0.endif.endif.endif.endi...endif.10.endif.if", label %"B0.endif.endif.endif.endi...endif.10.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.10.endif.if:
  %".689" = load i8*, i8** %"$48load_method.19"
  call void @"Py_DecRef"(i8* %".689")
  %".691" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".691")
  %".693" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".693")
  %".695" = load i8*, i8** %"$54binary_subscr.22"
  call void @"Py_DecRef"(i8* %".695")
  %".697" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".697")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.10.endif.endif:
  call void @"Py_IncRef"(i8* %".686")
  store i8* %".686", i8** %"$const58.24"
  %".703" = load i8*, i8** %"qreg_q"
  %".704" = icmp eq i8* null, %".703"
  br i1 %".704", label %"B0.endif.endif.endif.endi...endif.10.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.10.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.10.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([29 x i8]* @".const.name 'qreg_q' is not defined" to i8*))
  %".707" = load i8*, i8** %"$48load_method.19"
  call void @"Py_DecRef"(i8* %".707")
  %".709" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".709")
  %".711" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".711")
  %".713" = load i8*, i8** %"$54binary_subscr.22"
  call void @"Py_DecRef"(i8* %".713")
  %".715" = load i8*, i8** %"$const58.24"
  call void @"Py_DecRef"(i8* %".715")
  %".717" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".717")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.10.endif.endif.endif:
  %".720" = load i8*, i8** %"$const58.24"
  %".721" = icmp eq i8* null, %".720"
  br i1 %".721", label %"B0.endif.endif.endif.endi...if.11", label %"B0.endif.endif.endif.endi...endif.11", !prof !0
B0.endif.endif.endif.endi...if.11:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([34 x i8]* @".const.name '$const58.24' is not defined" to i8*))
  %".724" = load i8*, i8** %"$48load_method.19"
  call void @"Py_DecRef"(i8* %".724")
  %".726" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".726")
  %".728" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".728")
  %".730" = load i8*, i8** %"$54binary_subscr.22"
  call void @"Py_DecRef"(i8* %".730")
  %".732" = load i8*, i8** %"$const58.24"
  call void @"Py_DecRef"(i8* %".732")
  %".734" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".734")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.11:
  %".737" = call i8* @"PyObject_GetItem"(i8* %".703", i8* %".720")
  %".738" = icmp eq i8* null, %".737"
  br i1 %".738", label %"B0.endif.endif.endif.endi...endif.11.if", label %"B0.endif.endif.endif.endi...endif.11.endif", !prof !0
B0.endif.endif.endif.endi...endif.11.if:
  %".740" = load i8*, i8** %"$48load_method.19"
  call void @"Py_DecRef"(i8* %".740")
  %".742" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".742")
  %".744" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".744")
  %".746" = load i8*, i8** %"$54binary_subscr.22"
  call void @"Py_DecRef"(i8* %".746")
  %".748" = load i8*, i8** %"$const58.24"
  call void @"Py_DecRef"(i8* %".748")
  %".750" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".750")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.11.endif:
  store i8* %".737", i8** %"$60binary_subscr.25"
  %".755" = load i8*, i8** %"$const58.24"
  call void @"Py_DecRef"(i8* %".755")
  store i8* null, i8** %"$const58.24"
  %".758" = load i8*, i8** %"$54binary_subscr.22"
  %".759" = icmp eq i8* null, %".758"
  br i1 %".759", label %"B0.endif.endif.endif.endi...endif.11.endif.if", label %"B0.endif.endif.endif.endi...endif.11.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.11.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([42 x i8]* @".const.name '$54binary_subscr.22' is not defined" to i8*))
  %".762" = load i8*, i8** %"$48load_method.19"
  call void @"Py_DecRef"(i8* %".762")
  %".764" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".764")
  %".766" = load i8*, i8** %"$60binary_subscr.25"
  call void @"Py_DecRef"(i8* %".766")
  %".768" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".768")
  %".770" = load i8*, i8** %"$54binary_subscr.22"
  call void @"Py_DecRef"(i8* %".770")
  %".772" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".772")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.11.endif.endif:
  %".775" = load i8*, i8** %"$60binary_subscr.25"
  %".776" = icmp eq i8* null, %".775"
  br i1 %".776", label %"B0.endif.endif.endif.endi...endif.11.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.11.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.11.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([42 x i8]* @".const.name '$60binary_subscr.25' is not defined" to i8*))
  %".779" = load i8*, i8** %"$48load_method.19"
  call void @"Py_DecRef"(i8* %".779")
  %".781" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".781")
  %".783" = load i8*, i8** %"$60binary_subscr.25"
  call void @"Py_DecRef"(i8* %".783")
  %".785" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".785")
  %".787" = load i8*, i8** %"$54binary_subscr.22"
  call void @"Py_DecRef"(i8* %".787")
  %".789" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".789")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.11.endif.endif.endif:
  %".792" = load i8*, i8** %"$48load_method.19"
  %".793" = icmp eq i8* null, %".792"
  br i1 %".793", label %"B0.endif.endif.endif.endi...if.12", label %"B0.endif.endif.endif.endi...endif.12", !prof !0
B0.endif.endif.endif.endi...if.12:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([40 x i8]* @".const.name '$48load_method.19' is not defined" to i8*))
  %".796" = load i8*, i8** %"$48load_method.19"
  call void @"Py_DecRef"(i8* %".796")
  %".798" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".798")
  %".800" = load i8*, i8** %"$60binary_subscr.25"
  call void @"Py_DecRef"(i8* %".800")
  %".802" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".802")
  %".804" = load i8*, i8** %"$54binary_subscr.22"
  call void @"Py_DecRef"(i8* %".804")
  %".806" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".806")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.12:
  %".809" = call i8* (i64, ...) @"PyTuple_Pack"(i64 2, i8* %".758", i8* %".775")
  %".810" = call i8* @"PyObject_Call"(i8* %".792", i8* %".809", i8* null)
  call void @"Py_DecRef"(i8* %".809")
  %".812" = icmp eq i8* null, %".810"
  br i1 %".812", label %"B0.endif.endif.endif.endi...endif.12.if", label %"B0.endif.endif.endif.endi...endif.12.endif", !prof !0
B0.endif.endif.endif.endi...endif.12.if:
  %".814" = load i8*, i8** %"$48load_method.19"
  call void @"Py_DecRef"(i8* %".814")
  %".816" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".816")
  %".818" = load i8*, i8** %"$60binary_subscr.25"
  call void @"Py_DecRef"(i8* %".818")
  %".820" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".820")
  %".822" = load i8*, i8** %"$54binary_subscr.22"
  call void @"Py_DecRef"(i8* %".822")
  %".824" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".824")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.12.endif:
  store i8* %".810", i8** %"$62call_method.26"
  %".829" = load i8*, i8** %"$62call_method.26"
  call void @"Py_DecRef"(i8* %".829")
  store i8* null, i8** %"$62call_method.26"
  %".832" = load i8*, i8** %"$60binary_subscr.25"
  call void @"Py_DecRef"(i8* %".832")
  store i8* null, i8** %"$60binary_subscr.25"
  %".835" = load i8*, i8** %"$54binary_subscr.22"
  call void @"Py_DecRef"(i8* %".835")
  store i8* null, i8** %"$54binary_subscr.22"
  %".838" = load i8*, i8** %"$48load_method.19"
  call void @"Py_DecRef"(i8* %".838")
  store i8* null, i8** %"$48load_method.19"
  %".841" = load i8*, i8** %"circuit"
  %".842" = icmp eq i8* null, %".841"
  br i1 %".842", label %"B0.endif.endif.endif.endi...endif.12.endif.if", label %"B0.endif.endif.endif.endi...endif.12.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.12.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([30 x i8]* @".const.name 'circuit' is not defined" to i8*))
  %".845" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".845")
  %".847" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".847")
  %".849" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".849")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.12.endif.endif:
  %".852" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".853" = load i8*, i8** %".852"
  store i8* null, i8** %".854"
  %".857" = icmp ne i8* null, %".853"
  br i1 %".857", label %"B0.endif.endif.endif.endi...endif.12.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.12.endif.endif.else"
B0.endif.endif.endif.endi...endif.12.endif.endif.if:
  %".859" = call i8* @"PyList_GetItem"(i8* %".853", i64 10)
  store i8* %".859", i8** %".854"
  br label %"B0.endif.endif.endif.endi...endif.12.endif.endif.endif"
B0.endif.endif.endif.endi...endif.12.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.12.endif.endif.endif"
B0.endif.endif.endif.endi...endif.12.endif.endif.endif:
  %".864" = load i8*, i8** %".854"
  %".865" = icmp eq i8* null, %".864"
  br i1 %".865", label %"B0.endif.endif.endif.endi...if.13", label %"B0.endif.endif.endif.endi...endif.13", !prof !0
B0.endif.endif.endif.endi...if.13:
  %".867" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".867")
  %".869" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".869")
  %".871" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".871")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.13:
  call void @"Py_IncRef"(i8* %".864")
  %".875" = call i8* @"PyObject_GetAttr"(i8* %".841", i8* %".864")
  %".876" = icmp eq i8* null, %".875"
  br i1 %".876", label %"B0.endif.endif.endif.endi...endif.13.if", label %"B0.endif.endif.endif.endi...endif.13.endif", !prof !0
B0.endif.endif.endif.endi...endif.13.if:
  %".878" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".878")
  %".880" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".880")
  %".882" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".882")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.13.endif:
  store i8* %".875", i8** %"$68load_method.28"
  %".887" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".888" = load i8*, i8** %".887"
  store i8* null, i8** %".889"
  %".892" = icmp ne i8* null, %".888"
  br i1 %".892", label %"B0.endif.endif.endif.endi...endif.13.endif.if", label %"B0.endif.endif.endif.endi...endif.13.endif.else"
B0.endif.endif.endif.endi...endif.13.endif.if:
  %".894" = call i8* @"PyList_GetItem"(i8* %".888", i64 7)
  store i8* %".894", i8** %".889"
  br label %"B0.endif.endif.endif.endi...endif.13.endif.endif"
B0.endif.endif.endif.endi...endif.13.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.13.endif.endif"
B0.endif.endif.endif.endi...endif.13.endif.endif:
  %".899" = load i8*, i8** %".889"
  %".900" = icmp eq i8* null, %".899"
  br i1 %".900", label %"B0.endif.endif.endif.endi...endif.13.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.13.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.13.endif.endif.if:
  %".902" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".902")
  %".904" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".904")
  %".906" = load i8*, i8** %"$68load_method.28"
  call void @"Py_DecRef"(i8* %".906")
  %".908" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".908")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.13.endif.endif.endif:
  call void @"Py_IncRef"(i8* %".899")
  store i8* %".899", i8** %"$const72.30"
  %".914" = load i8*, i8** %"qreg_q"
  %".915" = icmp eq i8* null, %".914"
  br i1 %".915", label %"B0.endif.endif.endif.endi...if.14", label %"B0.endif.endif.endif.endi...endif.14", !prof !0
B0.endif.endif.endif.endi...if.14:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([29 x i8]* @".const.name 'qreg_q' is not defined" to i8*))
  %".918" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".918")
  %".920" = load i8*, i8** %"$const72.30"
  call void @"Py_DecRef"(i8* %".920")
  %".922" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".922")
  %".924" = load i8*, i8** %"$68load_method.28"
  call void @"Py_DecRef"(i8* %".924")
  %".926" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".926")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.14:
  %".929" = load i8*, i8** %"$const72.30"
  %".930" = icmp eq i8* null, %".929"
  br i1 %".930", label %"B0.endif.endif.endif.endi...endif.14.if", label %"B0.endif.endif.endif.endi...endif.14.endif", !prof !0
B0.endif.endif.endif.endi...endif.14.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([34 x i8]* @".const.name '$const72.30' is not defined" to i8*))
  %".933" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".933")
  %".935" = load i8*, i8** %"$const72.30"
  call void @"Py_DecRef"(i8* %".935")
  %".937" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".937")
  %".939" = load i8*, i8** %"$68load_method.28"
  call void @"Py_DecRef"(i8* %".939")
  %".941" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".941")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.14.endif:
  %".944" = call i8* @"PyObject_GetItem"(i8* %".914", i8* %".929")
  %".945" = icmp eq i8* null, %".944"
  br i1 %".945", label %"B0.endif.endif.endif.endi...endif.14.endif.if", label %"B0.endif.endif.endif.endi...endif.14.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.14.endif.if:
  %".947" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".947")
  %".949" = load i8*, i8** %"$const72.30"
  call void @"Py_DecRef"(i8* %".949")
  %".951" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".951")
  %".953" = load i8*, i8** %"$68load_method.28"
  call void @"Py_DecRef"(i8* %".953")
  %".955" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".955")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.14.endif.endif:
  store i8* %".944", i8** %"$74binary_subscr.31"
  %".960" = load i8*, i8** %"$const72.30"
  call void @"Py_DecRef"(i8* %".960")
  store i8* null, i8** %"$const72.30"
  %".963" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".964" = load i8*, i8** %".963"
  store i8* null, i8** %".965"
  %".968" = icmp ne i8* null, %".964"
  br i1 %".968", label %"B0.endif.endif.endif.endi...endif.14.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.14.endif.endif.else"
B0.endif.endif.endif.endi...endif.14.endif.endif.if:
  %".970" = call i8* @"PyList_GetItem"(i8* %".964", i64 7)
  store i8* %".970", i8** %".965"
  br label %"B0.endif.endif.endif.endi...endif.14.endif.endif.endif"
B0.endif.endif.endif.endi...endif.14.endif.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.14.endif.endif.endif"
B0.endif.endif.endif.endi...endif.14.endif.endif.endif:
  %".975" = load i8*, i8** %".965"
  %".976" = icmp eq i8* null, %".975"
  br i1 %".976", label %"B0.endif.endif.endif.endi...if.15", label %"B0.endif.endif.endif.endi...endif.15", !prof !0
B0.endif.endif.endif.endi...if.15:
  %".978" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".978")
  %".980" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".980")
  %".982" = load i8*, i8** %"$68load_method.28"
  call void @"Py_DecRef"(i8* %".982")
  %".984" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".984")
  %".986" = load i8*, i8** %"$74binary_subscr.31"
  call void @"Py_DecRef"(i8* %".986")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.15:
  call void @"Py_IncRef"(i8* %".975")
  store i8* %".975", i8** %"$const78.33"
  %".992" = load i8*, i8** %"creg_c"
  %".993" = icmp eq i8* null, %".992"
  br i1 %".993", label %"B0.endif.endif.endif.endi...endif.15.if", label %"B0.endif.endif.endif.endi...endif.15.endif", !prof !0
B0.endif.endif.endif.endi...endif.15.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([29 x i8]* @".const.name 'creg_c' is not defined" to i8*))
  %".996" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".996")
  %".998" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".998")
  %".1000" = load i8*, i8** %"$const78.33"
  call void @"Py_DecRef"(i8* %".1000")
  %".1002" = load i8*, i8** %"$68load_method.28"
  call void @"Py_DecRef"(i8* %".1002")
  %".1004" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".1004")
  %".1006" = load i8*, i8** %"$74binary_subscr.31"
  call void @"Py_DecRef"(i8* %".1006")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.15.endif:
  %".1009" = load i8*, i8** %"$const78.33"
  %".1010" = icmp eq i8* null, %".1009"
  br i1 %".1010", label %"B0.endif.endif.endif.endi...endif.15.endif.if", label %"B0.endif.endif.endif.endi...endif.15.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.15.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([34 x i8]* @".const.name '$const78.33' is not defined" to i8*))
  %".1013" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1013")
  %".1015" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".1015")
  %".1017" = load i8*, i8** %"$const78.33"
  call void @"Py_DecRef"(i8* %".1017")
  %".1019" = load i8*, i8** %"$68load_method.28"
  call void @"Py_DecRef"(i8* %".1019")
  %".1021" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".1021")
  %".1023" = load i8*, i8** %"$74binary_subscr.31"
  call void @"Py_DecRef"(i8* %".1023")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.15.endif.endif:
  %".1026" = call i8* @"PyObject_GetItem"(i8* %".992", i8* %".1009")
  %".1027" = icmp eq i8* null, %".1026"
  br i1 %".1027", label %"B0.endif.endif.endif.endi...endif.15.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.15.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.15.endif.endif.if:
  %".1029" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1029")
  %".1031" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".1031")
  %".1033" = load i8*, i8** %"$const78.33"
  call void @"Py_DecRef"(i8* %".1033")
  %".1035" = load i8*, i8** %"$68load_method.28"
  call void @"Py_DecRef"(i8* %".1035")
  %".1037" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".1037")
  %".1039" = load i8*, i8** %"$74binary_subscr.31"
  call void @"Py_DecRef"(i8* %".1039")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.15.endif.endif.endif:
  store i8* %".1026", i8** %"$80binary_subscr.34"
  %".1044" = load i8*, i8** %"$const78.33"
  call void @"Py_DecRef"(i8* %".1044")
  store i8* null, i8** %"$const78.33"
  %".1047" = load i8*, i8** %"$74binary_subscr.31"
  %".1048" = icmp eq i8* null, %".1047"
  br i1 %".1048", label %"B0.endif.endif.endif.endi...if.16", label %"B0.endif.endif.endif.endi...endif.16", !prof !0
B0.endif.endif.endif.endi...if.16:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([42 x i8]* @".const.name '$74binary_subscr.31' is not defined" to i8*))
  %".1051" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1051")
  %".1053" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".1053")
  %".1055" = load i8*, i8** %"$80binary_subscr.34"
  call void @"Py_DecRef"(i8* %".1055")
  %".1057" = load i8*, i8** %"$68load_method.28"
  call void @"Py_DecRef"(i8* %".1057")
  %".1059" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".1059")
  %".1061" = load i8*, i8** %"$74binary_subscr.31"
  call void @"Py_DecRef"(i8* %".1061")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.16:
  %".1064" = load i8*, i8** %"$80binary_subscr.34"
  %".1065" = icmp eq i8* null, %".1064"
  br i1 %".1065", label %"B0.endif.endif.endif.endi...endif.16.if", label %"B0.endif.endif.endif.endi...endif.16.endif", !prof !0
B0.endif.endif.endif.endi...endif.16.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([42 x i8]* @".const.name '$80binary_subscr.34' is not defined" to i8*))
  %".1068" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1068")
  %".1070" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".1070")
  %".1072" = load i8*, i8** %"$80binary_subscr.34"
  call void @"Py_DecRef"(i8* %".1072")
  %".1074" = load i8*, i8** %"$68load_method.28"
  call void @"Py_DecRef"(i8* %".1074")
  %".1076" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".1076")
  %".1078" = load i8*, i8** %"$74binary_subscr.31"
  call void @"Py_DecRef"(i8* %".1078")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.16.endif:
  %".1081" = load i8*, i8** %"$68load_method.28"
  %".1082" = icmp eq i8* null, %".1081"
  br i1 %".1082", label %"B0.endif.endif.endif.endi...endif.16.endif.if", label %"B0.endif.endif.endif.endi...endif.16.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.16.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([40 x i8]* @".const.name '$68load_method.28' is not defined" to i8*))
  %".1085" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1085")
  %".1087" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".1087")
  %".1089" = load i8*, i8** %"$80binary_subscr.34"
  call void @"Py_DecRef"(i8* %".1089")
  %".1091" = load i8*, i8** %"$68load_method.28"
  call void @"Py_DecRef"(i8* %".1091")
  %".1093" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".1093")
  %".1095" = load i8*, i8** %"$74binary_subscr.31"
  call void @"Py_DecRef"(i8* %".1095")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.16.endif.endif:
  %".1098" = call i8* (i64, ...) @"PyTuple_Pack"(i64 2, i8* %".1047", i8* %".1064")
  %".1099" = call i8* @"PyObject_Call"(i8* %".1081", i8* %".1098", i8* null)
  call void @"Py_DecRef"(i8* %".1098")
  %".1101" = icmp eq i8* null, %".1099"
  br i1 %".1101", label %"B0.endif.endif.endif.endi...endif.16.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.16.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.16.endif.endif.if:
  %".1103" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1103")
  %".1105" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".1105")
  %".1107" = load i8*, i8** %"$80binary_subscr.34"
  call void @"Py_DecRef"(i8* %".1107")
  %".1109" = load i8*, i8** %"$68load_method.28"
  call void @"Py_DecRef"(i8* %".1109")
  %".1111" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".1111")
  %".1113" = load i8*, i8** %"$74binary_subscr.31"
  call void @"Py_DecRef"(i8* %".1113")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.16.endif.endif.endif:
  store i8* %".1099", i8** %"$82call_method.35"
  %".1118" = load i8*, i8** %"$82call_method.35"
  call void @"Py_DecRef"(i8* %".1118")
  store i8* null, i8** %"$82call_method.35"
  %".1121" = load i8*, i8** %"$80binary_subscr.34"
  call void @"Py_DecRef"(i8* %".1121")
  store i8* null, i8** %"$80binary_subscr.34"
  %".1124" = load i8*, i8** %"$74binary_subscr.31"
  call void @"Py_DecRef"(i8* %".1124")
  store i8* null, i8** %"$74binary_subscr.31"
  %".1127" = load i8*, i8** %"$68load_method.28"
  call void @"Py_DecRef"(i8* %".1127")
  store i8* null, i8** %"$68load_method.28"
  %".1130" = load i8*, i8** %"circuit"
  %".1131" = icmp eq i8* null, %".1130"
  br i1 %".1131", label %"B0.endif.endif.endif.endi...if.17", label %"B0.endif.endif.endif.endi...endif.17", !prof !0
B0.endif.endif.endif.endi...if.17:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([30 x i8]* @".const.name 'circuit' is not defined" to i8*))
  %".1134" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1134")
  %".1136" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".1136")
  %".1138" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".1138")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.17:
  %".1141" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".1142" = load i8*, i8** %".1141"
  store i8* null, i8** %".1143"
  %".1146" = icmp ne i8* null, %".1142"
  br i1 %".1146", label %"B0.endif.endif.endif.endi...endif.17.if", label %"B0.endif.endif.endif.endi...endif.17.else"
B0.endif.endif.endif.endi...endif.17.if:
  %".1148" = call i8* @"PyList_GetItem"(i8* %".1142", i64 10)
  store i8* %".1148", i8** %".1143"
  br label %"B0.endif.endif.endif.endi...endif.17.endif"
B0.endif.endif.endif.endi...endif.17.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.17.endif"
B0.endif.endif.endif.endi...endif.17.endif:
  %".1153" = load i8*, i8** %".1143"
  %".1154" = icmp eq i8* null, %".1153"
  br i1 %".1154", label %"B0.endif.endif.endif.endi...endif.17.endif.if", label %"B0.endif.endif.endif.endi...endif.17.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.17.endif.if:
  %".1156" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1156")
  %".1158" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".1158")
  %".1160" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".1160")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.17.endif.endif:
  call void @"Py_IncRef"(i8* %".1153")
  %".1164" = call i8* @"PyObject_GetAttr"(i8* %".1130", i8* %".1153")
  %".1165" = icmp eq i8* null, %".1164"
  br i1 %".1165", label %"B0.endif.endif.endif.endi...endif.17.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.17.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.17.endif.endif.if:
  %".1167" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1167")
  %".1169" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".1169")
  %".1171" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".1171")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.17.endif.endif.endif:
  store i8* %".1164", i8** %"$88load_method.37"
  %".1176" = load i8*, i8** %"circuit"
  call void @"Py_DecRef"(i8* %".1176")
  store i8* null, i8** %"circuit"
  %".1179" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".1180" = load i8*, i8** %".1179"
  store i8* null, i8** %".1181"
  %".1184" = icmp ne i8* null, %".1180"
  br i1 %".1184", label %"B0.endif.endif.endif.endi...if.18", label %"B0.endif.endif.endif.endi...else.2"
B0.endif.endif.endif.endi...if.18:
  %".1186" = call i8* @"PyList_GetItem"(i8* %".1180", i64 9)
  store i8* %".1186", i8** %".1181"
  br label %"B0.endif.endif.endif.endi...endif.18"
B0.endif.endif.endif.endi...else.2:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.18"
B0.endif.endif.endif.endi...endif.18:
  %".1191" = load i8*, i8** %".1181"
  %".1192" = icmp eq i8* null, %".1191"
  br i1 %".1192", label %"B0.endif.endif.endif.endi...endif.18.if", label %"B0.endif.endif.endif.endi...endif.18.endif", !prof !0
B0.endif.endif.endif.endi...endif.18.if:
  %".1194" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1194")
  %".1196" = load i8*, i8** %"$88load_method.37"
  call void @"Py_DecRef"(i8* %".1196")
  %".1198" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".1198")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.18.endif:
  call void @"Py_IncRef"(i8* %".1191")
  store i8* %".1191", i8** %"$const92.39"
  %".1204" = load i8*, i8** %"qreg_q"
  %".1205" = icmp eq i8* null, %".1204"
  br i1 %".1205", label %"B0.endif.endif.endif.endi...endif.18.endif.if", label %"B0.endif.endif.endif.endi...endif.18.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.18.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([29 x i8]* @".const.name 'qreg_q' is not defined" to i8*))
  %".1208" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1208")
  %".1210" = load i8*, i8** %"$88load_method.37"
  call void @"Py_DecRef"(i8* %".1210")
  %".1212" = load i8*, i8** %"$const92.39"
  call void @"Py_DecRef"(i8* %".1212")
  %".1214" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".1214")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.18.endif.endif:
  %".1217" = load i8*, i8** %"$const92.39"
  %".1218" = icmp eq i8* null, %".1217"
  br i1 %".1218", label %"B0.endif.endif.endif.endi...endif.18.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.18.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.18.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([34 x i8]* @".const.name '$const92.39' is not defined" to i8*))
  %".1221" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1221")
  %".1223" = load i8*, i8** %"$88load_method.37"
  call void @"Py_DecRef"(i8* %".1223")
  %".1225" = load i8*, i8** %"$const92.39"
  call void @"Py_DecRef"(i8* %".1225")
  %".1227" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".1227")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.18.endif.endif.endif:
  %".1230" = call i8* @"PyObject_GetItem"(i8* %".1204", i8* %".1217")
  %".1231" = icmp eq i8* null, %".1230"
  br i1 %".1231", label %"B0.endif.endif.endif.endi...if.19", label %"B0.endif.endif.endif.endi...endif.19", !prof !0
B0.endif.endif.endif.endi...if.19:
  %".1233" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1233")
  %".1235" = load i8*, i8** %"$88load_method.37"
  call void @"Py_DecRef"(i8* %".1235")
  %".1237" = load i8*, i8** %"$const92.39"
  call void @"Py_DecRef"(i8* %".1237")
  %".1239" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".1239")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.19:
  store i8* %".1230", i8** %"$94binary_subscr.40"
  %".1244" = load i8*, i8** %"qreg_q"
  call void @"Py_DecRef"(i8* %".1244")
  store i8* null, i8** %"qreg_q"
  %".1247" = load i8*, i8** %"$const92.39"
  call void @"Py_DecRef"(i8* %".1247")
  store i8* null, i8** %"$const92.39"
  %".1250" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".1251" = load i8*, i8** %".1250"
  store i8* null, i8** %".1252"
  %".1255" = icmp ne i8* null, %".1251"
  br i1 %".1255", label %"B0.endif.endif.endif.endi...endif.19.if", label %"B0.endif.endif.endif.endi...endif.19.else"
B0.endif.endif.endif.endi...endif.19.if:
  %".1257" = call i8* @"PyList_GetItem"(i8* %".1251", i64 9)
  store i8* %".1257", i8** %".1252"
  br label %"B0.endif.endif.endif.endi...endif.19.endif"
B0.endif.endif.endif.endi...endif.19.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.19.endif"
B0.endif.endif.endif.endi...endif.19.endif:
  %".1262" = load i8*, i8** %".1252"
  %".1263" = icmp eq i8* null, %".1262"
  br i1 %".1263", label %"B0.endif.endif.endif.endi...endif.19.endif.if", label %"B0.endif.endif.endif.endi...endif.19.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.19.endif.if:
  %".1265" = load i8*, i8** %"$94binary_subscr.40"
  call void @"Py_DecRef"(i8* %".1265")
  %".1267" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1267")
  %".1269" = load i8*, i8** %"$88load_method.37"
  call void @"Py_DecRef"(i8* %".1269")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.19.endif.endif:
  call void @"Py_IncRef"(i8* %".1262")
  store i8* %".1262", i8** %"$const98.42"
  %".1275" = load i8*, i8** %"creg_c"
  %".1276" = icmp eq i8* null, %".1275"
  br i1 %".1276", label %"B0.endif.endif.endif.endi...endif.19.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.19.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.19.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([29 x i8]* @".const.name 'creg_c' is not defined" to i8*))
  %".1279" = load i8*, i8** %"$94binary_subscr.40"
  call void @"Py_DecRef"(i8* %".1279")
  %".1281" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1281")
  %".1283" = load i8*, i8** %"$88load_method.37"
  call void @"Py_DecRef"(i8* %".1283")
  %".1285" = load i8*, i8** %"$const98.42"
  call void @"Py_DecRef"(i8* %".1285")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.19.endif.endif.endif:
  %".1288" = load i8*, i8** %"$const98.42"
  %".1289" = icmp eq i8* null, %".1288"
  br i1 %".1289", label %"B0.endif.endif.endif.endi...if.20", label %"B0.endif.endif.endif.endi...endif.20", !prof !0
B0.endif.endif.endif.endi...if.20:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([34 x i8]* @".const.name '$const98.42' is not defined" to i8*))
  %".1292" = load i8*, i8** %"$94binary_subscr.40"
  call void @"Py_DecRef"(i8* %".1292")
  %".1294" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1294")
  %".1296" = load i8*, i8** %"$88load_method.37"
  call void @"Py_DecRef"(i8* %".1296")
  %".1298" = load i8*, i8** %"$const98.42"
  call void @"Py_DecRef"(i8* %".1298")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.20:
  %".1301" = call i8* @"PyObject_GetItem"(i8* %".1275", i8* %".1288")
  %".1302" = icmp eq i8* null, %".1301"
  br i1 %".1302", label %"B0.endif.endif.endif.endi...endif.20.if", label %"B0.endif.endif.endif.endi...endif.20.endif", !prof !0
B0.endif.endif.endif.endi...endif.20.if:
  %".1304" = load i8*, i8** %"$94binary_subscr.40"
  call void @"Py_DecRef"(i8* %".1304")
  %".1306" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1306")
  %".1308" = load i8*, i8** %"$88load_method.37"
  call void @"Py_DecRef"(i8* %".1308")
  %".1310" = load i8*, i8** %"$const98.42"
  call void @"Py_DecRef"(i8* %".1310")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.20.endif:
  store i8* %".1301", i8** %"$100binary_subscr.43"
  %".1315" = load i8*, i8** %"creg_c"
  call void @"Py_DecRef"(i8* %".1315")
  store i8* null, i8** %"creg_c"
  %".1318" = load i8*, i8** %"$const98.42"
  call void @"Py_DecRef"(i8* %".1318")
  store i8* null, i8** %"$const98.42"
  %".1321" = load i8*, i8** %"$94binary_subscr.40"
  %".1322" = icmp eq i8* null, %".1321"
  br i1 %".1322", label %"B0.endif.endif.endif.endi...endif.20.endif.if", label %"B0.endif.endif.endif.endi...endif.20.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.20.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([42 x i8]* @".const.name '$94binary_subscr.40' is not defined" to i8*))
  %".1325" = load i8*, i8** %"$94binary_subscr.40"
  call void @"Py_DecRef"(i8* %".1325")
  %".1327" = load i8*, i8** %"$88load_method.37"
  call void @"Py_DecRef"(i8* %".1327")
  %".1329" = load i8*, i8** %"$100binary_subscr.43"
  call void @"Py_DecRef"(i8* %".1329")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.20.endif.endif:
  %".1332" = load i8*, i8** %"$100binary_subscr.43"
  %".1333" = icmp eq i8* null, %".1332"
  br i1 %".1333", label %"B0.endif.endif.endif.endi...endif.20.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.20.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.20.endif.endif.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([43 x i8]* @".const.name '$100binary_subscr.43' is not defined" to i8*))
  %".1336" = load i8*, i8** %"$94binary_subscr.40"
  call void @"Py_DecRef"(i8* %".1336")
  %".1338" = load i8*, i8** %"$88load_method.37"
  call void @"Py_DecRef"(i8* %".1338")
  %".1340" = load i8*, i8** %"$100binary_subscr.43"
  call void @"Py_DecRef"(i8* %".1340")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.20.endif.endif.endif:
  %".1343" = load i8*, i8** %"$88load_method.37"
  %".1344" = icmp eq i8* null, %".1343"
  br i1 %".1344", label %"B0.endif.endif.endif.endi...if.21", label %"B0.endif.endif.endif.endi...endif.21", !prof !0
B0.endif.endif.endif.endi...if.21:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([40 x i8]* @".const.name '$88load_method.37' is not defined" to i8*))
  %".1347" = load i8*, i8** %"$94binary_subscr.40"
  call void @"Py_DecRef"(i8* %".1347")
  %".1349" = load i8*, i8** %"$88load_method.37"
  call void @"Py_DecRef"(i8* %".1349")
  %".1351" = load i8*, i8** %"$100binary_subscr.43"
  call void @"Py_DecRef"(i8* %".1351")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.21:
  %".1354" = call i8* (i64, ...) @"PyTuple_Pack"(i64 2, i8* %".1321", i8* %".1332")
  %".1355" = call i8* @"PyObject_Call"(i8* %".1343", i8* %".1354", i8* null)
  call void @"Py_DecRef"(i8* %".1354")
  %".1357" = icmp eq i8* null, %".1355"
  br i1 %".1357", label %"B0.endif.endif.endif.endi...endif.21.if", label %"B0.endif.endif.endif.endi...endif.21.endif", !prof !0
B0.endif.endif.endif.endi...endif.21.if:
  %".1359" = load i8*, i8** %"$94binary_subscr.40"
  call void @"Py_DecRef"(i8* %".1359")
  %".1361" = load i8*, i8** %"$88load_method.37"
  call void @"Py_DecRef"(i8* %".1361")
  %".1363" = load i8*, i8** %"$100binary_subscr.43"
  call void @"Py_DecRef"(i8* %".1363")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.21.endif:
  store i8* %".1355", i8** %"$102call_method.44"
  %".1368" = load i8*, i8** %"$94binary_subscr.40"
  call void @"Py_DecRef"(i8* %".1368")
  store i8* null, i8** %"$94binary_subscr.40"
  %".1371" = load i8*, i8** %"$88load_method.37"
  call void @"Py_DecRef"(i8* %".1371")
  store i8* null, i8** %"$88load_method.37"
  %".1374" = load i8*, i8** %"$102call_method.44"
  call void @"Py_DecRef"(i8* %".1374")
  store i8* null, i8** %"$102call_method.44"
  %".1377" = load i8*, i8** %"$100binary_subscr.43"
  call void @"Py_DecRef"(i8* %".1377")
  store i8* null, i8** %"$100binary_subscr.43"
  %".1380" = getelementptr inbounds {i8*, i8*}, {i8*, i8*}* %".17", i32 0, i32 1
  %".1381" = load i8*, i8** %".1380"
  store i8* null, i8** %".1382"
  %".1385" = icmp ne i8* null, %".1381"
  br i1 %".1385", label %"B0.endif.endif.endif.endi...endif.21.endif.if", label %"B0.endif.endif.endif.endi...endif.21.endif.else"
B0.endif.endif.endif.endi...endif.21.endif.if:
  %".1387" = call i8* @"PyList_GetItem"(i8* %".1381", i64 11)
  store i8* %".1387", i8** %".1382"
  br label %"B0.endif.endif.endif.endi...endif.21.endif.endif"
B0.endif.endif.endif.endi...endif.21.endif.else:
  call void @"PyErr_SetString"(i8* @"PyExc_RuntimeError", i8* bitcast ([37 x i8]* @".const.`env.consts` is NULL in `read_const`" to i8*))
  br label %"B0.endif.endif.endif.endi...endif.21.endif.endif"
B0.endif.endif.endif.endi...endif.21.endif.endif:
  %".1392" = load i8*, i8** %".1382"
  %".1393" = icmp eq i8* null, %".1392"
  br i1 %".1393", label %"B0.endif.endif.endif.endi...endif.21.endif.endif.if", label %"B0.endif.endif.endif.endi...endif.21.endif.endif.endif", !prof !0
B0.endif.endif.endif.endi...endif.21.endif.endif.if:
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.21.endif.endif.endif:
  call void @"Py_IncRef"(i8* %".1392")
  store i8* %".1392", i8** %"$const106.45"
  %".1399" = load i8*, i8** %"$const106.45"
  %".1400" = icmp eq i8* null, %".1399"
  br i1 %".1400", label %"B0.endif.endif.endif.endi...if.22", label %"B0.endif.endif.endif.endi...endif.22", !prof !0
B0.endif.endif.endif.endi...if.22:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([35 x i8]* @".const.name '$const106.45' is not defined" to i8*))
  %".1403" = load i8*, i8** %"$const106.45"
  call void @"Py_DecRef"(i8* %".1403")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.22:
  call void @"Py_IncRef"(i8* %".1399")
  store i8* %".1399", i8** %"$108return_value.46"
  %".1409" = load i8*, i8** %"$const106.45"
  call void @"Py_DecRef"(i8* %".1409")
  store i8* null, i8** %"$const106.45"
  %".1412" = load i8*, i8** %"$108return_value.46"
  %".1413" = icmp eq i8* null, %".1412"
  br i1 %".1413", label %"B0.endif.endif.endif.endi...endif.22.if", label %"B0.endif.endif.endif.endi...endif.22.endif", !prof !0
B0.endif.endif.endif.endi...endif.22.if:
  call void @"PyErr_SetString"(i8* @"PyExc_NameError", i8* bitcast ([42 x i8]* @".const.name '$108return_value.46' is not defined" to i8*))
  %".1416" = load i8*, i8** %"$108return_value.46"
  call void @"Py_DecRef"(i8* %".1416")
  ret i32 -1, !ret_is_raise !1
B0.endif.endif.endif.endi...endif.22.endif:
  store i8* %".1412", i8** %"retptr"
  ret i32 0
}

@".const.pickledata.2044579610816" = internal constant [107 x i8] c"\80\04\95`\00\00\00\00\00\00\00\8c\08builtins\94\8c\0cRuntimeError\94\93\94\8c;missing Environment: _ZN08NumbaEnv8__main__13BellState_241E\94\85\94N\87\94."
@".const.pickledata.2044579610816.sha1" = internal constant [20 x i8] c"\0e\ff\86\84o}\bfr\85[\22\dfE%\1c\8d\cc@j\90"
@".const.picklebuf.2044579610816" = internal constant {i8*, i32, i8*} {i8* bitcast ([107 x i8]* @".const.pickledata.2044579610816" to i8*), i32 107, i8* bitcast ([20 x i8]* @".const.pickledata.2044579610816.sha1" to i8*)}
declare i8* @"PyList_GetItem"(i8* %".1", i64 %".2") 

declare void @"PyErr_SetString"(i8* %".1", i8* %".2") 

@"PyExc_RuntimeError" = external global i8
@".const.`env.consts` is NULL in `read_const`" = internal constant [37 x i8] c"`env.consts` is NULL in `read_const`\00"
declare void @"Py_IncRef"(i8* %".1") 

declare i8* @"PyDict_GetItem"(i8* %".1", i8* %".2") 

@".const.global name 'QuantumRegister' is not defined" = internal constant [45 x i8] c"global name 'QuantumRegister' is not defined\00"
@"PyExc_NameError" = external global i8
declare void @"Py_DecRef"(i8* %".1") 

@".const.name '$const4.1' is not defined" = internal constant [32 x i8] c"name '$const4.1' is not defined\00"
@".const.name '$const6.2' is not defined" = internal constant [32 x i8] c"name '$const6.2' is not defined\00"
@".const.name '$2load_global.0' is not defined" = internal constant [38 x i8] c"name '$2load_global.0' is not defined\00"
declare i8* @"PyTuple_Pack"(i64 %".1", ...) 

declare i8* @"PyObject_Call"(i8* %".1", i8* %".2", i8* %".3") 

@".const.global name 'ClassicalRegister' is not defined" = internal constant [47 x i8] c"global name 'ClassicalRegister' is not defined\00"
@".const.name '$const14.5' is not defined" = internal constant [33 x i8] c"name '$const14.5' is not defined\00"
@".const.name '$const16.6' is not defined" = internal constant [33 x i8] c"name '$const16.6' is not defined\00"
@".const.name '$12load_global.4' is not defined" = internal constant [39 x i8] c"name '$12load_global.4' is not defined\00"
@".const.global name 'QuantumCircuit' is not defined" = internal constant [44 x i8] c"global name 'QuantumCircuit' is not defined\00"
@".const.name 'qreg_q' is not defined" = internal constant [29 x i8] c"name 'qreg_q' is not defined\00"
@".const.name 'creg_c' is not defined" = internal constant [29 x i8] c"name 'creg_c' is not defined\00"
@".const.name '$22load_global.8' is not defined" = internal constant [39 x i8] c"name '$22load_global.8' is not defined\00"
@".const.name 'circuit' is not defined" = internal constant [30 x i8] c"name 'circuit' is not defined\00"
declare i8* @"PyObject_GetAttr"(i8* %".1", i8* %".2") 

@".const.name '$const38.15' is not defined" = internal constant [34 x i8] c"name '$const38.15' is not defined\00"
declare i8* @"PyObject_GetItem"(i8* %".1", i8* %".2") 

@".const.name '$40binary_subscr.16' is not defined" = internal constant [42 x i8] c"name '$40binary_subscr.16' is not defined\00"
@".const.name '$34load_method.13' is not defined" = internal constant [40 x i8] c"name '$34load_method.13' is not defined\00"
@".const.name '$const52.21' is not defined" = internal constant [34 x i8] c"name '$const52.21' is not defined\00"
@".const.name '$const58.24' is not defined" = internal constant [34 x i8] c"name '$const58.24' is not defined\00"
@".const.name '$54binary_subscr.22' is not defined" = internal constant [42 x i8] c"name '$54binary_subscr.22' is not defined\00"
@".const.name '$60binary_subscr.25' is not defined" = internal constant [42 x i8] c"name '$60binary_subscr.25' is not defined\00"
@".const.name '$48load_method.19' is not defined" = internal constant [40 x i8] c"name '$48load_method.19' is not defined\00"
@".const.name '$const72.30' is not defined" = internal constant [34 x i8] c"name '$const72.30' is not defined\00"
@".const.name '$const78.33' is not defined" = internal constant [34 x i8] c"name '$const78.33' is not defined\00"
@".const.name '$74binary_subscr.31' is not defined" = internal constant [42 x i8] c"name '$74binary_subscr.31' is not defined\00"
@".const.name '$80binary_subscr.34' is not defined" = internal constant [42 x i8] c"name '$80binary_subscr.34' is not defined\00"
@".const.name '$68load_method.28' is not defined" = internal constant [40 x i8] c"name '$68load_method.28' is not defined\00"
@".const.name '$const92.39' is not defined" = internal constant [34 x i8] c"name '$const92.39' is not defined\00"
@".const.name '$const98.42' is not defined" = internal constant [34 x i8] c"name '$const98.42' is not defined\00"
@".const.name '$94binary_subscr.40' is not defined" = internal constant [42 x i8] c"name '$94binary_subscr.40' is not defined\00"
@".const.name '$100binary_subscr.43' is not defined" = internal constant [43 x i8] c"name '$100binary_subscr.43' is not defined\00"
@".const.name '$88load_method.37' is not defined" = internal constant [40 x i8] c"name '$88load_method.37' is not defined\00"
@".const.name '$const106.45' is not defined" = internal constant [35 x i8] c"name '$const106.45' is not defined\00"
@".const.name '$108return_value.46' is not defined" = internal constant [42 x i8] c"name '$108return_value.46' is not defined\00"
!0 = !{ !"branch_weights", i32 1, i32 99 }
!1 = !{ i1 1 }
================================================================================
