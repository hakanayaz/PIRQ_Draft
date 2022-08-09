/**********************************************
* Author:  Daniel Mendez
* Date:    08/09/2022
* Purpose: Use Rust Macros to separately lower the quantum logic from the classical logic.
**********************************************/
#[macro_export]  // indicates that this macro should be made available whenever the crate in which the macro is defined is brought into scope. Without this annotation, the macro can’t be brought into scope.


macro_rules! quantum_kernel_circuit {
    ( $ qasmString : ident ) => ( println!("{}", $qasmString ); 
                                  println!("Hello"););
    // TODO . . . 
}

fn main() {

    // Part 1: Feed OpenQASM code string into quantum_kernel
    let openqasm_string: &'static str = 
    "OPENQASM 3.0;
    include \"stdgates.inc\";
    
    // Source: https://quantumcomputing.com/strangeworks/projects/getting-started-bell-state/files/bell-qasm.qasm
    
    // This is a basic quantum circuit that creates an entangled pair
    
    qreg q[2];		    // create a quantum register with 2 qubits
    creg c[2]; 		    // create a classical register with 2 bits
    U(pi/2, 0, pi) q[0];  // perform Hadamard gate on one qubit
    CX q[0],q[1];  	    // perform control-not gate on both qubits
    // z q[1];
    // an entangled state of the Bell-pair form has been created!
      
    measure q[0] -> c[0];	//measure one qubit, and put outcome in one bit
    measure q[1] -> c[1];	//measure the other qubit, and put outcome in the other bit";
    //log_syntax!();
    
    
    // Part 2: Have this OpenQASM code go through QCOR to produce LLVM. Compiled separately from classical code.
    quantum_kernel_circuit!(openqasm_string);

    
}

