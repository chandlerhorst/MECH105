function [L,U,P]=luFactor(A)
% MECH105 Homework 15
% 25 March 2018
% Chandler Horst
%
% LU Factorization Algorithm
% ---------------------------
% This algorithm determines the LU Factorization of a square matrix, sometimes utilizing pivoting.
% 
% Inputs:
%     A - the square matrix.
% 
% Outputs:
%     L - the lower triangular matrix
%     U - the upper triangular matrix
%     P - the pivot matrix
%
% Other variable definitions:
%     r - the row magnitude of matrix A
%     c - the column magnitude of matrix A
%     x - the first 'temporary' row of U. 
%     y - the second "                   " 
%     z - the third "                  "
%     
%
%
%
%
% ---------- HOW TO RUN THIS FUNCTION ----------
%
% There are many ways, though this is the recommended.
% Set...
%        >> A = [desired array]
%        >> luFactor(A)
% Happiness is (probably) guaranteed.
%
%

clc 

if  (nargin > 1) || (nargin < 1) % If the number of arguments is not 1, throw an error
    error("Please enter one input, the desired square matrix.")
end

[r,c]=size(A); % Delegates the size of A to variables r,c
if r ~= c % This determines if matrix A is a square. If it is not, throw an error
    error("The matrix has to be a square.")
end

L=eye(r); % Sets L as the identity matrix for the row value dimension of matrix A.
P=L; % Sets the pivot matrix equal to the L matrix
U=A; % Sets the upper triangular matrix equal to the current matrix A.

for y=1:r % Goes through values 1 through the value of the row dimension
    [~,z]=max(abs(U(y:r,y))); % Pivots the max absolute value of the matrix from the value y to the value of the row dimension A (r)
    z=z+y-1; % Sets z as the third row. This occurs by subtracting the value of y, the second row.
    if z~=y % If z does not equal y, do the following...
        temp_vector=U(y,:); % Creates a temporary vector of the second row of U, all values
        U(y,:)=U(z,:); % Swaps the two rows y and z (the second and third rows)
        U(z,:)=temp_vector; % Sets the third row as the temporary vector as defined before (see above)
        temp_vector=P(y,:); % Now, the temporary vector value changes in order to swap the pivot matrix P with the second row.
        P(y,:)=U(z,:); % Sets the values of the second row P equivalent to the third row of U, all values
        P(z,:)=temp_vector; % Sets the values of the third row of P equivalent to the temporary vector, as noted beofre.
    if y >=2 % Here, this loop tries to find and compute the value of matrix L.
        temp_vector=L(y,1:y-1); % Set the temporary vector to the second row (y) of L, all values of y minus 1 (since we do not need the first value of L because it is a value we need to stay stationary)
        L(y,1:y-1)=L(z,1:y-1); % The values of L in the second row minus the first position of the column equals the third row of L, all columns but the last two (this is due to the fact that we are already subtracting one from the y vector)
        L(z,1:y-1)=temp_vector; % The value from the temporary vector that we made is set to the value of the third row of L (the last value that we need)
    end
    end
for x=y+1:r % For the values of y (not subtracted here) through the value of the row dimension of A...
        L(x,y)=U(x,y)/U(y,y); % The value of the row, column dimension of L is the ratio used to do forward Gaussian elimination. We do fabricate this value earlier, but compute it again for reliability.
        U(x,:)=U(x,:)-L(x,y)*U(y,:); % Performs forward Gaussian elimination by subtracting the first and second row from L times the second row of U from U. This completes the elimination process of the LU decomposition method.
end
end
L % Displays L, U, and P at the very end.
U
P
end




