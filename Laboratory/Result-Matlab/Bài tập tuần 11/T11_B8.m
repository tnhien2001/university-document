clear all
close all
clc

syms x;
y = 2 * x^3 + 3 * x^2 - 12 * x + 1;
ezplot(y);
z = diff(y)
t = solve(z == 0, x);
text(double(t(1)), double(subs(y, t(1))), 'x1');
text(double(t(2)), double(subs(y, t(2))), 'x2');