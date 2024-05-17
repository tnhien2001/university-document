clear all
close all
clc

A = input('Nhap ma tran A: ');
B = input('Nhap ma tran B: ');
I = Tich_Matran(A, B);
if I == 0
    disp('Khong the nhan hai ma tran nay duoc.');
else
    fprintf('Tich hai ma tran la\n');
    disp(I);
end;