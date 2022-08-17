/********** build.rs ********************************************************
 * Author: Summer 2022 PIRQ Interns.   
 * Date: 08/17/2022
 * Purpose: Call QCOR command from Rust build script. QCOR converts OpenQASM3 
 *          code into LLVM. This LLVM output is typically printed to the terminal. 
 *          However, this code redirects the LLVM output to an llvm file.
 * Compile and Execute Command: cargo run
 ***************************************************************************/
use std::process::{Command, Stdio};
use std::fs::File;


fn main() {

    // Testing ls command.
    let output = Command::new("ls")
                    .stdout(Stdio::piped())                 // Configuration for the child process’s standard output (stdout) handle.
                    .output()                               // Executes the command as a child process, waiting for it to finish and collecting all of its output.
                    .expect("failed to execute process");   // Almost the same as unwrap(). However, can set a customized message for the panics.

    // Testing QCOR command.
    // let output = Command::new("qcor-mlir-tool")
    //                 .args(&["-emit=llvm", "src/QCOR_Compatible_B-V_transpiled_Superconducting_qc3.qasm"])
    //                 .stdout(Stdio::piped())                 // Configuration for the child process’s standard output (stdout) handle.
    //                 .output()                               // Executes the command as a child process, waiting for it to finish and collecting all of its output.
    //                 .expect("failed to execute process");   // Almost the same as unwrap(). However, can set a customized message for the panics.


    let output_successful = output.status.success();

    // If there is an error then do the following
    if !output_successful {
        println!("ERROR: Unable to run QCOR command qcor-mlir-tool. Check your Rust build.rs file");
        // TODO: Exit program;
    }

    
    // Convert stdout output stream into string.
    let qcor_llvm:String = String::from_utf8(output.stdout).unwrap();
    //let length_llvm = qcor_llvm.chars().count().to_string();

    // TODO: Error Cheching for qcor_llvm variable before unwrapping. 



    // Redirect the output IR into an LLVM file.
    //let output_test = "<OpenQASM Output here!>";
    let llvm_file_name = format!("{}", "src/B-V_transpiled_Superconducting_qc3.ll");
    let llvm_file_object = File::create(llvm_file_name).expect("ERROR: Failed to open llvm file.");

    let mut cmd = Command::new("echo")
        .args(&[qcor_llvm])
        .stdout(llvm_file_object)
        .spawn()
        .expect("failed to start echo");

    cmd.wait().expect("failed to finish echo");
    
}