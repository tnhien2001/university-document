function [I] = Tong_Matran(A, B)

a = size(A);
b = size(B);
if a(1) == b(1) && a(2) == b(2)
    C = zeros(a(1), a(2));
    for i = 1 : size(A, 1)
        for j = 1 : size(A, 2)
            C(i, j) = A(i, j) + B(i, j);
        end;
    end;
    I = C;
else
    I = zeros(1);
end;