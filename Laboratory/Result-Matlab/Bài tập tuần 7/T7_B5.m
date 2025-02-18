clear all
close all
clc

syms x;
y = x^3 - 3*x;
xlabel('X');
ylabel('Y');
title('Do thi ham so y = x^3 - 3x');
hold on;
x1 = linspace(-3, 3);
y1 = x1.^3 - 3*x1;
y2 = 3*x1.^2 - 3;
y3 = 6*x1;
plot(x1, y1, x1, y2, x1, y3);
legend('y = x^3 - 3x');
A = solve(diff(y) == 0);
text(double(A(1)) - 0.2, double(subs(y, A(1))) + 1, '(-1, 2)');
text(double(A(2)) - 0.2, double(subs(y, A(2))) - 1, '(1, -2)');