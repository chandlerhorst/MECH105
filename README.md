# MECH105
Numerical methods homework, projects, and algorithms.
For easy access, the names of all current algorithms are
- Simpson's Method
- False Position
- LU Factorization

if you would like to find them utilizing keyboard shortcuts (CTRL-F for Windows, CMD-F for Macs)

## Simpson Method Algorithm
### Motivation
The students enrolled in MECH105 at CSU in the Spring 2017-2018 year were assigned this algorithm in order for us to understand the workings of Simpson's Rule.
### Build status
Finished. Working as best as I could make it.
### Code style
Nothing fancy. Typical function written in MATLAB.
### Tech/framework used
Built with MATLAB.
### Features
The MATLAB function integrates data using Simpson's 1/3 Rule.
The function checks if there are an odd number of intervals and applies the Trapezoidal Rule for the last interval.

Inputs:
 - x: independent variable data
 - y: the dependent variable data
 
 Outputs:
 - I: the evaluated integral
 
 Throws an error if:
 - the user inputs a scalar value
 - the size of the inputs are different 
 - if 'x' is equally spaced
### Installation
Download the Simpson.m file from Github and open with MATLAB. In the command window, type the data and utilize the function the integrate, such as...
``` MATLAB
x=[1 2 3; 4 5 6; 7 8 9];
y=[1 -7 2; 3 0 9; 3 6 17];
Simpson(x,y)
```
### Credits
I would like to thank my fellow classmates for assisting me with the logic needed to code this algorithm. I would also like to thank Dr. Bechara, for without this assignment I would not understand how exactly Simpson's Rule works.

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

## LU Factorization
### Motivation
Assigned to students of MECH105 by Dr. Bechara.
### Build status
Works, although it fails to generate an adequate permutation matrix. Needs to be fixed!
### Code style
Nothing crazy, merely a MATLAB function.
### Tech/framework used
MATLAB.
### Features
The algorithm determines the LU factorization, or decomposition, of a square matrix, sometimes utilizing pivoting.
Inputs:
- A: the square matrix

Outputs:
- L: the lower triangular matrix
- U: the upper triangular matrix
- P: the pivot matrix

Other variable definitions:
- r: the row magnitude of matrix A
- c: the column magnitude of matrix A
- x: the first 'temporary' row of U
- y: the second 'temporary' row of U
- z: the third 'temporary' row of U

Throws an error if:
- the number of input arguments is not 1
- if input matrix A is not a square
## Installation
Pretty simple. Download the file from the Internet, open with MATLAB. Example...
``` MATLAB
A=[54 98 -32 11; 15 33 6 72; 34 9 -55 8; 83 58 23 0]
luFactor(A)
```
### Credits
I would like to thank my classmates with one specific aspect of my code. They helped optimize in determining if A was a square matrix or not. As usual, I would also like to thank Dr. Bechara for assigning this. It helped me understand LU factorization more than the average human.
