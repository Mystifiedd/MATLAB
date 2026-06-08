-- To calculate the root of given equations using the Bisection Method
close all;
clear variable;
clc;
func=input('enter the function');
f=inline(func);
disp(f);
E=0.0005;
%-----user section------
a=input('enter the starting point for root interval a=');
b=input('enter the end point for root interval b=');
fa=f(a);
fb=f(b);
while(fa*fb>0)
    clc;
    disp('the interval does not contain any root');
    a=input('enter the starting point for root interval a=');
b=input('enter the end point for root interval b=');
fa=f(a);
fb=f(b);
end;
out=[a,b,fa,fb];
disp(out);

%-----calculation-----
x=(a+b)/2;
fx=f(x);
out=[a,fa,b,fb,x,fx];
disp('');
disp('a f(a) b f(b) x=(a+b)/2 f(x)');
disp('');
disp(out);
while(abs(b-a)>E)
if(fa*fx>0)
    a=x;;
else
    b=x;
end;
    x=(a+b)/2;
fx=f(x);
out=[a,fa,b,fb,x,fx];
disp(out);
end;
%-------output-----
result=strcat('the root lies at x=',num2str(x),'with f(x)=',num2str((fx)));
disp('');
disp(result);