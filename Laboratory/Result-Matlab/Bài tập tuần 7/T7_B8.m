clear all
close all
clc

x = linspace(-2, 2);
y = linspace(-2, 2);
[X, Y] = meshgrid(x, y);
f1 = exp(-x.^2);
f2 = exp(-(X.^2 + Y.^2));
subplot(2, 1, 1);
xlabel('X');
ylabel('Y');
title('Do thi ham so e^{-x^2}');
hold on;
plot(x, f1);
legend('z = e^{-x^2}');
subplot(2, 1, 2);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi ham so e^{-(x^2 + y^2)}');
hold on;
mesh(X, Y, f2);
legend('z = e^{-(x^2 + y^2)}');
view(45, 45);