clear all
close all
clc

syms x;
disp('a)');
fa = x^3 - x^2 -6*x + 2;
dfa = diff(fa);
ddfa = diff(dfa);
disp(dfa);
disp(ddfa);
disp('b)');
fb = x^(1/3) - (1/3)*x;
dfb = diff(fb);
ddfb = diff(dfb);
disp(dfb);
disp(ddfb);
disp('c)');
fc = cos(2*x);
dfc = diff(fc);
ddfc = diff(dfc);
disp(dfc);
disp(ddfc);
disp('d)');
fd = x/(x^3 - 1);
dfd = diff(fd);
ddfd = diff(dfd);
disp(dfd);
disp(ddfd);
disp('e)');
fe = sqrt(x) - x^(1/4);
dfe = diff(fe);
ddfe = diff(dfe);
disp(dfe);
disp(ddfe);