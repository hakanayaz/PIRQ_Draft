; ModuleID = "f$1"
target triple = "x86_64-pc-windows-msvc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"

@"_ZN08NumbaEnv8__main__5f_241B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dExx" = common global i8* null
define i32 @"_ZN8__main__5f_241B42c8tJTIeFCjyCbUFRqqOAK_2f6h0kCng1maAA_3d_3dExx"(i64* noalias nocapture %"retptr", {i8*, i32, i8*}** noalias nocapture %"excinfo", i64 %"arg.a", i64 %"arg.b") 
{
entry:
  %"b" = alloca i64
  store i64 0, i64* %"b"
  %"x" = alloca i64
  store i64 0, i64* %"x"
  %"x.3" = alloca i64
  store i64 0, i64* %"x.3"
  br label %"B0"
B0:
  store i64 %"arg.b", i64* %"b"
  %".9" = load i64, i64* %"x"
  store i64 %"arg.a", i64* %"x"
  %".11" = load i64, i64* %"b"
  %".12" = icmp sgt i64 %"arg.a", %".11"
  br i1 %".12", label %"B14", label %"B24"
B14:
  %".14" = load i64, i64* %"b"
  store i64 0, i64* %"b"
  %".16" = load i64, i64* %"x"
  %".17" = add nsw i64 %".16", 20
  %".18" = load i64, i64* %"x"
  store i64 0, i64* %"x"
  %".21" = load i64, i64* %"x.3"
  store i64 %".17", i64* %"x.3"
  br label %"B32"
B24:
  %".24" = load i64, i64* %"x"
  %".25" = load i64, i64* %"b"
  %".26" = add nsw i64 %".24", %".25"
  %".27" = load i64, i64* %"x"
  store i64 0, i64* %"x"
  %".29" = load i64, i64* %"b"
  store i64 0, i64* %"b"
  %".31" = load i64, i64* %"x.3"
  store i64 %".26", i64* %"x.3"
  br label %"B32"
B32:
  %".34" = load i64, i64* %"x.3"
  %".35" = load i64, i64* %"x.3"
  store i64 0, i64* %"x.3"
  store i64 %".34", i64* %"retptr"
  ret i32 0
}