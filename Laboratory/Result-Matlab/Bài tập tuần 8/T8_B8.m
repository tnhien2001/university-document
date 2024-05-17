clear all
clc
close all

t = linspace(0, 6 * pi, 1000);
x = sqrt(t) .* sin(2 * t);
y = sqrt(t) .* cos(2 * t);
z = 0.5 * t;
plot3(x, y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');