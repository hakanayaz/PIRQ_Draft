module  {
  func @main(%arg0: i32, %arg1: !quantum.ArgvType) -> i32 {
    q.init(%arg0, %arg1) []
    %0 = call @"__internal_mlir_B-V_transpiled_IonTrap_qc3"() : () -> i32
    q.finalize()
    return %0 : i32
  }
  func @"__internal_mlir_B-V_transpiled_IonTrap_qc3"() -> i32 {
    %false = constant false
    %c0 = constant 0 : index
    %c1 = constant 1 : index
    %c2 = constant 2 : index
    %0 = alloca() : memref<3xi1>
    store %false, %0[%c0] : memref<3xi1>
    store %false, %0[%c1] : memref<3xi1>
    store %false, %0[%c2] : memref<3xi1>
    %1 = q.qalloc(4) { name = _all_qubits } : !quantum.Array
    %c0_i64 = constant 0 : i64
    %c1_i64 = constant 1 : i64
    %c3_i64 = constant 3 : i64
    %2 = q.qarray_slice (%1, %c0_i64, %c1_i64, %c3_i64) : !quantum.Array
    %3 = q.extract(%1, %c0_i64) : !quantum.Qubit
    %4 = q.extract(%1, %c1_i64) : !quantum.Qubit
    %c2_i64 = constant 2 : i64
    %5 = q.extract(%1, %c2_i64) : !quantum.Qubit
    %6 = q.extract(%1, %c3_i64) : !quantum.Qubit
    %cst = constant 3.1415926535897931 : f64
    %c2_i64_0 = constant 2 : i64
    %7 = sitofp %c2_i64_0 : i64 to f64
    %8 = divf %cst, %7 : f64
    %c0_i64_1 = constant 0 : i64
    %9 = qvs.ry(%3, %8) : !quantum.Qubit
    %cst_2 = constant 3.1415926535897931 : f64
    %c0_i64_3 = constant 0 : i64
    %10 = qvs.rx(%9, %cst_2) : !quantum.Qubit
    %cst_4 = constant 3.1415926535897931 : f64
    %c2_i64_5 = constant 2 : i64
    %11 = sitofp %c2_i64_5 : i64 to f64
    %12 = divf %cst_4, %11 : f64
    %c1_i64_6 = constant 1 : i64
    %13 = qvs.ry(%4, %12) : !quantum.Qubit
    %cst_7 = constant 3.1415926535897931 : f64
    %c1_i64_8 = constant 1 : i64
    %14 = qvs.rx(%13, %cst_7) : !quantum.Qubit
    %cst_9 = constant 3.1415926535897931 : f64
    %c2_i64_10 = constant 2 : i64
    %15 = sitofp %c2_i64_10 : i64 to f64
    %16 = divf %cst_9, %15 : f64
    %c2_i64_11 = constant 2 : i64
    %17 = qvs.ry(%5, %16) : !quantum.Qubit
    %cst_12 = constant 3.1415926535897931 : f64
    %c2_i64_13 = constant 2 : i64
    %18 = qvs.rx(%17, %cst_12) : !quantum.Qubit
    %cst_14 = constant 3.1415926535897931 : f64
    %cst_15 = constant -1.000000e+00 : f64
    %19 = mulf %cst_15, %cst_14 : f64
    %c2_i64_16 = constant 2 : i64
    %20 = sitofp %c2_i64_16 : i64 to f64
    %21 = divf %19, %20 : f64
    %c3_i64_17 = constant 3 : i64
    %22 = qvs.ry(%6, %21) : !quantum.Qubit
    %cst_18 = constant 3.1415926535897931 : f64
    %c2_i64_19 = constant 2 : i64
    %23 = sitofp %c2_i64_19 : i64 to f64
    %24 = divf %cst_18, %23 : f64
    %c0_i64_20 = constant 0 : i64
    %25 = qvs.ry(%10, %24) : !quantum.Qubit
    %cst_21 = constant 3.1415926535897931 : f64
    %c2_i64_22 = constant 2 : i64
    %26 = sitofp %c2_i64_22 : i64 to f64
    %27 = divf %cst_21, %26 : f64
    %c0_i64_23 = constant 0 : i64
    %c3_i64_24 = constant 3 : i64
    %28:3 = call @rxx_1693535957680(%27, %25, %22) : (f64, !quantum.Qubit, !quantum.Qubit) -> (f64, !quantum.Qubit, !quantum.Qubit)
    %cst_25 = constant 3.1415926535897931 : f64
    %cst_26 = constant -1.000000e+00 : f64
    %29 = mulf %cst_26, %cst_25 : f64
    %c2_i64_27 = constant 2 : i64
    %30 = sitofp %c2_i64_27 : i64 to f64
    %31 = divf %29, %30 : f64
    %c0_i64_28 = constant 0 : i64
    %32 = qvs.rx(%25, %31) : !quantum.Qubit
    %cst_29 = constant 3.1415926535897931 : f64
    %cst_30 = constant -1.000000e+00 : f64
    %33 = mulf %cst_30, %cst_29 : f64
    %c2_i64_31 = constant 2 : i64
    %34 = sitofp %c2_i64_31 : i64 to f64
    %35 = divf %33, %34 : f64
    %c0_i64_32 = constant 0 : i64
    %36 = qvs.ry(%32, %35) : !quantum.Qubit
    %cst_33 = constant 3.1415926535897931 : f64
    %c2_i64_34 = constant 2 : i64
    %37 = sitofp %c2_i64_34 : i64 to f64
    %38 = divf %cst_33, %37 : f64
    %c1_i64_35 = constant 1 : i64
    %39 = qvs.ry(%14, %38) : !quantum.Qubit
    %cst_36 = constant 3.1415926535897931 : f64
    %cst_37 = constant -1.000000e+00 : f64
    %40 = mulf %cst_37, %cst_36 : f64
    %c3_i64_38 = constant 3 : i64
    %41 = qvs.rx(%22, %40) : !quantum.Qubit
    %cst_39 = constant 3.1415926535897931 : f64
    %c2_i64_40 = constant 2 : i64
    %42 = sitofp %c2_i64_40 : i64 to f64
    %43 = divf %cst_39, %42 : f64
    %c1_i64_41 = constant 1 : i64
    %c3_i64_42 = constant 3 : i64
    %44:3 = call @rxx_1693535959120(%43, %39, %41) : (f64, !quantum.Qubit, !quantum.Qubit) -> (f64, !quantum.Qubit, !quantum.Qubit)
    %cst_43 = constant 3.1415926535897931 : f64
    %cst_44 = constant -1.000000e+00 : f64
    %45 = mulf %cst_44, %cst_43 : f64
    %c2_i64_45 = constant 2 : i64
    %46 = sitofp %c2_i64_45 : i64 to f64
    %47 = divf %45, %46 : f64
    %c1_i64_46 = constant 1 : i64
    %48 = qvs.rx(%39, %47) : !quantum.Qubit
    %cst_47 = constant 3.1415926535897931 : f64
    %cst_48 = constant -1.000000e+00 : f64
    %49 = mulf %cst_48, %cst_47 : f64
    %c2_i64_49 = constant 2 : i64
    %50 = sitofp %c2_i64_49 : i64 to f64
    %51 = divf %49, %50 : f64
    %c1_i64_50 = constant 1 : i64
    %52 = qvs.ry(%48, %51) : !quantum.Qubit
    %cst_51 = constant 3.1415926535897931 : f64
    %c2_i64_52 = constant 2 : i64
    %53 = sitofp %c2_i64_52 : i64 to f64
    %54 = divf %cst_51, %53 : f64
    %c0_i64_53 = constant 0 : i64
    %55 = qvs.ry(%36, %54) : !quantum.Qubit
    %cst_54 = constant 3.1415926535897931 : f64
    %c0_i64_55 = constant 0 : i64
    %56 = qvs.rx(%55, %cst_54) : !quantum.Qubit
    %cst_56 = constant 3.1415926535897931 : f64
    %c2_i64_57 = constant 2 : i64
    %57 = sitofp %c2_i64_57 : i64 to f64
    %58 = divf %cst_56, %57 : f64
    %c1_i64_58 = constant 1 : i64
    %59 = qvs.ry(%52, %58) : !quantum.Qubit
    %cst_59 = constant 3.1415926535897931 : f64
    %c1_i64_60 = constant 1 : i64
    %60 = qvs.rx(%59, %cst_59) : !quantum.Qubit
    %cst_61 = constant 3.1415926535897931 : f64
    %c2_i64_62 = constant 2 : i64
    %61 = sitofp %c2_i64_62 : i64 to f64
    %62 = divf %cst_61, %61 : f64
    %c2_i64_63 = constant 2 : i64
    %63 = qvs.ry(%18, %62) : !quantum.Qubit
    %cst_64 = constant 3.1415926535897931 : f64
    %c2_i64_65 = constant 2 : i64
    %64 = qvs.rx(%63, %cst_64) : !quantum.Qubit
    %65 = q.mz(%56) : !quantum.Result
    %c0_i64_66 = constant 0 : i64
    %66 = index_cast %c0_i64_66 : i64 to index
    %67 = q.resultCast(%65) : i1
    store %67, %0[%66] : memref<3xi1>
    %68 = q.mz(%60) : !quantum.Result
    %c1_i64_67 = constant 1 : i64
    %69 = index_cast %c1_i64_67 : i64 to index
    %70 = q.resultCast(%68) : i1
    store %70, %0[%69] : memref<3xi1>
    %71 = q.mz(%64) : !quantum.Result
    %c2_i64_68 = constant 2 : i64
    %72 = index_cast %c2_i64_68 : i64 to index
    %73 = q.resultCast(%71) : i1
    store %73, %0[%72] : memref<3xi1>
    q.dealloc(%1)
    %c0_i32 = constant 0 : i32
    return %c0_i32 : i32
  }
  func @"B-V_transpiled_IonTrap_qc3"(%arg0: !quantum.qreg) -> i32 {
    q.set_qreg(%arg0)
    %0 = call @"__internal_mlir_B-V_transpiled_IonTrap_qc3"() : () -> i32
    q.finalize()
    return %0 : i32
  }
  func @rxx_1693535957680(%arg0: f64, %arg1: !quantum.Qubit, %arg2: !quantum.Qubit) -> (f64, !quantum.Qubit, !quantum.Qubit) {
    %0 = qvs.h(%arg1) : !quantum.Qubit
    %1 = qvs.h(%arg2) : !quantum.Qubit
    %2:2 = qvs.cx(%0, %1) : !quantum.Qubit, !quantum.Qubit
    %cst = constant 3.1415926535897931 : f64
    %c2_i64 = constant 2 : i64
    %3 = sitofp %c2_i64 : i64 to f64
    %4 = divf %cst, %3 : f64
    %5 = qvs.rz(%2#1, %4) : !quantum.Qubit
    %6:2 = qvs.cx(%2#0, %5) : !quantum.Qubit, !quantum.Qubit
    %7 = qvs.h(%6#1) : !quantum.Qubit
    %8 = qvs.h(%6#0) : !quantum.Qubit
    return %arg0, %8, %7 : f64, !quantum.Qubit, !quantum.Qubit
  }
  func @rxx_1693535959120(%arg0: f64, %arg1: !quantum.Qubit, %arg2: !quantum.Qubit) -> (f64, !quantum.Qubit, !quantum.Qubit) {
    %0 = qvs.h(%arg1) : !quantum.Qubit
    %1 = qvs.h(%arg2) : !quantum.Qubit
    %2:2 = qvs.cx(%0, %1) : !quantum.Qubit, !quantum.Qubit
    %cst = constant 3.1415926535897931 : f64
    %c2_i64 = constant 2 : i64
    %3 = sitofp %c2_i64 : i64 to f64
    %4 = divf %cst, %3 : f64
    %5 = qvs.rz(%2#1, %4) : !quantum.Qubit
    %6:2 = qvs.cx(%2#0, %5) : !quantum.Qubit, !quantum.Qubit
    %7 = qvs.h(%6#1) : !quantum.Qubit
    %8 = qvs.h(%6#0) : !quantum.Qubit
    return %arg0, %8, %7 : f64, !quantum.Qubit, !quantum.Qubit
  }
}