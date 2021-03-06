OPENQASM 3;
include "stdgates.inc";
bit[4] c;
qubit[4] _all_qubits;
let q = _all_qubits[0:3];
h q[0];
h q[1];
h q[2];
h q[3];
cx q[0], q[1];
rz(1) q[1];
cx q[0], q[1];
cx q[0], q[3];
rz(1) q[3];
cx q[0], q[3];
cx q[1], q[2];
rz(1) q[2];
cx q[1], q[2];
cx q[2], q[3];
rz(1) q[3];
cx q[2], q[3];
rx(2) q[0];
rx(2) q[1];
rx(2) q[2];
rx(2) q[3];
c[0] = measure q[0];
c[1] = measure q[1];
c[2] = measure q[2];
c[3] = measure q[3];