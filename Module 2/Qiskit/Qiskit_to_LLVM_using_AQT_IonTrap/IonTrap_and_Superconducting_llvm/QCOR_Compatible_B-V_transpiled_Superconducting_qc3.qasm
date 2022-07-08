OPENQASM 3.0;
include "stdgates.inc";

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
