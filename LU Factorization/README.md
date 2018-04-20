## False Position Algorithm
### Motivation
The algorithm was assigned to students in MECH105 by Dr. Bechara.
### Build status
Finished. Although, it was not easy.
### Code style
The usual. Simple MATLAB function.
### Tech/framework used
MATLAB and it's documentation
### Features
The MATLAB function estimates the root(s) of a function using the false-position method.

Inputs:
- func: the function being evaluated
- xl: the lower guess
- xu: the upper guess
- es: the desired relative error, defaults to .0001%
- maxiter: the number of iterations desired, defaults to 200

Outputs:
- root: the estimated root location
- fx: the function evaluated at the root location
- ea: the approximate relative error (%)
- iter: how many iterations were performed

Throws an error if:
- the number of arguments is less than two
- the number of arguments is more than five
- if invalid inputs are entered
## Installation
Download the file from GitHub and open with MATLAB. Enter the function, the lower guess, the upper guess, the desired relative error (optional), and the max number of iterations (optional).
``` MATLAB
syms x
f(x)=3*x+12
falsePosition(func,0,4)
```
### Credits
I want to thank my fellow classmates for the countless hours dumped into the mathematical and algorithmic logic that was thought of in order to fabricate this algorithm. They provided ideas that helped me formulate my function. I would also like to thank Dr. Bechara for helping me learn how to deal with my emotions coming from the making of this algorithm.
