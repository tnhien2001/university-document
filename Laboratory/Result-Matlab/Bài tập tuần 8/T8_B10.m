clear all
clc
close all

u = linspace(0, 2 * pi, 50);
v = linspace(0, 2 * pi, 50);
[U, V] = meshgrid(u, v);
x = (1 + 0.5 * cos(V)) .* cos(U);
y = (1 + 0.5 * cos(V)) .* sin(U);
z = 0.5 * sin(V);
mesh(x, y, z);
colormap('jet');
xlabel('X');
ylabel('Y');
zlabel('Z');
axis auto;
view(45, 60);