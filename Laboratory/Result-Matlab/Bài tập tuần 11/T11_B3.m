clear all
close all
clc

syms x;
f = input('Nhap ham f: ');
n = input('Nhap bac dao ham: ');
x0 = input('Nhap diem can tinh dao ham: ');
h = input('Buoc nhay: ');
if n == 1 || n == 2
    g = Xapxi_daoham(f, n, x0, h);
    fprintf('Gia tri xap xi dao ham: %f\n', g);
    p = double(subs(diff(f, n), x0));
    fprintf('Gia tri dao ham bang MATLAB: %f\n', p);
else
    fprintf('Khong the tinh dao ham bac %0.0f\n', n);
end;
