clear all
close all
clc

syms x y z;

disp('Cau a:');
u = [sin(x) + cos(y), x^2 + 3*x - 4, log(x) + y^2 + sqrt(z)];
for i =1 : 3
    if i == 1
        J(:, i) = diff(u, x);
    elseif i == 2
        J(:, i) = diff(u, y);
    else
        J(:, i) = diff(u, z);
    end
end;
fprintf('Ma tran Jacobi:\n');
disp(simplify(J));

disp('Cau b:');
u = [5*x^3 - x^2*y^2 + tan(x), exp(x^2 + y^2 + z^2), x^3 * y * z^2 - x^2 * y - x^3 * z];
for i =1 : 3
    if i == 1
        J(:, i) = diff(u, x);
    elseif i == 2
        J(:, i) = diff(u, y);
    else
        J(:, i) = diff(u, z);
    end
end;
fprintf('Ma tran Jacobi:\n');
disp(simplify(J));

disp('Cau c:');
u = [cos(x) + sin(x) + tan(x), log(x - y + z), x^3 - y^3 + z^3];
for i =1 : 3
    if i == 1
        J(:, i) = diff(u, x);
    elseif i == 2
        J(:, i) = diff(u, y);
    else
        J(:, i) = diff(u, z);
    end
end;
fprintf('Ma tran Jacobi:\n');
disp(simplify(J));

disp('Cau d:');
u = [2*x^2 + 3*y^2 + 2*x*y*z, cos(x * y) * sin(x * z) * tan(y * z), exp(x + y) * log(x * y * z)];
for i =1 : 3
    if i == 1
        J(:, i) = diff(u, x);
    elseif i == 2
        J(:, i) = diff(u, y);
    else
        J(:, i) = diff(u, z);
    end;
end;
fprintf('Ma tran Jacobi:\n');
disp(simplify(J));

disp('Cau e:');
u = [sqrt(x + log(y * z)), x / sqrt(z^2 + y^3), (y * z) / sqrt(x^2 - 1)];
for i =1 : 3
    if i == 1
        J(:, i) = diff(u, x);
    elseif i == 2
        J(:, i) = diff(u, y);
    else
        J(:, i) = diff(u, z);
    end;
end;
fprintf('Ma tran Jacobi:\n');
disp(simplify(J));