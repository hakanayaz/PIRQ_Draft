module  {
  llvm.func @__quantum__qis__rz(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__cnot(!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__h(!llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__set_external_qreg(!llvm.ptr<struct<"qreg", opaque>>)
  llvm.func @__quantum__rt__qubit_release_array(!llvm.ptr<struct<"Array", opaque>>)
  llvm.func @__quantum__qis__mz(!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
  llvm.func @__quantum__qis__rx(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__qis__ry(f64, !llvm.ptr<struct<"Qubit", opaque>>)
  llvm.func @__quantum__rt__array_get_element_ptr_1d(!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
  llvm.func @__quantum__rt__array_slice(!llvm.ptr<struct<"Array", opaque>>, i32, !llvm.struct<"Range", (i64, i64, i64)>) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__quantum__rt__qubit_allocate_array(i64) -> !llvm.ptr<struct<"Array", opaque>>
  llvm.func @__quantum__rt__finalize()
  llvm.func @__quantum__rt__initialize(i32, !llvm.ptr<ptr<i8>>) -> i32
  llvm.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %0 = llvm.call @__quantum__rt__initialize(%arg0, %arg1) : (i32, !llvm.ptr<ptr<i8>>) -> i32
    %1 = llvm.call @"__internal_mlir_B-V_transpiled_IonTrap_qc3"() : () -> i32
    %2 = llvm.call @__quantum__rt__finalize() : () -> !llvm.void
    llvm.return %1 : i32
  }
  llvm.func @"__internal_mlir_B-V_transpiled_IonTrap_qc3"() -> i32 {
    %0 = llvm.mlir.constant(false) : i1
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(2 : index) : i64
    %4 = llvm.mlir.constant(3 : index) : i64
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.null : !llvm.ptr<i1>
    %7 = llvm.getelementptr %6[%4] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %8 = llvm.ptrtoint %7 : !llvm.ptr<i1> to i64
    %9 = llvm.alloca %8 x i1 : (i64) -> !llvm.ptr<i1>
    %10 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %11 = llvm.insertvalue %9, %10[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %12 = llvm.insertvalue %9, %11[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.insertvalue %13, %12[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %4, %14[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.insertvalue %5, %15[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.getelementptr %17[%1] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %0, %18 : !llvm.ptr<i1>
    %19 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.getelementptr %19[%2] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %0, %20 : !llvm.ptr<i1>
    %21 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.getelementptr %21[%3] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %0, %22 : !llvm.ptr<i1>
    %23 = llvm.mlir.constant(4 : i64) : i64
    %24 = llvm.call @__quantum__rt__qubit_allocate_array(%23) : (i64) -> !llvm.ptr<struct<"Array", opaque>>
    %25 = llvm.mlir.constant(0 : i64) : i64
    %26 = llvm.mlir.constant(1 : i64) : i64
    %27 = llvm.mlir.constant(3 : i64) : i64
    %28 = llvm.mlir.undef : !llvm.struct<"Range", (i64, i64, i64)>
    %29 = llvm.insertvalue %25, %28[0] : !llvm.struct<"Range", (i64, i64, i64)>
    %30 = llvm.insertvalue %26, %29[1] : !llvm.struct<"Range", (i64, i64, i64)>
    %31 = llvm.insertvalue %27, %30[2] : !llvm.struct<"Range", (i64, i64, i64)>
    %32 = llvm.mlir.constant(0 : i64) : i32
    %33 = llvm.call @__quantum__rt__array_slice(%24, %32, %31) : (!llvm.ptr<struct<"Array", opaque>>, i32, !llvm.struct<"Range", (i64, i64, i64)>) -> !llvm.ptr<struct<"Array", opaque>>
    %34 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%24, %25) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %35 = llvm.bitcast %34 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %36 = llvm.load %35 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %37 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%24, %26) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %38 = llvm.bitcast %37 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %39 = llvm.load %38 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %40 = llvm.mlir.constant(2 : i64) : i64
    %41 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%24, %40) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %42 = llvm.bitcast %41 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %43 = llvm.load %42 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %44 = llvm.call @__quantum__rt__array_get_element_ptr_1d(%24, %27) : (!llvm.ptr<struct<"Array", opaque>>, i64) -> !llvm.ptr<i8>
    %45 = llvm.bitcast %44 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<struct<"Qubit", opaque>>>
    %47 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %48 = llvm.mlir.constant(2 : i64) : i64
    %49 = llvm.sitofp %48 : i64 to f64
    %50 = llvm.fdiv %47, %49  : f64
    %51 = llvm.mlir.constant(0 : i64) : i64
    %52 = llvm.call @__quantum__qis__ry(%50, %36) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %53 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %54 = llvm.mlir.constant(0 : i64) : i64
    %55 = llvm.call @__quantum__qis__rx(%53, %36) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %56 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %57 = llvm.mlir.constant(2 : i64) : i64
    %58 = llvm.sitofp %57 : i64 to f64
    %59 = llvm.fdiv %56, %58  : f64
    %60 = llvm.mlir.constant(1 : i64) : i64
    %61 = llvm.call @__quantum__qis__ry(%59, %39) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %62 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %63 = llvm.mlir.constant(1 : i64) : i64
    %64 = llvm.call @__quantum__qis__rx(%62, %39) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %65 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %66 = llvm.mlir.constant(2 : i64) : i64
    %67 = llvm.sitofp %66 : i64 to f64
    %68 = llvm.fdiv %65, %67  : f64
    %69 = llvm.mlir.constant(2 : i64) : i64
    %70 = llvm.call @__quantum__qis__ry(%68, %43) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %71 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.call @__quantum__qis__rx(%71, %43) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %74 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %75 = llvm.mlir.constant(-1.000000e+00 : f64) : f64
    %76 = llvm.mlir.constant(-3.1415926535897931 : f64) : f64
    %77 = llvm.mlir.constant(2 : i64) : i64
    %78 = llvm.sitofp %77 : i64 to f64
    %79 = llvm.fdiv %76, %78  : f64
    %80 = llvm.mlir.constant(3 : i64) : i64
    %81 = llvm.call @__quantum__qis__ry(%79, %46) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %82 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %83 = llvm.mlir.constant(2 : i64) : i64
    %84 = llvm.sitofp %83 : i64 to f64
    %85 = llvm.fdiv %82, %84  : f64
    %86 = llvm.mlir.constant(0 : i64) : i64
    %87 = llvm.call @__quantum__qis__ry(%85, %36) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %88 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %89 = llvm.mlir.constant(2 : i64) : i64
    %90 = llvm.sitofp %89 : i64 to f64
    %91 = llvm.fdiv %88, %90  : f64
    %92 = llvm.mlir.constant(0 : i64) : i64
    %93 = llvm.mlir.constant(3 : i64) : i64
    %94 = llvm.call @rxx_1693535957680(%91, %36, %46) : (f64, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    %95 = llvm.extractvalue %94[0] : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    %96 = llvm.extractvalue %94[1] : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    %97 = llvm.extractvalue %94[2] : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    %98 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %99 = llvm.mlir.constant(-1.000000e+00 : f64) : f64
    %100 = llvm.mlir.constant(-3.1415926535897931 : f64) : f64
    %101 = llvm.mlir.constant(2 : i64) : i64
    %102 = llvm.sitofp %101 : i64 to f64
    %103 = llvm.fdiv %100, %102  : f64
    %104 = llvm.mlir.constant(0 : i64) : i64
    %105 = llvm.call @__quantum__qis__rx(%103, %36) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %106 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %107 = llvm.mlir.constant(-1.000000e+00 : f64) : f64
    %108 = llvm.mlir.constant(-3.1415926535897931 : f64) : f64
    %109 = llvm.mlir.constant(2 : i64) : i64
    %110 = llvm.sitofp %109 : i64 to f64
    %111 = llvm.fdiv %108, %110  : f64
    %112 = llvm.mlir.constant(0 : i64) : i64
    %113 = llvm.call @__quantum__qis__ry(%111, %36) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %114 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %115 = llvm.mlir.constant(2 : i64) : i64
    %116 = llvm.sitofp %115 : i64 to f64
    %117 = llvm.fdiv %114, %116  : f64
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.call @__quantum__qis__ry(%117, %39) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %120 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %121 = llvm.mlir.constant(-1.000000e+00 : f64) : f64
    %122 = llvm.mlir.constant(-3.1415926535897931 : f64) : f64
    %123 = llvm.mlir.constant(3 : i64) : i64
    %124 = llvm.call @__quantum__qis__rx(%122, %46) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %125 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %126 = llvm.mlir.constant(2 : i64) : i64
    %127 = llvm.sitofp %126 : i64 to f64
    %128 = llvm.fdiv %125, %127  : f64
    %129 = llvm.mlir.constant(1 : i64) : i64
    %130 = llvm.mlir.constant(3 : i64) : i64
    %131 = llvm.call @rxx_1693535959120(%128, %39, %46) : (f64, !llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    %132 = llvm.extractvalue %131[0] : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    %133 = llvm.extractvalue %131[1] : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    %134 = llvm.extractvalue %131[2] : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    %135 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %136 = llvm.mlir.constant(-1.000000e+00 : f64) : f64
    %137 = llvm.mlir.constant(-3.1415926535897931 : f64) : f64
    %138 = llvm.mlir.constant(2 : i64) : i64
    %139 = llvm.sitofp %138 : i64 to f64
    %140 = llvm.fdiv %137, %139  : f64
    %141 = llvm.mlir.constant(1 : i64) : i64
    %142 = llvm.call @__quantum__qis__rx(%140, %39) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %143 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %144 = llvm.mlir.constant(-1.000000e+00 : f64) : f64
    %145 = llvm.mlir.constant(-3.1415926535897931 : f64) : f64
    %146 = llvm.mlir.constant(2 : i64) : i64
    %147 = llvm.sitofp %146 : i64 to f64
    %148 = llvm.fdiv %145, %147  : f64
    %149 = llvm.mlir.constant(1 : i64) : i64
    %150 = llvm.call @__quantum__qis__ry(%148, %39) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %151 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %152 = llvm.mlir.constant(2 : i64) : i64
    %153 = llvm.sitofp %152 : i64 to f64
    %154 = llvm.fdiv %151, %153  : f64
    %155 = llvm.mlir.constant(0 : i64) : i64
    %156 = llvm.call @__quantum__qis__ry(%154, %36) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %157 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %158 = llvm.mlir.constant(0 : i64) : i64
    %159 = llvm.call @__quantum__qis__rx(%157, %36) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %160 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %161 = llvm.mlir.constant(2 : i64) : i64
    %162 = llvm.sitofp %161 : i64 to f64
    %163 = llvm.fdiv %160, %162  : f64
    %164 = llvm.mlir.constant(1 : i64) : i64
    %165 = llvm.call @__quantum__qis__ry(%163, %39) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %166 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %167 = llvm.mlir.constant(1 : i64) : i64
    %168 = llvm.call @__quantum__qis__rx(%166, %39) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %169 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %170 = llvm.mlir.constant(2 : i64) : i64
    %171 = llvm.sitofp %170 : i64 to f64
    %172 = llvm.fdiv %169, %171  : f64
    %173 = llvm.mlir.constant(2 : i64) : i64
    %174 = llvm.call @__quantum__qis__ry(%172, %43) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %175 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %176 = llvm.mlir.constant(2 : i64) : i64
    %177 = llvm.call @__quantum__qis__rx(%175, %43) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %178 = llvm.call @__quantum__qis__mz(%36) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %179 = llvm.mlir.constant(0 : i64) : i64
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.bitcast %178 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %182 = llvm.load %181 : !llvm.ptr<i1>
    %183 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %184 = llvm.getelementptr %183[%180] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %182, %184 : !llvm.ptr<i1>
    %185 = llvm.call @__quantum__qis__mz(%39) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %186 = llvm.mlir.constant(1 : i64) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.bitcast %185 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %189 = llvm.load %188 : !llvm.ptr<i1>
    %190 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %191 = llvm.getelementptr %190[%187] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %189, %191 : !llvm.ptr<i1>
    %192 = llvm.call @__quantum__qis__mz(%43) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.ptr<struct<"Result", opaque>>
    %193 = llvm.mlir.constant(2 : i64) : i64
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.bitcast %192 : !llvm.ptr<struct<"Result", opaque>> to !llvm.ptr<i1>
    %196 = llvm.load %195 : !llvm.ptr<i1>
    %197 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %198 = llvm.getelementptr %197[%194] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %196, %198 : !llvm.ptr<i1>
    %199 = llvm.call @__quantum__rt__qubit_release_array(%24) : (!llvm.ptr<struct<"Array", opaque>>) -> !llvm.void
    %200 = llvm.mlir.constant(0 : i32) : i32
    llvm.return %200 : i32
  }
  llvm.func @"B-V_transpiled_IonTrap_qc3"(%arg0: !llvm.ptr<struct<"qreg", opaque>>) -> i32 {
    %0 = llvm.call @__quantum__rt__set_external_qreg(%arg0) : (!llvm.ptr<struct<"qreg", opaque>>) -> !llvm.void
    %1 = llvm.call @"__internal_mlir_B-V_transpiled_IonTrap_qc3"() : () -> i32
    %2 = llvm.call @__quantum__rt__finalize() : () -> !llvm.void
    llvm.return %1 : i32
  }
  llvm.func @rxx_1693535957680(%arg0: f64, %arg1: !llvm.ptr<struct<"Qubit", opaque>>, %arg2: !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)> {
    %0 = llvm.call @__quantum__qis__h(%arg1) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %1 = llvm.call @__quantum__qis__h(%arg2) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %2 = llvm.call @__quantum__qis__cnot(%arg1, %arg2) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %3 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %4 = llvm.mlir.constant(2 : i64) : i64
    %5 = llvm.sitofp %4 : i64 to f64
    %6 = llvm.fdiv %3, %5  : f64
    %7 = llvm.call @__quantum__qis__rz(%6, %arg2) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %8 = llvm.call @__quantum__qis__cnot(%arg1, %arg2) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %9 = llvm.call @__quantum__qis__h(%arg2) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %10 = llvm.call @__quantum__qis__h(%arg1) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %11 = llvm.mlir.undef : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    %12 = llvm.insertvalue %arg0, %11[0] : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    %13 = llvm.insertvalue %arg1, %12[1] : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    %14 = llvm.insertvalue %arg2, %13[2] : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    llvm.return %14 : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
  }
  llvm.func @rxx_1693535959120(%arg0: f64, %arg1: !llvm.ptr<struct<"Qubit", opaque>>, %arg2: !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)> {
    %0 = llvm.call @__quantum__qis__h(%arg1) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %1 = llvm.call @__quantum__qis__h(%arg2) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %2 = llvm.call @__quantum__qis__cnot(%arg1, %arg2) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %3 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %4 = llvm.mlir.constant(2 : i64) : i64
    %5 = llvm.sitofp %4 : i64 to f64
    %6 = llvm.fdiv %3, %5  : f64
    %7 = llvm.call @__quantum__qis__rz(%6, %arg2) : (f64, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %8 = llvm.call @__quantum__qis__cnot(%arg1, %arg2) : (!llvm.ptr<struct<"Qubit", opaque>>, !llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %9 = llvm.call @__quantum__qis__h(%arg2) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %10 = llvm.call @__quantum__qis__h(%arg1) : (!llvm.ptr<struct<"Qubit", opaque>>) -> !llvm.void
    %11 = llvm.mlir.undef : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    %12 = llvm.insertvalue %arg0, %11[0] : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    %13 = llvm.insertvalue %arg1, %12[1] : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    %14 = llvm.insertvalue %arg2, %13[2] : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
    llvm.return %14 : !llvm.struct<(f64, ptr<struct<"Qubit", opaque>>, ptr<struct<"Qubit", opaque>>)>
  }
}