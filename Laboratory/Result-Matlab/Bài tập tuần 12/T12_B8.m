clear all
close all
clc

syms x y;
y1 = sqrt(x^2 * (x + 3));
y2 = -sqrt(x^2 * (x + 3));
ezplot(y1);
hold on;
ezplot(y2);
A = solve(y1 == y2, x);
S = double(int(abs(y1 - y2), min(A), max(A)));
fprintf('Dien tich hinh tao boi vong cung la: %f\n', S);
