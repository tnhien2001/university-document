clear all
close all
clc

syms x;
disp('a)');
fa = sqrt(1 - x^2);
ifa = int(fa);
disp(ifa);
disp('b)');
fb = sin(sqrt(x));
ifb = int(fb);
disp(ifb);
disp('c)');
fc = cos(x)^4;
ifc = int(fc, 0, pi/2);
disp(ifc);
disp('d)');
fd = abs(x - 5);
ifd = int(fd, 0, 10);
disp(ifd);
disp('e)');
fe = tan(x);
ife = int(fe, pi/4, pi/3);
disp(ife);
