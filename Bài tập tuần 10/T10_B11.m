clear all
close all
clc

syms x y;
f = input('Nhap ham f: ');
a = input('Nhap can duoi x: ');
b = input('Nhap can tren x: ');
c = input('Nhap can duoi y: ');
d = input('Nhap can tren y: ');
m = input('Nhap so khoang x: ');
n = input('Nhap so khoang y: ');
h = Xapxi_Tichphan_Boi(f, a, b, c, d, m, n);
g = double(int(int(f, x, a, b), y, c, d));
fprintf('Ham xap xi: %f\n', h);
fprintf('Ham int cua MATLAB: %f\n', g);
if abs(h - g) < 10^-2
    disp('Ham xap xi gan dung voi ham int cua MATLAB');
else
    disp('Ham xap xi khong dung voi ham int cua MATLAB');
end;