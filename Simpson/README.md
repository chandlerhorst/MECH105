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
