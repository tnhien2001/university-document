clear all
close all
clc

syms x y;
disp('a)');
fa = x^2 + x*y + y^2 + y;
dfax = diff(fa, x);
ddfaxx = diff(dfax, x);
ddfaxy = diff(dfax, y);
dfay = diff(fa, y);
ddfayy = diff(dfay, y);
disp(dfax);
disp(ddfaxx);
disp(ddfaxy);
disp(dfay);
disp(ddfayy);
disp('b)');
fb = x*exp(-2*x^2 - 2*y^2);
dfbx = diff(fb, x);
ddfbxx = diff(dfbx, x);
ddfbxy = diff(dfbx, y);
dfby = diff(fb, y);
ddfbyy = diff(dfby, y);
disp(dfbx);
disp(ddfbxx);
disp(ddfbxy);
disp(dfby);
disp(ddfbyy);
disp('c)');
fc = exp(x)*cos(y);
dfcx = diff(fc, x);
ddfcxx = diff(dfcx, x);
ddfcxy = diff(dfcx, y);
dfcy = diff(fc, y);
ddfcyy = diff(dfcy, y);
disp(dfcx);
disp(ddfcxx);
disp(ddfcxy);
disp(dfcy);
disp(ddfcyy);