OPENQASM 3;
include "stdgates.inc";
gate rzz_1877840875728(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_1877840876448(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_1878656168096(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_1878656168048(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
bit[4] meas;
qubit[4] _all_qubits;
let q = _all_qubits[0:3];
h q[0];
h q[1];
h q[2];
h q[3];
barrier q[0], q[1], q[2], q[3];
rzz_1877840875728(2) q[0], q[1];
barrier q[0], q[1], q[2], q[3];
rzz_1877840876448(2) q[0], q[3];
barrier q[0], q[1], q[2], q[3];
rzz_1878656168096(2) q[1], q[2];
barrier q[0], q[1], q[2], q[3];
rzz_1878656168048(2) q[2], q[3];
barrier q[0], q[1], q[2], q[3];
rx(4) q[0];
rx(4) q[1];
rx(4) q[2];
rx(4) q[3];
barrier q[0], q[1], q[2], q[3];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
