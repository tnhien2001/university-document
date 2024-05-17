clear all
close all
clc

figure(1);
x = linspace(-5, 5);
y = linspace(-5, 5);
[x, y] = meshgrid(x, y);
z = x.^2 * y - y.^3;
[u, v] = gradient(z);
quiver(x, y, u, v);

figure(2);
x = linspace(-5, 5);
y = linspace(-5, 5);
[x, y] = meshgrid(x, y);
u = y;
v = x;
quiver(x, y, u, v);

figure(3);
x = linspace(-5, 5);
y = linspace(-5, 5);
[x, y] = meshgrid(x, y);
u = 1 + x - x;
v = sin(y);
quiver(x, y, u, v);

figure(4);
x = linspace(-5, 5);
y = linspace(-5, 5);
[x, y] = meshgrid(x, y);
u = x - 2;
v = x + 1;
quiver(x, y, u, v);

figure(5);
x = linspace(-5, 5);
y = linspace(-5, 5);
[x, y] = meshgrid(x, y);
u = y;
v = 1 ./ x;
quiver(x, y, u, v);

figure(6);
x = linspace(-5, 5);
y = linspace(-5, 5);
[x, y] = meshgrid(x, y);
u = log(1 + y.^2);
v = log(1 + x.^2);
quiver(x, y, u, v);