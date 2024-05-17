clear all
close all
clc

A = round(rand(1, 100000) * 100);
j = 1;
fprintf('Dung phep toan tren ma tran: ');
tic
C = A(mod(A, 3) == 0);
toc
fprintf('Dung for va if: ');
tic
for i = 1 : size(A, 2)
    if mod(A(1, i), 3) == 0
        B(1, j) = A(1, i);
        j = j + 1;
    end;
end;
toc