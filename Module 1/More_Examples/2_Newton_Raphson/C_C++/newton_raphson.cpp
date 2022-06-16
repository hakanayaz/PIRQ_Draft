#include<stdlib.h>
#include<iostream>
#define EPSILON 0.0001

// Newton Raphson Method for extended example of creation IR:
// The function is : (4/3)x^3 - (3/2)x^2 + 8
double function(double x)
{
    return (4/3)*x*x*x - (3/2)*x*x + 8;
}

// Derivative of the function
double derivedFunction(double x)
{
    return 4*x*x - 3*x;
}

// Root finding via Newton-Raphson
void newtonRaphson(double x)
{
    double h = function(x) / derivedFunction(x);
    while (abs(h) >= EPSILON)
    {
        h = function(x) / derivedFunction(x);
        // Iteration
        // x(i+1) = x(i) - f(x) / f'(x)
        x = x - h;
    }
    std::cout << "The value of the root is : " << x;
}

int main()
{
    double x0 = 5; // Initial value
    newtonRaphson(x0);
    return 0;
}
