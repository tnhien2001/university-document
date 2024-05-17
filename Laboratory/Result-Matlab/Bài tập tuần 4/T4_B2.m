clear all
close all
clc

n = input('Nhap n: ');
for i = 0 : n
    for j = 0 : i
        C = factorial(i)/(factorial(j)*factorial(i - j));
        fprintf('%0.0f\t', C);
    end;
    fprintf('\n');
end;