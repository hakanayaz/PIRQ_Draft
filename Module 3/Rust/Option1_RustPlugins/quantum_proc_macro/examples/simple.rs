use quantum_proc_macro::{
    quantum_kernel,

    // QuantumResult,
};



#[quantum_kernel]
fn kernel2(param: i8, theta: i32) -> Result<i8, String> {
    
    "
    OPENQASM 3.0;
    include \"stdgates.inc\";
    
    qreg q[20];
    creg meas[3];
    
    u2(0.0, pi) q[0];
    u2(0.0, pi) q[11];
    u2(0.0, pi) q[15];
    u2(-pi, -pi) q[16];
    barrier $11, q[15], q[0], q[16];
    cx q[11], q[16];
    cx q[15], q[16];
    barrier q[11], q[15], q[0], q[16];
    u2(0.0, pi) q[0];
    u2(0.0, pi) q[11];
    u2(0.0, pi) q[15];
    measure q[11] -> meas[0];
    measure q[15] -> meas[1];
    measure q[0] -> meas[2];
    ";
    

    // OpenQasm Parser is limited to OpenQasm 2.0 so must use OpenQasm 2.0 Code. 
    // https://crates.io/crates/openqasm
    // Support for OpenQasm 3.0 may come in the future.
    // OPENQASM 2.0;
    // include "qelib1.inc";
    // gate majority a,b,c 
    // { 
    // cx c,b; 
    // cx c,a; 
    // ccx a,b,c; 
    // }
    // gate unmaj a,b,c 
    // { 
    // ccx a,b,c; 
    // cx c,a; 
    // cx a,b; 
    // }
    // qreg cin[1];
    // qreg a[4];
    // qreg b[4];
    // qreg cout[1];
    // creg ans[5];
    // // set input states
    // x a[0]; // a = 0001
    // x b;    // b = 1111
    // // add a to b, storing result in b
    // majority cin[0],b[0],a[0];
    // majority a[0],b[1],a[1];
    // majority a[1],b[2],a[2];
    // majority a[2],b[3],a[3];
    // cx a[3],cout[0];
    // unmaj a[2],b[3],a[3];
    // unmaj a[1],b[2],a[2];
    // unmaj a[0],b[1],a[1];
    // unmaj cin[0],b[0],a[0];
    // measure b[0] -> ans[0];
    // measure b[1] -> ans[1];
    // measure b[2] -> ans[2];
    // measure b[3] -> ans[3];
    // measure cout[0] -> ans[4];
    
}

fn main() {
    println!("Running kernel...");
    println!("Got result: {:?}", kernel2(12));

    // println!("LLVM IR Raw code: {}", __kernel_llvm_ir);
}
