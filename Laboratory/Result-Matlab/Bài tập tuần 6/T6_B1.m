clear all
close all
clc

A = [2 4 1; 6 7 2; 3 5 9];
%a)
x = A(1, :);
%b)
Y = A(2:3, :);
%c)
S_r = zeros(1, 3);
for i = 1 : size(A, 1)
    for j = 1 : size(A, 2)
        S_r(i) = S_r(i) + A(i, j);
    end;
end;
fprintf('S_r =');
disp(S_r);
%d)
S_c = zeros(1, 3);
for i = 1 : size(A, 1)
    for j = 1 : size(A, 2)
        S_c(i) = S_c(i) + A(j, i);
    end;
end;
fprintf('S_c =');
disp(S_c);
%e)
M = A(1, 1);
m = A(1, 1);
for i = 1 : size(A, 1)
    for j = 1 : size(A, 2)
        if A(i, j) > M
            M = A(i, j);
        end;
        if A(i, j) < m
            m = A(i, j);
        end;
    end;
end;
fprintf('Gia tri lon nhat cua ma tran A la: %0.0f\n', M);
fprintf('Gia tri nho nhat cua ma tran A la: %0.0f\n', m);
%f)
S = 0;
for i = 1 : size(A, 1)
    for j = 1 : size(A, 2)
        S = S + A(i, j);
    end;
end;
fprintf('Tong cac phan tu cua A la: %0.0f\n', S);