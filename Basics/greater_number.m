%--- Three Critical Statements ---
close all;
clear variables;
clc;

%--- User Input Section ---
x = input('Enter the Value of X : ');
y = input("Enter the Value of Y : ");

%--- Calculation Section ---
if (x > y)
    fprintf('%d is greater than %d\n', x, y);

else if (y > x)
    fprintf('%d is greater than %d\n', y, x);
else
    fprintf('Both numbers are equal\n');
end;

%--- Output Section ---
disp(result);