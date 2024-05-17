clear all
close all
clc

v = input('Nhap vector: ');
l = length(v);
S1 = 0;
S2 = 0;
S3 = 0;
S4 = 0;
S5 = 0;
for i = 1 : l
    if mod(v(i), 2) == 0
        S1 = S1 + v(i);
        if Prime(v(i)) == 1
            S3 = S3 + v(i);
        end;
    else
        S2 = S2 + v(i);
        if Prime(v(i)) == 1
            S4 = S4 + v(i);
        end;
    end;
    if Square(v(i)) == 1
        S5 = S5 + v(i);
    end;
end;
fprintf('Tong cac so chan la %0.0f\n', S1);
fprintf('Tong cac so le la %0.0f\n', S2);
fprintf('Tong cac so nguyen to chan la %0.0f\n', S3);
fprintf('Tong cac so nguyen to le la %0.0f\n', S4);
fprintf('Tong cac so chinh phuong la %0.0f\n', S5);