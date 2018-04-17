function Problem1 = SecantMethod()
a=input('enter function:','s');
f=inline(a)
x(1)=input('enter first guess: ');
x(2)=input('enter second guess: ');
tol=input('enter tolerance: ');
iteration=0;
i=2;
eps = 1e10;

while (abs(eps) > tol)
    x(i+1)=x(i)-f(x(i))*(x(i)-x(i-1))/(f(x(i))-f(x(i-1)));
    eps = x(i+1)-x(i);
    i = i+1;
    x(i)
end