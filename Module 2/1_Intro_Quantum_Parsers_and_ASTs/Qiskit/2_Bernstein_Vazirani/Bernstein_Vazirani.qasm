OPENQASM 3;
include "stdgates.inc";
bit[3] c;
u2(0, pi) $0;
u2(-pi, -pi) $1;
u2(0, pi) $6;
u2(0, pi) $15;
barrier $6, $0, $15, $1;
cx $6, $1;
cx $0, $1;
barrier $6, $0, $15, $1;
u2(0, pi) $0;
u2(0, pi) $15;
u2(0, pi) $6;
c[0] = measure $6;
c[1] = measure $0;
c[2] = measure $15;