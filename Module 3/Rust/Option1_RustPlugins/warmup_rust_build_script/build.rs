/********** build.rs ********************************************************
 *  Author: Summer 2022 PIRQ Interns.   
 *    Date: 08/17/2022
 * Purpose: Call QCOR command from Rust build script. QCOR converts OpenQASM3 
 *          code into LLVM. This LLVM output is typically printed to the terminal. 
 *          However, this code redirects the LLVM output to an llvm file.
 * Compile and Execute Command: cargo run
 ***************************************************************************/
use std::process::{Command};


fn main() {

    let llvm_file_name = format!("{}", "src/B-V_transpiled_Superconducting_qc3.ll");
    let output_file = std::fs::File::create(llvm_file_name).expect("ERROR: Could not create file.");

    // Testing QCOR command.
    let _output = Command::new("qcor-mlir-tool")
                    .args(&["-emit=llvm", "src/QCOR_Compatible_B-V_transpiled_Superconducting_qc3.qasm"])
                    .stderr(output_file)
                    .status()
                    .expect("ERROR: Cannot run command.");    // Almost the same as unwrap(). However, can set a customized message for the panics.
}