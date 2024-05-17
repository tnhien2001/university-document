clear all
close all
clc

k = input('Nhap so km: ');
if k <= 1
    a = k * 15000;
elseif k <= 5
    a = 15000 + (k - 1)*13500;
elseif k <= 120
    a = 15000 + 4*13500 + (k - 5) * 11000;
else
    a = (15000 + 4*13500 + (k - 5) * 11000)*0.9;
end;
fprintf('So tien khi di %0.0f km la: %0.0f\n', k, a);