%--- Three Critical Statements ---
close all;
clear variables;
clc;

%--- User Input Section ---
x = input('Enter the value for x = ');
y = input('Enter the value for y = ');

%--- Calculation Section ---
z = x + y;

%--- Output Section ---
result = strcat('Sum of given numbers = 'num2str(z));
disp(result);
