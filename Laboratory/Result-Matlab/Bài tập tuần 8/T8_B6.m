clear all
clc
close all

u = linspace(0, 2 * pi, 250);
v = linspace(-pi/2, pi/2, 250);
[U, V] = meshgrid(u, v);
x = cos(V) .* cos(U);
y = cos(V) .* sin(U);
z = sin(V);
mesh(x, y, z);
colormap('jet');
xlabel('X');
ylabel('Y');
zlabel('Z');
axis square;