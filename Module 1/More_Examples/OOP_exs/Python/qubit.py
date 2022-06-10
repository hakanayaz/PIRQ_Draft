class Qubit:
    def __init__(self, u, d):
        self.up = u
        self.down = d

    def X(self):
        temp = self.up
        self.up = self.down
        self.down = temp

    def CX(self, control):
        if control.down == 1:
            self.X()

    def print(self):
        print("Spin Up: ", self.up)
        print("Spin Down: ", self.down)


if __name__ == "__main__":
    q1 = Qubit(1, 0)
    q2 = Qubit(0, 1)

    q1.CX(q2)

    q1.print()
    q2.print()