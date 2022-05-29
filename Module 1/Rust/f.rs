fn main() {

}

fn f(a: i8, b: i8) -> i8 {
    // C/C++ i8->long
    let mut x = a;
    if a > b {
        x += 20 // x = x + 20
    } else {
        x += b
    }
    return x;
}