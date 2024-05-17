clear all
close all
clc

syms x y a;
disp('a)');
fa = cos(y^3);
ia = int(int(fa, y, 0, x^2), x, 0, 1);
disp(ia);
disp('b)');
fb = 1/(4 - x^2);
ib = int(int(fb, x, -1, y), y, -1, 1);
disp(ib);
disp('c)');
fc = 1/sqrt(a^2 - x^2);
ic = int(int(fc, x), y);
disp(ic);
disp('d)');
fd = cos(y^2);
id = int(int(fd, y, x, 1), x, 0, 1);
disp(id);
disp('e)');
fe = y*exp(x^2)/x^3;
ie = int(int(fe, x, sqrt(y), 1), y, 0, 1);
disp(ie);