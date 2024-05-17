clear all
clc
close all

t = linspace(0, 6 * pi);
x = sin(t);
y = cos(t);
z = t;
plot3(x, y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');