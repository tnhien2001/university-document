function [I] = Tich_Matran(A, B)

a = size(A);
b = size(B);
if a(2) == b(1)
    D = zeros(a(1), b(2));
    for i = 1 : a(1)
        for j = 1 : b(2)
            for k = 1 : a(2)
                D(i, j) = D(i, j) + A(i, k) * B(k, j);
            end;
        end;
    end;
    I = D;
else
    I = zeros(1);
end;