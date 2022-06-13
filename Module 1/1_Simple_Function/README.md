# 1. A Simple Function

This first set of tutorials focuses on an extremely simple function to give a basic feel for classical compilation. It does so in C, Julia, Python, and Rust. Feel free to begin with whichever language you are most comfortable in - the syntax doesn't matter, and it is worth seeing how each language ends up in roughly the same place.

## Pseudocode

The pseudocode of the function is simple:

```
f(a, b)
    if a > b
        x is a + 20
    else
        x is a + b
    return x
```