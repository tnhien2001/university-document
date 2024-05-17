function I = Xapxi_Tichphan(f, a, b, n)

dx = (b - a)/n;
S = 0;
if f == 1
    for i = 0 : n - 1
        x1 = a + dx * i;
        x2 = x1 + dx;
        xi = (1/2)*(x1 + x2);
        S = S + HamSo_f1(xi)*dx;
    end;
else
    for i = 0 : n - 1
        x1 = a + dx * i;
        x2 = x1 + dx;
        xi = (1/2)*(x1 + x2);
        S = S + HamSo_f2(xi)*dx;
    end;
end;
I = S;
    

