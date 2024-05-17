clear all
close all
clc

a = input('Nhap a: ');
b = input('Nhap b: ');
x = a;
y = b;
r = mod(x, y);
while r ~= 0
    r = mod(x, y);
    x = y;
    y = r;
end;
fprintf('UCLN(%0.0f, %0.0f) = %0.0f\n', a, b, x);
fprintf('BCNN(%0.0f, %0.0f) = %0.0f\n', a, b, a*b/x);