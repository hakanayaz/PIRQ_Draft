class Qubit:
    def __init__(self, u, d):
        self.up = u
        self.down = d

    def X(self):
        temp = self.up
        self.up = self.down
        self.down = temp


def main():
    q1 = Qubit(1, 0)

    q1.X()
    print("Spin Up: ", q1.up)
    print("Spin Down: ", q1.down)


if __name__ == "__main__":
    main()