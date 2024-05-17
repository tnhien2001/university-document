clear all
close all
clc

M = input('Nhap trong luong co the (kg): ');
h = input('Nhap chieu cao (m): ');
BMI = M/h^2;
if BMI < 18.5
    disp('Duoi chuan');
elseif BMI < 25
    disp('Chuan');
elseif BMI < 30
    disp('Thua can');
elseif BMI < 40
    disp('Beo');
else
    disp('Rat beo - can giam can ngay');
end;