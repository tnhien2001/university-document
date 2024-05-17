clear all
close all
clc

syms x y z;

f = exp(x - y);
I = int(int(f, y, 0, 0.5), x, 0, 0.5);
fprintf('I1 = ');
disp(I);

f = y * sin(x) + x * cos(y);
I = int(int(f, y, 0, 2 * pi), x, -pi, 3 * pi / 2);
fprintf('I2 = ');
disp(I);

f = 1 / sqrt(1 - y^2);
I = int(int(f, y, 0, sin(x)), x, 0, pi / 4);
fprintf('I3 = ');
disp(I);

f = exp(x + y + z);
I = int(int(int(f, z, 0, 0.5), y, 1, 2), x, 0, 1);
fprintf('I4 = ');
disp(I);

f = y^2 * z;
I = int(int(int(f, z, 0, y), y, x, 1), x, 0, 1);
fprintf('I5 = ');
disp(I);

f = y;
I = int(int(int(f, z, x - y, x + y), y, x^2, x), x, 0, 1);
fprintf('I6 = ');
disp(I);