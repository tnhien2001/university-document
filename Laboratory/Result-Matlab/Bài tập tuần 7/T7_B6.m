clear all
close all
clc

syms x;
%a)
figure(1);
subplot(1, 2, 1);
ezplot(abs(x^2 + 3*x));
subplot(1, 2, 2);
ezplot(x^3 - x - 2);
%b)
figure(2);
subplot(2, 1, 1);
ezplot(x^2);
subplot(2, 1, 2);
ezplot(sqrt(x));
%c)
figure(3);
subplot(2, 2, 1);
ezplot(exp(x));
subplot(2, 2, 2);
ezplot(log(x));
subplot(2, 2, 3);
ezplot(sin(x));
subplot(2, 2, 4);
ezplot(cos(x));