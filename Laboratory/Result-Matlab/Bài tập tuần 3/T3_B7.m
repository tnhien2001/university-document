clear all
close all
clc

x = input('Nhap vector: ');
n = input('Nhap chuan (inf = 3): ');
l = length(x);
S = 0;
switch n
    case 1
        for i = 1 : l
            S = S + abs(x(i));
        end;
        fprintf('Chuan %0.0f cua x: %0.5f\n', no, S);
    case 2
        for i = 1 : l
            S = S + x(i)^2;
        end;
        S = sqrt(S);
        fprintf('Chuan %0.0f cua x: %0.5f\n', no, S);
    case 3
        S = max(x);
        fprintf('Chuan vo cung cua x: %0.5f\n', S);
    otherwise
        disp('Khong ton tai chuan nay.');
end;