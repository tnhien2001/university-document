clear all
close all
clc

v = rand(1000000, 1);
S = 0;
for i = 1 : length(v)
    S = S + v(i)^2;
end;
fprintf('Tong binh phuong la: %0.0f\n', S);