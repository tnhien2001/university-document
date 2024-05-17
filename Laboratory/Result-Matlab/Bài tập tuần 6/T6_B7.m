clear all
close all
clc

A = input('Nhap ma tran: ');
n = input('Nhap chi so: ');
if n == 1
    S = HamTinh_Tong_Matran(A, n);
    fprintf('Tong ma tran theo cot\n');
    disp(S);
elseif n == 2
    S = HamTinh_Tong_Matran(A, n);
    fprintf('Tong ma tran theo dong\n');
    disp(S);
else
    disp('Khong the tinh tong ma tran theo chi so nay.');
end;