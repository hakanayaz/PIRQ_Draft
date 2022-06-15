fn main() {
    let mut _q1:Qubit = Qubit::new(1,0);
    _q1.X();
    println!("  Spin Up: {}", _q1.up);
    println!("Spin Down: {}", _q1.down);
}

struct Qubit {
      up: i64,
    down: i64
}

impl Qubit {
    fn new(up: i64, down: i64) -> Qubit {
        Qubit {
              up: up,
            down: down
        }
    }

    fn X(&mut self){
        let temp: i64 = self.up;
        self.up = self.down;
        self.down = temp;
    }

}