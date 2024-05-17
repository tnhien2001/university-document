clear all
close all
clc

x = linspace(0, 4);
y = x./(1 + x.^4);
xlabel('X');
ylabel('Y');
title('Do thi ham so y = x/{1 + x^4}');
hold on;
plot(x, y, 'r-.o', 'LineWidth', 2, 'MarkerSize', 6, 'MarkerEdgeColor','k', 'MarkerFaceColor','b');
legend('y = x/{1 + x^4}');