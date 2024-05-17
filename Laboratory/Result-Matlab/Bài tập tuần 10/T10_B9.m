clear all
close all
clc

syms x y z;

disp('Cau a:');
f = y;
E = int(int(int(f, z, x - y, x + y), y, 0, x), x, 0, 3);
fprintf('E = ');
disp(E);

disp('Cau b:');
f = exp(x / y);
E = int(int(int(f, z, 0, x * y), x, y, 1), y, 0, 1);
fprintf('E = ');
disp(E);

disp('Cau c:');
f = z / (z^2 + x^2);
E = int(int(int(f, x, 0, z), z, y, 4), y, 1, 4);
fprintf('E = ');
disp(E);