function I = HamTinh_Tong_Matran(A, n)

if n == 1
    S = zeros(1, size(A, 2));
    for i = 1 : size(A, 2)
        for j = 1 : size(A, 1)
            S(1, i) = S(1, i) + A(j, i);
        end;
    end;
else
    S = zeros(size(A, 1), 1);
    for i = 1 : size(A, 1)
        for j = 1 : size(A, 2)
            S(i, 1) = S(i, 1) + A(i, j);
        end;
    end;
end;
I = S;