clear all
close all
clc

x = linspace(0, 2*pi);
y1 = sin(x);
y2 = cos(x);
y3 = tan(x);
xlabel('X');
ylabel('Y');
title('Do thi ham so luong giac');
hold on;
plot(x, y1, x, y2, x, y3);
legend('sin(x)', 'cos(x)', 'tan(x)');