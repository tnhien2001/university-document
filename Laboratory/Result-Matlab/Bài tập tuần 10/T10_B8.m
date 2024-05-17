clear all
close all
clc

syms x y;

disp('Cau a:');
f = exp(-x^2);
i = int(f, x, -inf, inf);
fprintf('Tich phan = ');
disp(i);

disp('Cau b:');
f = exp(-x^2 - y^2);
i = int(int(f, x, -inf, inf), y, -inf, inf);
fprintf('Tich phan = ');
disp(i);