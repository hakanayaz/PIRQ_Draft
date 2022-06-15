#[prelude_import]
use ::std::prelude::rust_2015::*;
#[macro_use]
extern crate std;
fn main() ({
        let mut _q1: Qubit =
            ((Qubit::new as
                    fn(i64, i64) -> Qubit {Qubit::new})((1 as i64), (0 as i64))
                as Qubit);
        ((_q1 as Qubit).X() as ());




        ({
                ((::std::io::_print as
                        for<'r> fn(Arguments<'r>) {_print})(((::core::fmt::Arguments::new_v1
                            as
                            fn(&[&'static str], &[ArgumentV1]) -> Arguments {Arguments::new_v1})((&([("  Spin Up: "
                                        as &str), ("\n" as &str)] as [&str; 2]) as &[&str; 2]),
                        (&([((::core::fmt::ArgumentV1::new_display as
                                            for<'b> fn(&'b i64) -> ArgumentV1<'b> {ArgumentV1::new_display::<i64>})((&((_q1
                                                    as Qubit).up as i64) as &i64)) as ArgumentV1)] as
                                [ArgumentV1; 1]) as &[ArgumentV1; 1])) as Arguments)) as
                    ());
            } as ());
        ({
                ((::std::io::_print as
                        for<'r> fn(Arguments<'r>) {_print})(((::core::fmt::Arguments::new_v1
                            as
                            fn(&[&'static str], &[ArgumentV1]) -> Arguments {Arguments::new_v1})((&([("Spin Down: "
                                        as &str), ("\n" as &str)] as [&str; 2]) as &[&str; 2]),
                        (&([((::core::fmt::ArgumentV1::new_display as
                                            for<'b> fn(&'b i64) -> ArgumentV1<'b> {ArgumentV1::new_display::<i64>})((&((_q1
                                                    as Qubit).down as i64) as &i64)) as ArgumentV1)] as
                                [ArgumentV1; 1]) as &[ArgumentV1; 1])) as Arguments)) as
                    ());
            } as ());
    } as ())
struct Qubit {
    up: i64,
    down: i64,
}
impl Qubit {
    fn new(up: i64, down: i64)
        ->
            Qubit ({ (Qubit{up: (up as i64), down: (down as i64),} as Qubit) }
        as Qubit)
    fn X(self:
            &mut Self) ({
            let temp: i64 = ((self as &mut Qubit).up as i64);
            (((self as &mut Qubit).up as i64) =
                ((self as &mut Qubit).down as i64) as ());
            (((self as &mut Qubit).down as i64) = (temp as i64) as ());
        } as ())
}
