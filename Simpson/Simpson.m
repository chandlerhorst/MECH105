function I = Simpson(x,y)
% MECH105 Homework 21
% Chandler Horst
%.
% This function integrates data using Simpson's 1/3 Rule. 
% The function checks if there are an odd number of intervals and uses the Trapezoidal Rule for the last interval. 
% Inputs:
%     x - the independent variable data
%     y - the dependent variable data
% Outputs:
%     I - the evaluated integral of the data
    
if isscalar(x) == 1 || isscalar(y)== 1 % If you input scalar values, the code will throw an error
    error("Your inputs need to be a vectors.")
end

if length(x) ~= length(y) % The sizes of the inputs need to be the same, otherwise the code throws an error
    error("Your inputs need to have the same number of elements.")
end

if range(x(2:end)-x(1:end-1)) ~= 0 % This tests to see if x is equally spaced. If it is not, throw an error.
    error("Your x vector needs to be equally spaced.") % Calculates the range of the function, if it is 0, is it equally spaced.
end

n=numel(x)-1; % Sets n equal to the number of elements in x minus 1 since we start to count x sub zero as the first term.
n_even=mod(n,2); % Sets a variable n_even by dividing n by two. This will be used to see if n is even or odd.

lower_bound=x(1,:); % Sets the lower bound as the first x value
upper_bound=x(end); % Sets the upper bound as the last x value

if n_even == 0 % If n is even, perform Simpson's 1/3 Rule the whole way through.
    I=(upper_bound-lower_bound)*(((y(1)+4*(sum(y(1:2:end-1)))+2*(sum(y(2:2:end-1)))+y(end)))/(3*n))
end

TrapRuleConst=2; % Sets the trapezoidal rule constant to 2. This is used for the equation.
say='Since the number of subintervals is odd, the trapezoidal rule was used for the last interval.'; % If n was odd and we were required to use the trapezoidal rule for the last interval, the user will be notified.

if n_even ~= 0 % If n is odd, the Simpson's Rule will be used for all the intervals except the last. We will use the trapezoidal rule for the last interval.
    SimpsonsRule=(upper_bound-lower_bound)*(y(1,1)+4*(sum(y(1:2:end-2,:)))+2*(sum(y(2:2:end-2,:)))+y(end-1))/(3*n);
    TrapRule=(((upper_bound-lower_bound)/n)/TrapRuleConst)*(y(end-1)+y(end)); % Employs the trapezoidal rule for the last interval
    I=SimpsonsRule+TrapRule
    disp(say)
end