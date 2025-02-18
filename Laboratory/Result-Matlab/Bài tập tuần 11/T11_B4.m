clear all
close all
clc

syms x;

disp('Cau a:');
f = log(abs(x - 2));
a = 2;
if limit(f, x, a, 'Left') == limit(f, x, a, 'Right')
    fprintf('Ham so lien tuc tai a = %0.0f\n', a);
else
    fprintf('Ham so kh�ng lien tuc tai a = %0.0f\n', a);
end;
figure(1);
ezplot(f);

disp('Cau b:');
f1 = exp(x);
f2 = x^2;
a = 0;
if limit(f1, x, a, 'Left') == limit(f2, x, a, 'Right')
    fprintf('Ham so lien tuc tai a = %0.0f\n', a);
else
    fprintf('Ham so kh�ng lien tuc tai a = %0.0f\n', a);
end;
figure(2);
ezplot(f1);
hold on;
ezplot(f2);

disp('Cau c:');
f1 = (x^2 - x) / (x^2 - 1);
f2 = 1;
a = 1;
if limit(f1, x, a, 'Left') == limit(f1, x, a, 'Right') && limit(f1, x, a, 'Left') == f2
    fprintf('Ham so lien tuc tai a = %0.0f\n', a);
else
    fprintf('Ham so kh�ng lien tuc tai a = %0.0f\n', a);
end;
figure(2);
ezplot(f1);
hold on;
ezplot(1 + x - x);

disp('Cau d:');
f1 = cos(pi * x);
f2 = 0;
f3 = 1 - x^2;
a = 1;
if limit(f1, x, a, 'Left') == limit(f3, x, a, 'Right') && limit(f1, x, a, 'Left') == f2
    fprintf('Ham so lien tuc tai a = %0.0f\n', a);
else
    fprintf('Ham so kh�ng lien tuc tai a = %0.0f\n', a);
end;
figure(2);
ezplot(f1);
hold on;
ezplot(x - x);
hold on;
ezplot(f3);