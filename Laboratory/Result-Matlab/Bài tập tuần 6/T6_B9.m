clear all
close all
clc

A = input('Nhap ma tran A: ');
B = input('Nhap ma tran B: ');
I = Tong_Matran(A, B);
if I == 0
    disp('Khong the cong hai ma tran nay duoc.');
else
    fprintf('Tong hai ma tran la\n');
    disp(I);
end;