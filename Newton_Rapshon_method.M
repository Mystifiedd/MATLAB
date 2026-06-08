%Title: To calculate root of given eqn using Newton Rapshon Methods
%Developed by: Aadarsh Chaudhary
%Date:5/25/2026
%______Three critical statements____
close all;
clear variables;
clc;
%_____function declaration section____
syms x ; 
func=input('Enter the function f(x) = ');
f=inline(func);
df = diff(f(x));
y = inline(df);
disp(f);
disp(y);
e=0.0005;

% ------------- User input Section --------------------
x0 = input('Enter initial value of root X0 = ');
f0 = f(x0);
y0 = y(x0);

% ------------- Calculation Section ------------------
x1 = x0 - f0 / y0 ; 
f1 = f(x1);
out = [x0,  y0, x1, f1];
disp('----------------------------------------------------------------------');
disp('x0     f(x0)      df(x0)    x1         f(x1)     ');
disp('----------------------------------------------------------------------');
disp(out);

while (abs(x0- x1) > e)
    x0 = x1 ; 
    f0 = f1 ;
    y0 = y(x0);
    x1 = x0 - f0 / y0 ; 
    f1 = f(x1);
    out = [x0, f0, y0, x1, f1];
    disp(out);
    
end

%--------------------- Output Section --------------------------------- 
result = strcat('The root lies at x = ', num2str(x1),' with f(x) = ', num2str(f(x1)));
disp('-------------------------------------------------------------------');
disp(result);