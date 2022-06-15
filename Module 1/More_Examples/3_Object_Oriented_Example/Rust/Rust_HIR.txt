#[prelude_import]
use ::std::prelude::rust_2015::*;
#[macro_use]
extern crate std;
fn main() {
        let mut _q1: Qubit = Qubit::new(1, 0);
        _q1.X();




        {
                ::std::io::_print(::core::fmt::Arguments::new_v1(&["  Spin Up: ",
                                    "\n"], &[::core::fmt::ArgumentV1::new_display(&_q1.up)]));
            };
        {
                ::std::io::_print(::core::fmt::Arguments::new_v1(&["Spin Down: ",
                                    "\n"], &[::core::fmt::ArgumentV1::new_display(&_q1.down)]));
            };
    }
struct Qubit {
    up: i64,
    down: i64,
}
impl Qubit {
    fn new(up: i64, down: i64) -> Qubit { Qubit{up: up, down: down,} }
    fn X(self:
            &mut Self) {
            let temp: i64 = self.up;
            self.up = self.down;
            self.down = temp;
        }
}
