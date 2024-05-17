clear all
close all
clc

syms u v x y;

u1 = linspace(0, 1);
v1 = linspace(0, 2 * pi);
[U, V] = meshgrid(u1, v1);
X = (1 - U) .* (3 + cos(V)) .* cos(5 * pi * U);
Y = (1 - U) .* (3 + cos(V)) .* sin(5 * pi * U);
Z = 2 * U + (1 - U) .* sin(V);
mesh(X, Y, Z);

x1 = @(u, v) (1 - u) .* (3 + cos(v)) .* cos(5 * pi * u);
y1 = @(u, v) (1 - u) .* (3 + cos(v)) .* sin(5 * pi * u);
z1 = @(u, v) 2 .* u + (1 - u) .* sin(v);

Q11 = quad2d(x1, 0, 1,0, 2 * pi);
Q21 = quad2d(y1, 0, 1,0, 2 * pi);
Q31 = quad2d(z1, 0, 1,0, 2 * pi);
Q1 = Q11 + Q21 + Q31;
fprintf('Tich phan bang quad2d: %f\n', Q1);

x2 = (1 - u) * (3 + cos(v)) * cos(5 * pi * u);
y2 = (1 - u) * (3 + cos(v)) * sin(5 * pi * u);
z2 = 2 * u + (1 - u) * sin(v);

Q12 = int(int(x2, u, 0, 1), v, 0, 2*pi);
Q22 = int(int(y2, u, 0, 1), v, 0, 2*pi);
Q32 = int(int(z2, u, 0, 1), v, 0, 2*pi);
Q2 = double(Q12 + Q22 + Q32);
fprintf('Tich phan bang int: %11f\n', Q2);
