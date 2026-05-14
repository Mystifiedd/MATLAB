%--- Three Critical Statements ---
close all;
clear variables;
clc;

%--- User Input Section ---
x = [1, 2, 3; 4, 5, 6; 7, 8, 9];
y = [10, 11, 12; 13, 14, 15; 16, 17, 18];

%--- Calculation Section ---
z = x * y;

%--- Output Section ---
result = ('The multiple of the 3x3 matrix = ');
disp(z);