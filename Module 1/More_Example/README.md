# More Example

In this tutorial, we will show the loop and function call types of examples to create IR. To illustrate, we chose the Newton Raphson method algorithm and wrote it in three different programming languages: Python, Rust, and C++. As a next step, we will add Julia too.

Newton Raphson method is using to solve any non-linear equation. Pseudo code of the algorithm is given below;

1. Start

2. Define function as f(x)

3. Define first derivative of f(x)

4. Input initial guess (x0), tolerable error (e)
   and maximum iteration (N)

5. Initialize iteration counter i = 1

6. Calcualte x1 = x0 - f(x0) / g(x0)

7. Increment iteration counter i = i + 1

8. If |f(x1)| > e then set x0 = x1
    and goto (6) otherwise goto (9)

9. Print root as x1

10. Stop

We choose this example because it is similar while using Quantum algorithms. There are a lot of loops and function updates.
