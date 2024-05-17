clear all
close all
clc

a = input('Nhap a: ');
e = input('Nhap muc xap xi: ');
S = Can_bac_hai(a, e);
if S == -1
    disp('Khong the tinh can bac hai cua so am');
else
    fprintf('sqrt(%0.0f) = %f\n', a, S);
end;