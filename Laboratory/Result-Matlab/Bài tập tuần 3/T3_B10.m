clear all
close all
clc

F1 = 1;
F2 = 1;
S = 0;
F = F1;
for i = 1 : 10
    if i <= 2
        S = S + F;
    else
        F = F2 + F1;
        F1 = F2;
        F2 = F;
        S = S + F;
    end;
end;
fprintf('Tong 10 so Fibonacci dau tien: %0.0f\n', S);
F1 = 1;
F2 = 1;
F3 = 1;
ne = 3;
while F1 < 1000 & F3 < 1000
    F3 = F1 + F2;
    F1 = F2;
    F2 = F3;
    ne = ne + 1;
end;
fprintf('F(%0.0f) < 1000 va F(%0.0f) >= 1000.\n', ne, ne + 1);
F1 = 1;
F2 = 1;
F3 = 1;
S = 0;
for i = 2 : 50
    if mod(F3, 2) == 0 | mod(F3, 5) == 0
        S = S + F3;
    end;
    F3 = F2 + F1;
    F1 = F2;
    F2 = F3;
end;
fprintf('Tong la: %0.0f\n', F3);