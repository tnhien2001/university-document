clear all
close all
clc

syms x y n;

disp('Cau a:');
f = (x^2 - y^2) / (x^2 + y^2);
A = limit(subs(f, {x y}, {1/n 0}), n, inf);
B = limit(subs(f, {x y}, {1/n 1/n}), n, inf);
if A == B
    fprintf('Ham so co gioi han tai (0,0)\n');
else
    fprintf('Ham so khong co gioi han tai (0,0)\n');
end;

disp('Cau b:');
f = x^2 / (x^2 + y^2);
A = limit(subs(f, {x y}, {1/n 0}), n, inf);
B = limit(subs(f, {x y}, {1/n 1/n}), n, inf);
if A == B
    fprintf('Ham so co gioi han tai (0,0)\n');
else
    fprintf('Ham so khong co gioi han tai (0,0)\n');
end;

disp('Cau c:');
f = (x*y + x^2) / (x^2 + y^2);
A = limit(subs(f, {x y}, {1/n 0}), n, inf);
B = limit(subs(f, {x y}, {1/n 1/n}), n, inf);
if A == B
    fprintf('Ham so co gioi han tai (0,0)\n');
else
    fprintf('Ham so khong co gioi han tai (0,0)\n');
end;

disp('Cau d:');
f = (x^4 + y^4) / (x^2 + y^2);
A = limit(subs(f, {x y}, {1/n 0}), n, inf);
B = limit(subs(f, {x y}, {1/n 1/n}), n, inf);
if A == B
    fprintf('Ham so co gioi han tai (0,0)\n');
else
    fprintf('Ham so khong co gioi han tai (0,0)\n');
end;