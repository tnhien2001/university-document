clear all
close all
clc

syms x k;

disp('Cau a:');
f = 1 / (1 + exp(1 / x));
figure(1);
ezplot(f);
y = 0;
for i = -5 : 5
    if limit(f, i) == Inf
        y = i;
    end;
end;
fprintf('Diem bat lien tuc cua ham so nay la: %0.0f\n', y);

disp('Cau b:');
f = log(tan(x) ^ 2);
figure(2);
ezplot(f);
y = 0;
for i = -5 : 1 : 5
    if abs(limit(f, i)) == Inf
        y = i + k * pi;
    end;
end;
for j = -2 : 2
    fprintf('Diem bat lien tuc cua ham so nay la: %f\n', double(subs(y, j)));
end;