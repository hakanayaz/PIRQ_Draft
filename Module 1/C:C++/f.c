// Example C code for the LLVM IR steps
long f(long a, long b) {
  long x = a;
  if (a > b)
    x += 20;
  else
    x += b;
  return x;
}
