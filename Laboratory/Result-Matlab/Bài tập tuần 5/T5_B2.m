clear all
close all
clc

x = input('Nhap gia tri he so: ');
f = HamSo_f(x);
g = HamSo_g(x);
h = HamSo_h(x);
fprintf('f(%0.3f) = %f\n', x, f);
fprintf('g(%0.3f) = %f\n', x, g);
fprintf('h(%0.3f) = %f\n', x, h);