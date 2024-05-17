clear all
close all
clc

u = linspace(0, 2 * pi, 100);
v = linspace(-2, 2, 100);
[U, V] = meshgrid(u, v);
x = cos(U);
y = sin(U);
z = V;
mesh(x, y, z);
colormap('jet');
hold on;

s = linspace(-pi/2, pi/2, 50);
t = linspace(0, 2 * pi, 50);
[S, T] = meshgrid(s, t);
x1 = 1 + cos(S) .* (1 + (1/4) * cos(T));
y1 = (1/4) * sin(T);
z1 = 1 + sin(S) .* (1 + (1/4) * cos(T));
mesh(x1, y1, z1);
colormap('jet');
axis([-2 3 -2 2 -2 2]);
xlabel('X');
ylabel('Y');
zlabel('Z');
view(-35, 30);