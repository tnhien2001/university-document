clear all
close all
clc

syms x y;
disp('Cau a:');
figure(1);
ezplot(y == 2*x^2);
hold on;
ezplot(y == 1 + x^2);
A = solve('2*x^2 = 1 + x^2');
a = int(abs(int(1, y, 2*x^2, 1 + x^2)), x, double(min(A)), double(max(A)));
fprintf('S = %f\n', double(a));
disp('Cau b:');
figure(2);
ezplot(y == 2*x);
hold on;
ezplot(y == x^2);
A = solve('2*x = x^2');
a = int(abs(int(1, y, 2*x, x^2)), x, double(min(A)), double(max(A)));
fprintf('S = %f\n', double(a));
disp('Cau c:');
figure(3);
ezplot(y == x - 1);
hold on;
ezplot(y^2 == 2*x + 6);
A = solve('y + 1 = (y^2 - 6)/2');
a = int(abs(int(1, x, y + 1, (y^2 - 6)/2)), y, double(min(A)), double(max(A)));
fprintf('S = %f\n', double(a));
disp('Cau d:');
figure(4);
ezplot(y == x);
hold on;
ezplot(y == x^3);
A = solve('x = x^3');
a = int(abs(int(1, y, x, x^3)), x, double(min(A)), double(max(A)));
fprintf('S = %f\n', double(a));
disp('Cau e:');
figure(5);
ezplot(y == x - 2);
hold on;
ezplot(y^2 == x);
A = solve('y + 2 = y^2');
a = int(abs(int(1, x, y + 2, y^2)), y, double(min(A)), double(max(A)));
fprintf('S = %f\n', double(a));