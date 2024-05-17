function I = Square(a)

b = 0;
for i = 1 : sqrt(a)
    if i^2 == a
        b = 1;
    end
end
I = b;