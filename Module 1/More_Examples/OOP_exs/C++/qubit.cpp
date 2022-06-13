#include <iostream>

class Qubit {
    public:
        double up;
        double down;

        Qubit (double u, double d) {
            this->up = u;
            this->down = d;
        }

        void X() {
            double temp = this->up;
            this->up = this->down;
            this->down = temp;
        }
};

int main() {
    Qubit q1 = Qubit(1, 0);
    q1.X();
    std::cout << "Spin Up: " << q1.up << "\n";
    std::cout << "Spin Down: " << q1.down << "\n";
}