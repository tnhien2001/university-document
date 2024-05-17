clear all
clc
close all

u = linspace(0, 2 * pi, 170);
v = linspace(-5, 5, 170);
[U, V] = meshgrid(u, v);
x = cos(U);
y = sin(U);
z = V;
mesh(x, y, z);
colormap('jet');
xlabel('X');
ylabel('Y');
zlabel('Z');
axis square;