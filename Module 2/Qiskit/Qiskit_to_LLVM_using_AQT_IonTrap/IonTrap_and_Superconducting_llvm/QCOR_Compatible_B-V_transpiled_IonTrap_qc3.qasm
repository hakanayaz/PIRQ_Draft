OPENQASM 3.0;
include "stdgates.inc";
gate rxx_1693535957680(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_1693535959120(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}


creg meas[3];
qreg _all_qubits[4];
let q = _all_qubits[0:3];


ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
ry(-pi/2) q[3];
barrier q[0], q[1], q[2], q[3];
ry(pi/2) q[0];
rxx_1693535957680(pi/2) q[0], q[3];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[1];
rx(-pi) q[3];
rxx_1693535959120(pi/2) q[1], q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
barrier q[0], q[1], q[2], q[3];
ry(pi/2) q[0];
rx(pi) q[0];
ry(pi/2) q[1];
rx(pi) q[1];
ry(pi/2) q[2];
rx(pi) q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];

