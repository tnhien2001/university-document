clear all
close all
clc

a = input('Nhap so nguyen a: ');
b = input('Nhap so nguyen b: ');

if round(a) == a && round(b) == b
    V = Taovector(a, b);
    fprintf('Mang trong doan [%0.0f, %0.0f] = ', a, b);
    fprintf('%0.0f\t', V);
    fprintf('\n');
else
    disp('So nhap vao khong phai so nguyen nen khong thuc hien duoc!');
end;