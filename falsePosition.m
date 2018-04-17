function [root,fx,ea,iter]=falsePosition(func,xl,xu,es,maxiter)
tic
% MECH105 Homework 9
% 16 February 2018
% Chandler Horst
%
% False Position Alogrithm Development
% -------------------------------------
% This MATLAB function estimates the root(s) of a function using
% the false-position method. 
%
% Inputs:
%   func - the function being evaluated
%   xl - the lower guess
%   xu - the upper guess
%   es - the desired relative error - defaults to 0.0001%
%   maxiter - the number of iterations desired - defaults to 200
%
% Outputs:
%   root - the estimated root location
%   fx - the function evaluated at the root location
%   ea - the approximate relative error (%)
%   iter - how many iterations were performed
%
%
% TO RUN THIS FUNCTION:
% first, type "syms x" into the command window.
% then, type "f(x)=[function goes here]" with x as the variable.

% If the number of arguments is less than two, the program throws an error. Default values for the desired
% relative error as well as the max iterations are also set if the user
% does not define them.
if nargin < 1
    error("Please enter the function, the lower guess, the upper guess, the desired relative error (optional), and the maximum number of iterations (optional). The default values for the desired relative error and the maximum number of iterations are .0001% and 200, respectively.");
end

if nargin < 2
    error("Please enter the function, the lower guess, and the upper guess.");
end

if nargin == 3
    es=0.0001;
    maxiter=200;
end

if nargin == 4
    maxiter=200;
end

if nargin > 5
    error("Please input a maximum of 5 inputs.")
end

% Sets initial values for the iterations (which we will call the first
% iteration as the zeroth iteration) and the error.
iter=0;
ea=100;

% The loop that does it all. While the iterations are less than the maximum
% and the desired error is less than the relative error, run.
tic
while (iter < maxiter) && (es <= ea)
    funcxu=func(xu); % Computes values for the function at upper bound.
    funcxl=func(xl); % Computes values for the function at lower bound.
    root=xu-((funcxu*(xl-xu)))/(funcxl-funcxu); % False position method calcuclation
    funcroot=func(root); % Calculates the value of the function at the root location
    iter=iter+1; % Increases increments by 1
    if sign(funcroot)== sign(funcxl) % Watches for a sign change and reassigns the variables
        xl=root;                     % to subintervals where we can re-execute the computations
    else
        xu=root;
    end
    funcxu=func(xu); % Computes values for the function at the upper and lower bounds yet again.
    funcxl=func(xl);
    newroot=xu-((funcxu*(xl-xu)))/(funcxl-funcxu); % With these values, the program calculates a new root
    ea=abs((newroot-root)/newroot)*100;            % so that we are able to utilize this value for error calculation.
    
    if iter == maxiter % If the program reaches the maximum number of iterations,  display it.
        disp("Maximum number of iterations reached.")
    end
    
end
toc
fx=func(root);
% The following FormatSpec was found from the MATLAB documentation on
% formatting operators. It allows us to print the results of the outputs
% with precision that we want.
    formatSpec=(' The root of the fuction is %e, the function evaluated at the root is %e, the error of the apporx. is %e percent, and the iterations run was %d .');
    fprintf(formatSpec,root,fx,ea,iter)
    toc
end

    




