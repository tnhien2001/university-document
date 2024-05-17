function I = Xapxi_Tichphan_Boi(f, a, b, c, d, m, n)
syms x y;
dx = (b - a) / m;
dy = (d - c) / n;
dA = dx * dy;
S = 0;
for i = 1 : m
    for j = 1 : n
        x1 = a + (i - 1/2) * dx;
        y1 = c + (j - 1/2) * dy;
        S = S + double(subs(f, [x y], [x1 y1])) * dA;
    end;
end;
I = S;