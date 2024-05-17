clear all
close all
clc
format long

%% a)
figure(1);
syms x k;
x1 = linspace(-2 * pi, 2 * pi);
f1 = x1 .* sin(x1);
g1 = x1 .* cos(x1);
plot(x1, f1, x1, g1);
f = x * sin(x);
g = x * cos(x);
y = solve(f == g, x);
y(2) = y(2) + k * pi;
i = 0;
j = 0;
while double(subs(y(2), i)) > -2 * pi
    i = i - 1;
end;
while double(subs(y(2), j)) < 2 * pi
    j = j + 1;
end;
p = 0;
for h = i + 1 : j - 1
    str = strcat('x', num2str(p));
    if double(subs(y(2), h) < double(y(1)) && double(subs(y(2), h + 1) > double(y(1))))
        text(double(subs(y(2), h)), double(subs(f, subs(y(2), h))), str);
        p = p + 1;
        str = strcat('x', num2str(p));
        text(double(y(1)), double(subs(f, y(1))), str);
    else
        text(double(subs(y(2), h)), double(subs(f, subs(y(2), h))), str);
    end;
    p = p + 1;
end;
%% b)
figure(2);
t1 = linspace(-20, 20, 500);
x2 = linspace(-100, 100);
x1 = 5 * (cos(t1) + t1.* sin(t1));
y1 = 5 * (sin(t1) - t1.* cos(t1));
y2  = x2;
plot(x1, y1, x2, y2);

syms t;
x = 5 * (cos(t) + t * sin(t));
y = 5 * (sin(t) - t * cos(t));
f = x - y;
j = 1;
for i = -20 : 3 : 17
    a = i;
    b = i + 3;
    c = (a + b)/2;
    if subs(f, a) * subs(f, b) < 0
        c = (a + b)/2;
        e = abs(subs(f, c));
        while e > 10^-12
            if subs(f, a) * subs(f, c) < 0
                b = c;
            else
                a = c;
            end;
            c = (a + b)/2;
            e = abs(subs(f, c));
        end;
        A(j) = double(subs(x, c));
        B(j) = double(subs(y, c));
        j = j + 1;
    end;
end;
A = sort(A);
B = sort(B);
for k = 0 : j - 2
    str = strcat('x', num2str(k));
    text(A(k + 1), B(k + 1), str);
end;