clear all
close all
clc

A = [2 4 5/2; -3/4 2 1/4; 1/4 1/2 2];
B = [1 -1/2 3/4; 3/2 1/2 -2; 1/4 1 1/2];
%% a)
fprintf('A^-1*B^-1\n');
disp(A^-1 * B^-1);
fprintf('(AB)^-1\n');
disp((A * B)^-1);
fprintf('(BA)^-1\n');
disp((B * A)^-1);
disp('A^-1 * B^-1 bang (BA)^-1 nhung khac (AB)^-1');
%% b)
fprintf('(A^-1)^T\n');
disp((A^-1)');
fprintf('(A^T)^-1\n');
disp((A')^-1);
disp('(A^-1)^T bang (A^T)^-1');
