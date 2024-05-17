clear all
close all
clc

syms x;
f = input('Nhap ham f: ');
a = input('Nhap can duoi: ');
b = input('Nhap can tren: ');
N = input('Nhap so diem: ');
g = Xapxi_tichphan(f, a, b, N);
fprintf('Tich phan = %f', g);
double(int(exp(x), 0, pi))