function I = TinhChuan_Vector(x, n)

switch n
    case 1
        S = norm(x, 1);
    case 2
        S = norm(x, 2);
    case 0
        S = norm(x, inf);
end;
I = S;