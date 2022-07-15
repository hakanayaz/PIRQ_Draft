from qiskit import QuantumRegister, ClassicalRegister, QuantumCircuit
from numpy import pi

def BellState():
    qreg_q = QuantumRegister(2, 'q')
    creg_c = ClassicalRegister(2, 'c')
    circuit = QuantumCircuit(qreg_q, creg_c)

    circuit.h(qreg_q[0])
    circuit.cx(qreg_q[0], qreg_q[1])
    
    circuit.measure(qreg_q[0], creg_c[0])
    circuit.measure(qreg_q[1], creg_c[1])


if __name__  == "__main__":
    BellState()