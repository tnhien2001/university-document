clear all
close all
clc

n = input('Nhap n: ');
k = input('Nhap k: ');
C = factorial(n)/(factorial(k)*factorial(n - k));
fprintf('%0.0fC%0.0f = %0.0f\n', n, k, C);