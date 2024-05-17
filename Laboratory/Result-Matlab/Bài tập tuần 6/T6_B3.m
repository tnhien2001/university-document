clear all
close all
clc

A = [1 2 3; 5 6 9; 10 11 15]
%a)
A_U = A;
for i = 2 : size(A, 1)
    for j = 1 : i - 1
        A_U(i, j) = 0;
    end;
end;
fprintf('Ma tran tam giac tren cua ma tran A la\n');
disp(A_U);
%b)
A_L = A;
for i = 1 : size(A, 1) - 1
    for j = i + 1 : size(A, 2)
        A_L(i, j) = 0;
    end;
end;
fprintf('Ma tran tam giac duoi cua ma tran A la\n');
disp(A_L);
%c)
A_D = A;
for i = 1 : size(A, 1)
    for j = 1: size(A, 2)
        if i ~= j
            A_D(i, j) = 0;
        end;
    end;
end;
fprintf('Ma tran duong cheo cua ma tran A la\n');
disp(A_L);