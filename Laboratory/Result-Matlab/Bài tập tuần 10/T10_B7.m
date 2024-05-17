clear all
close all
clc

syms x y z t;

disp('Cau a:');
f = sin(x^2 + y^2) / (x^2 + y^2);
k = size(symvar(f), 2);
S = 0;
for i = 1 : k
    if i == 1
        S = S + diff(f, x, 2);
    elseif i == 2
        S = S + diff(f, y, 2);
    elseif i == 3
        S = S + diff(f, z, 2);
    else
        S = S + diff(f, t, 2);
    end;
end;
fprintf('df = ');
disp(simplify(S));

disp('Cau b:');
f = exp(-y^2 - z^2) * cos(sqrt(1 + x - 7));
k = size(symvar(f), 2);
S = 0;
for i = 1 : k
    if i == 1
        S = S + diff(f, x, 2);
    elseif i == 2
        S = S + diff(f, y, 2);
    elseif i == 3
        S = S + diff(f, z, 2);
    else
        S = S + diff(f, t, 2);
    end;
end;
fprintf('df = ');
disp(simplify(S));

disp('Cau c:');
f = log((2 * x * y) / (x^2 + 2*y^2 + 3*z^2)) + (x * y * z * exp(x * y * z * t)) / sqrt(x^2 - y^2 + z^2 - t^2);
k = size(symvar(f), 2);
S = 0;
for i = 1 : k
    if i == 1
        S = S + diff(f, x, 2);
    elseif i == 2
        S = S + diff(f, y, 2);
    elseif i == 3
        S = S + diff(f, z, 2);
    else
        S = S + diff(f, t, 2);
    end;
end;
fprintf('df = ');
disp(simplify(S));