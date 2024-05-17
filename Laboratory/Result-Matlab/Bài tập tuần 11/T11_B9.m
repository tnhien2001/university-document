clear all
close all
clc

syms n r;

disp('Cau a:');
f = n * r ^ n;
fprintf('Chuoi: ');
disp(f);
for i = -1 : 2
    g = symsum(subs(f, r, i), n, 1, inf);
    if g == Inf || g == NaN
        fprintf('Chuoi nay voi r = %0.0f khong hoi tu\n', i);
    else
        fprintf('Chuoi nay voi r = %0.0f  hoi tu\n', i);
    end;
end;
fprintf('\n');

disp('Cau b:');
f = 1 / n ^ r;
fprintf('Chuoi: ');
disp(f);
for i = -1 : 2
    g = symsum(subs(f, r, i), n, 1, inf);
    if g == Inf || g == NaN
        fprintf('Chuoi nay voi r = %0.0f khong hoi tu\n', i);
    else
        fprintf('Chuoi nay voi r = %0.0f  hoi tu\n', i);
    end;
end;