clear all
close all
clc

u = linspace(0, 2*pi, 50);
v = linspace(-2, 2, 50);
[U, V] = meshgrid(u, v);
x = cos(U);
y = sin(U);
z = V;
mesh(x, y, z);
colormap('jet');
hold on;

x1 = 0.5 * cos(U);
y1 = V;
z1 = 0.5 * sin(U);
mesh(x1, y1, z1);
colormap('jet');
axis([-1 1 -1.5 1.5 -1.5 1.5]);
xlabel('X');
ylabel('Y');
zlabel('Z');
view(-60, 40);