clear all
close all
clc

n = input('Nhap kich thuoc mang: ');
A = floor(rand(1, n) * 100);
fprintf('Ma tran A: ', A);
fprintf('%0.0f\t', A);
fprintf('\n');

disp('Ma tran xoa het so 2:');
%% 1.1
j = 1;
for i = 1 : size(A, 2)
    if A(i) ~= 2
        B(j) = A(i);
        j = j + 1;
    end;
end;
fprintf('Ma tran B: ');
fprintf('%0.0f\t', B);
fprintf('\n');
%% 1.2
C = A(A ~= 2);
fprintf('Ma tran C: ');
fprintf('%0.0f\t', C);
fprintf('\n');


disp('Ma tran xoa het phan tu chia het cho 2 va 3:');
%% 2.1
j = 1;
for i = 1 : size(A, 2)
    if mod(A(i), 2) ~= 0 && mod(A(i), 3) ~= 0
        D(j) = A(i);
        j = j + 1;
    end;
end;
fprintf('Ma tran D: ');
fprintf('%0.0f\t', D);
fprintf('\n');
%% 2.2
E = A(mod(A, 2) ~= 0);
E = E(mod(E, 3) ~= 0);
fprintf('Ma tran E: ');
fprintf('%0.0f\t', E);
fprintf('\n');

disp('Ma tran xoa het phan tu la so nguyen to:');
%% 3.1
j = 1;
for i = 1 : size(A, 2)
    if Prime(A(i)) == 0
        F(j) = A(i);
        j = j + 1;
    end;
end;
fprintf('Ma tran F: ');
fprintf('%0.0f\t', F);
fprintf('\n');
%% 3.2
G = A(isprime(A) == 0);
fprintf('Ma tran G: ');
fprintf('%0.0f\t', G);
fprintf('\n');