const EPSILON: f32 = 0.001;

// Newton Raphson Method for extended example of creation IR:
// The function is : (4/3)x^3 - (3/2)x^2 + 8
fn function(x: f32) -> f32 {
    return (4./ 3.)*(x*x*x) - (3./ 2.)*(x*x) + 8.
}
// Derivative of the function
fn derivedfunction(x: f32) -> f32 {
    return 4.*(x*x) - 3.*x
}
//Function to find the root with using Newton Raphson
fn newton_raphson(_x: f32) {
    let mut x: f32 = 5.;
    let mut h = function(x) / derivedfunction(x);
    let abs_h = h.abs();
    while abs_h >= EPSILON {
        h = function(x) / derivedfunction(x);
        x = x - h;
        if h == 0. {
            break
        }
    }
    println!("The value of the root is: {}", x);
}

fn main() {
    let x0: f32 = 5.;
    newton_raphson(x0);
}