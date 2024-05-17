clear all
close all
clc

syms n;

disp('Cau a:');
a = sqrt(n - 3);
for i = 0 : 4
    fprintf('%f\t', double(subs(a, i)));
end;
fprintf('\n');
fprintf('Gioi han cua ham so la: ');
disp(limit(a, n, inf));

disp('Cau b:');
a = (n + 1) / (3 * n - 1);
for i = 0 : 4
    fprintf('%f\t', double(subs(a, i)));
end;
fprintf('\n');
fprintf('Gioi han cua ham so la: ');
disp(limit(a, n, inf));

disp('Cau c:');
a = cos(n * pi / 6);
for i = 0 : 4
    fprintf('%f\t', double(subs(a, i)));
end;
fprintf('\n');
fprintf('Gioi han cua ham so la: ');
disp(limit(a, n, inf));

disp('Cau d:');
a = 3;
for i = 0 : 4
    fprintf('%f\t', 2 * a - 1);
end;
fprintf('\n');
fprintf('Gioi han cua ham so la:');
if (2 * a - 1) > a
    disp(Inf);
end;