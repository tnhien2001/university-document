clear all
close all
clc

A = round(rand(4)*20 - 10);
fprintf('Ma tran trong khoang [-10, 10]\n');
disp(A);
%a)
A = A + 15;
fprintf('Cong moi phan tru cua ma tran cho 15\n');
disp(A);
%b)
A = A.^2;
fprintf('Binh phuong moi phan tu cua ma tran\n');
disp(A);
%c)
A(1 : 2, :) = A(1 : 2, :) + 10;
fprintf('Cong them 10 vao cac phan tu o dong 1 va dong 2\n');
disp(A);
%d)
A(:, [1, 4]) = A(:, [1, 4]) + 10;
fprintf('Cong them 10 vao cac phan tu o cot 1 va cot 4\n');
disp(A);
%e)
A = A.^-1;
fprintf('Tinh nghich dao moi phan tu\n');
disp(A);
%f)
A = A.^(1/2);
fprintf('Lay can bac 2 moi phan tu\n');
disp(A);