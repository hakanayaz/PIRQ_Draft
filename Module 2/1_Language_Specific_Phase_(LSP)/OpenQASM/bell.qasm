OPENQASM 3.0;
include "stdgates.inc";

// Source: https://quantumcomputing.com/strangeworks/projects/getting-started-bell-state/files/bell-qasm.qasm

// This is a basic quantum circuit that creates an entangled pair

qreg q[2];		    // create a quantum register with 2 qubits
creg c[2]; 		    // create a classical register with 2 bits
U(pi/2, 0, pi) q[0];  // perform Hadamard gate on one qubit
CX q[0],q[1];  	    // perform control-not gate on both qubits
// z q[1];
// an entangled state of the Bell-pair form has been created!
  
measure q[0] -> c[0];	//measure one qubit, and put outcome in one bit
measure q[1] -> c[1];	//measure the other qubit, and put outcome in the other bit