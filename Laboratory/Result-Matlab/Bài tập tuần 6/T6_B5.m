clear all
close all
clc

A = [1 2 3 4; 2 4 6 8; 3 6 9 12];
fprintf('Ma tran A\n');
disp(A);
A(3, :) = A(3, :) + (-3)*A(1, :);
fprintf('Cong dong 3 voi (-3) lan dong 1\n');
disp(A);
A(2, :) = A(2, :) + (-2)*A(1, :);
fprintf('Cong dong 2 voi (-2) lan dong 1\n');
disp(A);