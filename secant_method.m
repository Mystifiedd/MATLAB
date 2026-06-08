% Title :- To calculate root of given equations using Secant method.
% Developed by :- Aadarsh Chaudhary
% Date : 25 May 2026

close all;
clear variables;
clc;

% Function declaration

func = input('Enter the function  ','s');
f = @(x) eval(func);

E = 0.0005;

% User input section
a = input('Enter the starting point a = ');
b = input('Enter the ending point b = ');

fa = f(a);
fb = f(b);

disp('---------------------------------------------');
disp(' a        f(a)        b        f(b)');
disp('---------------------------------------------');
disp([a fa b fb]);

% First iteration
x = (a*fb - b*fa)/(fb - fa);
fx = f(x);

disp('----------------------------------------------------------');
disp(' a        f(a)       b        f(b)        x        f(x)');
disp('----------------------------------------------------------');

while(abs(b-a) > E)

    fprintf('%f   %f   %f   %f   %f   %f\n',a,fa,b,fb,x,fx);

    a = b;
    b = x;

    fa = fb;
    fb = fx;

    x = (a*fb - b*fa)/(fb - fa);
    fx = f(x);

end

disp('-----------------------------------');
fprintf('Approximate root = %f\n',x);
disp('-----------------------------------');