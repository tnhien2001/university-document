%% Ho va ten:
% MSSV
% Ngay thi:
% Ca thi:
% Ma de: De 3
%%
clear all
close all
clc
%% Bai 1:
disp('Bai 1:');
disp('a)');
% Cach lam theo FOR:
S1 = 0;
for i = 2 : 2 : 100
    S1 = S1 + i;
end
fprintf('Tong tinh theo FOR: %d\n', S1);
% Cach lam theo WHILE
S2 = 0;
i = 2;
while (i <= 100)
    S2 = S2 + i;
    i = i + 2;
end
fprintf('Tong tinh theo WHILE: %d\n', S2);
disp('b)');
S = 1/(1*(1 + 2));
i = 1;
while (S < 1/2)
    i = i + 1;
    S = S + 1/(i*(i + 2));
end
fprintf('Gia tri n nho nhat sao cho tong >= 1/2: %d\n', i);
disp('c)');
n = input('Nhap so nguyen n: ');
fprintf('Giai thua tinh theo for: %d! = %d\n', n, giaithua_for(n));
fprintf('Giai thua tinh theo while: %d! = %d\n', n, giaithua_while(n));
%% Bai 2:
disp('Bai 2:');
a = input('Nhap canh a: ');
while (a <= 0)
    disp('Ban nhap canh sai. Vui long nhap lai!');
    a = input('Nhap canh a: ');
end
b = input('Nhap canh b: ');
while (b <= 0)
    disp('Ban nhap canh sai. Vui long nhap lai!');
    b = input('Nhap canh b: ');
end
[D, S] = Hinhchunhat(a, b);
fprintf('Chu vi cua hinh chu nhat canh %g, %g: %g\n', a, b, D);
fprintf('Dien tich cua hinh chu nhat canh %g, %g: %g\n', a, b, S);
%% Bai 3:
disp('Bai 3:');
disp('a)');
figure(1);
x = linspace(5, 10);
y = exp(-x) ./ (x + 1);
plot(x, y, '-.r', 'LineWidth', 2);
xlabel('Truc x');
ylabel('Truc y');
title('Ham so f(x) = $\frac{e^{-x}}{x+1}$', 'Interpreter', 'latex');
legend('$\frac{e^{-x}}{x+1}$', 'Interpreter', 'latex');
disp('b)');
figure(2);
x1 = linspace(-2*pi, 2*pi);
y1 = sin(x1 + pi/3);
y2 = cos(x1);
y3 = sin(x1 + pi);
plot(x1, y1, x1, y2, x1, y3);
xlabel('Truc x');
ylabel('Truc y');
title('Cac ham so sin(x + $\frac{\pi}{3}$), cos(x), sin(x + $\pi$)', 'Interpreter', 'latex');
legend('sin(x + $\frac{\pi}{3}$)', 'cos(x)', 'sin(x + $\pi$)', 'Interpreter', 'latex');
disp('c)');
figure(3);
u = linspace(-2*pi, 2*pi);
v = linspace(-2*pi, 2*pi);
[x, y] = meshgrid(u, v);
z = sin(2*pi*x) - sin(pi*y/2) + sin(pi*x + pi*y);
subplot(3, 2, 1);
plot3(x, y, z);
xlabel('Truc x');
ylabel('Truc y');
zlabel('Truc z');
title('Ham so theo plot3', 'Interpreter', 'latex');
subplot(3, 2, 2);
mesh(x, y, z);
xlabel('Truc x');
ylabel('Truc y');
zlabel('Truc z');
title('Ham so theo mesh', 'Interpreter', 'latex');
subplot(3, 2, 3);
meshc(x, y, z);
xlabel('Truc x');
ylabel('Truc y');
zlabel('Truc z');
title('Ham so theo meshc', 'Interpreter', 'latex');
subplot(3, 2, 4);
meshz(x, y, z);
xlabel('Truc x');
ylabel('Truc y');
zlabel('Truc z');
title('Ham so theo meshz', 'Interpreter', 'latex');
subplot(3, 2, 5);
surf(x, y, z);
xlabel('Truc x');
ylabel('Truc y');
zlabel('Truc z');
title('Ham so theo surf', 'Interpreter', 'latex');
subplot(3, 2, 6);
surfc(x, y, z);
xlabel('Truc x');
ylabel('Truc y');
zlabel('Truc z');
title('Ham so theo surfc', 'Interpreter', 'latex');
%% Bai 4:
disp('Bai 4:');
syms x;
a = double(int(x^2 + 7*x - 3, -5, 5));
a1 = int_mid(-5, 5, 10);
a2 = int_mid(-5, 5, 50);
a3 = int_mid(-5, 5, 100);
b = int_mid(-5, 5, 1);
i = 1;
while (abs(a - b)/abs(a) > 10^-4)
    i = i + 1;
    b = int_mid(-5, 5, i);
end
fprintf('Sai so so voi ham int voi n = 10: %f\n', abs(a - a1)/abs(a));
fprintf('Sai so so voi ham int voi n = 50: %f\n', abs(a - a2)/abs(a));
fprintf('Sai so so voi ham int voi n = 100: %f\n', abs(a - a3)/abs(a));
fprintf('Sai so so voi ham int la 10^-4 khi n = %d\n', i);