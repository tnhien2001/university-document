clear all
close all
clc

x = input('Nhap vector: ');
S1 = 0;
S2 = 0;
S3 = 0;
for i = 1 : length(x)
    if x(i) > 0
        S1 = S1 + 1;
    elseif x(i) < 0
        S2 = S2 + 1;
    else
        S3 = S3 + 1;
    end;
end;
fprintf('So phan tu duong la: %0.0f\n', S1);
fprintf('So phan tu am la: %0.0f\n', S2);
fprintf('So phan tu bang 0 la: %0.0f\n', S3);