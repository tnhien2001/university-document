clear all
close all
clc

%% 2.1
A = [1 -2 3 9; -1 3 0 -4; 2 -5 5 17];
B = rref(A);
x = B(:, 4);
fprintf('Nghiem cua he phuong trinh\n');
fprintf('x = %0.0f\ty = %0.0f\tz = %0.0f\n', x(1), x(2), x(3));
%% 2.2
A = [3 3 4; 1 1 4; 2 -5 4];
B = [2; -2; 3];
x1 = A \ B;
fprintf('Nghiem cua he phuong trinh bang cong thuc\n');
fprintf('x = %0.03f\ty = %0.3f\tz = %0.3f\n', x1(1), x1(2), x1(3));
C = rref([A B]);
x2 = C(:, 4);
fprintf('Nghiem cua he phuong trinh bang ham MATLAB\n');
fprintf('x = %0.3f\ty = %0.3f\tz = %0.3f\n', x2(1), x2(2), x2(3));