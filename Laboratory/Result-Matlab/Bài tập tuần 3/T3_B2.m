clear all
close all
clc

y = input('Nhap mot nam: ');
m = input('Nhap mot thang: ');

if mod(y, 400) == 0 || (mod(y, 4) == 0 && mod(y, 100) ~= 0)
    a = 1;
else
    a = 0;
end;
switch m
    case {1, 3, 5, 7, 8, 10, 12}
        fprintf('Thang %0.0f nam %0.0f co %0.0f ngay.\n', m, y, 31);
    case {4, 6, 9, 11}
        fprintf('Thang %0.0f nam %0.0f co %0.0f ngay.\n', m, y, 30);
    case 2
        if a == 1
            fprintf('Thang %0.0f nam %0.0f co %0.0f ngay.\n', m, y, 29);
        else
            fprintf('Thang %0.0f nam %0.0f co %0.0f ngay.\n', m, y, 28);
        end;
    otherwise
        fprintf('Khong ton tai thang %0.0f nam %0.0f.\n', m, y)
end;