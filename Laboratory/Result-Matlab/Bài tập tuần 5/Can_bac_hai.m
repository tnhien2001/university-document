function I = Can_bac_hai(a, e)

if a >= 0
    x0 = a;
    x1 = (x0 + a/x0)/2;

    while abs(x1 - x0) > e
        x0 = x1;
        x1 = (x0 + a/x0)/2;
    end;
    I = x1;
else
    I = -1;
end;
    
