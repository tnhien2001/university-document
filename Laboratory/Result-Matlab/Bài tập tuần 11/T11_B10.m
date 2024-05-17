clear all
close all
clc

syms x;

f = exp(x);
I = int(f, 0, pi);
fprintf('I1 = ');
disp(I);

f = sin(x) / x;
I = int(f, 0, 1);
fprintf('I2 = ');
disp(I);

f = 2 ^ x;
I = int(f, 0, 2);
fprintf('I3 = ');
disp(I);

f = 1 / (x^2 + 2);
I = int(f, 0, 1);
fprintf('I4 = ');
disp(I);