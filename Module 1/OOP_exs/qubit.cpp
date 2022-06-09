#include <iostream>

class Qubit {
    private:
        double up;
        double down;
    
    public:
        Qubit (double u, double d) {
            this->up = u;
            this->down = d;
        }

        void X() {
            double temp = this->up;
            this->up = this->down;
            this->down = temp;
        }

        void CX(Qubit control) {
            if (control.down) {
                this->X();
            }
        }

        void print() {
            std::cout << "Spin Up: " << this->up << "\n";
            std::cout << "Spin Down: " << this->down << "\n";
        }
};

int main() {
    Qubit q1 = Qubit(1, 0);
    Qubit q2 = Qubit(0, 1);

    q1.CX(q2);

    q1.print();
    q2.print();
}