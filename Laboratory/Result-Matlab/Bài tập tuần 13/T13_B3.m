clear all
close all
clc

x = input('Nhap gia tri x: ');
n = input('Nhap loai ham muon hien thi: ');
switch n
    case 1
        Ham_f1(x);
    case 2
        Ham_f2(x);
    case 3
        Ham_f3(x);
    otherwise
        disp('Khong co ham nay!');
end;