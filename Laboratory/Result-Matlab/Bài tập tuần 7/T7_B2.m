clear all
close all
clc

x = linspace(0, 4);
y = exp(x.^2);
xlabel('X');
ylabel('Y');
title('Do thi ham so y = e^{x^2}');
hold on;
plot(x, y, 'b-.^');
legend('y = e^{x^2}');