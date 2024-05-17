function I = Prime(a)
b = 1;
if a <= 1 || (mod(a, 2) == 0 && a ~= 2)
    b = 0;
else
    for i = 2 : sqrt(a)
        if mod(a, i) == 0
            b = 0;
        end
    end
end
I = b;
    