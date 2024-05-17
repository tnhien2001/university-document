clear all
close all
clc

a = input('Nhap so a: ');
x = a;
y = (x + a/x)/2;
e = 10^-6;
while abs(y - x) >= e
    x = y;
    y = (x + a/x)/2;
end;
fprintf('sqrt(%0.0f) = %0.6f\n', a, y);
    