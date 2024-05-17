clear all
close all
clc

x = input('Nhap vector: ');
n = input('Nhap chuan can tinh: ');
if n >= 0 & n <= 2
    P = TinhChuan_Vector(x, n);
    fprintf('Chuan %0.0f cua x la: %0.0f\n', n, P);
else
    disp('Khong the tinh chuan do');
end;
