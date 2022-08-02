# Newton-Raphson

In these next tutorials, we show how IR can handle more advanced constructs of high-level programming languages, such as loops, conditionals, function calls, and classes. To illustrate, we chose the Newton-Raphson method algorithm and wrote it in four different programming languages: [Python](Python), [Rust](Rust), [Julia](Julia) and [C++](C_C++).

The Newton-Raphson method is used to find roots for any non-linear differentiable function. The pseudocode of the algorithm is given below:

    1. Start

    2. Define function as f(x)

    3. Take the first derivative, and define g(x) = f'(x)

    4. Input an initial guess for a root (x0), and define tolerable error (EPSILON)

    5. Calcualte x1 = x0 - f(x0) / g(x0)

    6. If |f(x1)| > EPSILON then set x0 = x1
    and goto (5): otherwise, goto (7)

    7. Print our current x1 value - it's very close to a root!

    8. Stop

We chose this example because it is similar while using Quantum algorithms. There are a lot of loops and function calls.
