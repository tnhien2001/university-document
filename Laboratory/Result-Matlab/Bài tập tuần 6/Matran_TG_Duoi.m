function [I] = Matran_TG_Duoi(A)
A_L = A;
for i = 1 : size(A, 1) - 1
    for j = i + 1 : size(A, 2)
        A_L(i, j) = 0;
    end;
end;
I = A_L;
fprintf('Ma tran tam giac duoi cua ma tran A la\n');
disp(A_L);