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
