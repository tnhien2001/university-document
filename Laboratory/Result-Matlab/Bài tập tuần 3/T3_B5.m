clear all
close all
clc

L = input('Nhap chieu dai (m): ');
unit = input('Nhap unit (km, hm, ...): ');
switch unit
    case 'km'
        L1 = L/1000;
        fprintf('L1 = %0.5f\n', L1);
    case 'hm'
        L1 = L/100;
        fprintf('L1 = %0.5f\n', L1);
    case 'dam'
        L1 = L/10;
        fprintf('L1 = %0.5f\n', L1);
    case 'dm'
        L1 = L*10;
        fprintf('L1 = %0.5f\n', L1);
    case 'cm'
        L1 = L*100;
        fprintf('L1 = %0.5f\n', L1);
    case 'mm'
        L1 = L*1000;
        fprintf('L1 = %0.5f\n', L1);
    otherwise
        fprintf('Khong the doi %0.0f sang unit nay.\n', L);
end;