%% Ho va ten:
% MSSV
% Ngay thi:
% Ca thi:
% Ma de: De 4
%%
clear all
close all
clc
%% Bai 1:
disp('Bai 1:');
disp('a)');
% Cach lam theo FOR:
S1 = 0;
for i = 1 : 10
    if (mod(i, 2) ~= 0)
        S1 = S1 + i;
    else
        S1 = S1 + i^2;
    end
end
fprintf('Tong tinh theo FOR: %d\n', S1);
% Cach lam theo WHILE
S2 = 0;
i = 1;
while (i <= 10)
    if (mod(i, 2) ~= 0)
        S2 = S2 + i;
    else
        S2 = S2 + i^2;
    end
    i = i + 1;
end
fprintf('Tong tinh theo WHILE: %d\n', S2);
disp('b)');
S = 1^2/(1^1 + 1);
i = 1;
while (S < 10)
    i = i + 1;
    S = S + i^2/(i^2 + 1);
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
n = input('Nhap n(1, 2): ');
S = Hinhchunhat(a, b, n);
if (n == 1)
    fprintf('Dien tich cua hinh chu nhat canh %g, %g: %g\n', a, b, S);
elseif (n == 2)
    fprintf('Chu vi cua hinh chu nhat canh %g, %g: %g\n', a, b, S);
else
    fprintf('Khong co lua chon nay.\n');
end
%% Bai 3:
disp('Bai 3:');
disp('a)');
figure(1);
x = linspace(pi, 2*pi);
y = sin(x) ./ x;
plot(x, y, '-y', 'LineWidth', 3);
xlabel('Truc x');
ylabel('Truc y');
title('Ham so f(x) = $\frac{sin(x)}{x}$', 'Interpreter', 'latex');
legend('$\frac{sin(x)}{x}$', 'Interpreter', 'latex');
disp('b)');
figure(2);
x1 = linspace(-2*pi, 2*pi);
y1 = sin(x1 + pi/2);
y2 = cos(x1 - pi);
y3 = sin(x1);
plot(x1, y1, x1, y2, x1, y3);
xlabel('Truc x');
ylabel('Truc y');
title('Cac ham so sin(x + $\frac{\pi}{2}$), cos(x - $\pi$), sin(x)', 'Interpreter', 'latex');
legend('sin(x + $\frac{\pi}{2}$)', 'cos(x + $\pi$)', 'sin(x)', 'Interpreter', 'latex');
disp('c)');
figure(3);
u = linspace(-2, 2);
v = linspace(-2, 2);
[x, y] = meshgrid(u, v);
z = exp(x) - x.^3 + 2*y + 4*cos(pi*x);
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
a = double(int(x^3 - 4*x + 1, 1, 4));
a1 = int_tra(1, 4, 5);
a2 = int_tra(1, 4, 20);
a3 = int_tra(1, 4, 50);
b = int_tra(1, 4, 1);
i = 1;
while (abs(a - b)/abs(a) > 10^-4)
    i = i + 1;
    b = int_tra(1, 4, i);
end
fprintf('Sai so so voi ham int voi n = 5: %f\n', abs(a - a1)/abs(a));
fprintf('Sai so so voi ham int voi n = 20: %f\n', abs(a - a2)/abs(a));
fprintf('Sai so so voi ham int voi n = 50: %f\n', abs(a - a3)/abs(a));
fprintf('Sai so so voi ham int la 10^-4 khi n = %d\n', i);