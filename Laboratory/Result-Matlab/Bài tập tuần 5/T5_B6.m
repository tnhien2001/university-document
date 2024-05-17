clear all
close all
clc

n = input('Nhap n: ');
k = input('Nhap k: ');
C = To_Hop(n, k);
fprintf('%0.0fC%0.0f = %0.0f\n', n, k, C);