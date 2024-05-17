function P = DaThuc_Taylor(f, n, x0)

syms x;
S = subs(f, x0);
for k = 1 : n
    S = S + (subs(diff(f, k), x0) * (x - x0)^k) / factorial(k);
end;
P = S;