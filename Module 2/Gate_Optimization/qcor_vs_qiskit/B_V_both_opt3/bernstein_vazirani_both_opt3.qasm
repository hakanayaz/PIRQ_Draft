OPENQASM 3.0;
include "qelib1.inc";
qreg q[20];
creg meas[5];

u2(0.0, pi) q[8];
cx q[8], q[3];
cx q[7], q[8];
cx q[8], q[7];
cx q[7], q[12];
cx q[11], q[12];
cx q[12], q[11];
cx q[11], q[12];
cx q[7], q[12];
barrier q[7], q[14], q[17], q[0], q[6], q[3], q[9], q[11], q[18], q[15], q[4], q[1], q[8], q[13], q[10], q[16], q[19], qmeasure q[7] -> meas[0];
measure q[3] -> meas[1];
measure q[11] -> meas[2];
measure q[12] -> meas[3];
measure q[8] -> meas[4];