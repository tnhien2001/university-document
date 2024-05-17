function [I] = Matran_TG_Tren(A)
A_U = A;
for i = 1 : size(A, 1)
    for j = 1 : i - 1
        A_U(i, j) = 0;
    end;
end;
I = A_U;
fprintf('Ma tran tam giac tren cua ma tran A la\n');
disp(A_U);