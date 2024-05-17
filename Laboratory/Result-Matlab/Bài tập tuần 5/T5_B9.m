clear all
close all
clc

f = input('Nhap bai toan (1: a, 2: b): ');
a = input('Nhap can duoi: ');
b = input('Nhap can tren: ');
n = input('Nhap so khoang: ');

if f ~= [1, 2]
    disp('Khong co ham nay de tinh xap xi');
else
    P = Xapxi_Tichphan(f, a, b, n);
    fprintf('Vay gia tri xap xi tich phan la: %f', P);
end;