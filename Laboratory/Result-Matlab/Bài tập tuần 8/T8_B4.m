clear all
clc
close all

t = linspace(0, 2 * pi);
x = 5 * cos(t);
y = 5 * sin(t);
plot(x, y);
xlabel('X');
ylabel('Y');
axis([-6 6 -6 6]);
axis square;
