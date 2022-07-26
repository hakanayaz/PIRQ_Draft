// Note: The Q# code found at https://github.com/microsoft/quantum/blob/main/samples/algorithms/repeat-until-success/SimpleRUS.qs
// was used as inspiration. This RUS algorithm can be found in https://arxiv.org/abs/1311.1074

__qpu__ double RUS_circuit(qreg q) {
    using qcor::openqasm;
    #include "RUS.qasm"

    using qcor::xasm;
    return Measure(q[0]);
}



int main(int argc, char** argv) {
    // This RUS algorithm uses an "auxiliary" and "target" qubit
    //auto q = qalloc(2);
    RUS_circuit::print_kernel(std::cout, q);
    // The eventual aim is to apply a I + i*sqrt(2)*X/sqrt(3) on the target
    // When the auxiliary measures 0, the goal is accomplished

    // double success = 0.0;

    // do {
    //     success = RUS_circuit(q);
    // } while (!success)


    // q.print();

}