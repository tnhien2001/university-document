function I = Matran_DuongCheo(A)
A_D = zeros(size(A, 1));
for i = 1 : size(A, 1)
    A_D(i, i) = A(i, i);
end;
I = A_D;
fprintf('Ma tran duong cheo cua ma tran A la\n');
disp(A_D);