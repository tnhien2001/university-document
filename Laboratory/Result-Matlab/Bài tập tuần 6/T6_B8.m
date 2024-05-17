clear all
close all
clc

A = input('Nhap ma tran A: ');
if size(A, 1) == size(A, 2)
    Matran_TG_Tren(A);
    Matran_TG_Duoi(A);
    Matran_DuongCheo(A);
else
    disp('Ma tran khong vuong nen khong the lam');
end;