clear all
close all
clc

%% a)
A = round(rand(5) * 1000 - 500);
while det(A) == 0
    A = round(rand(5) * 1000 - 500);
end;
B = A;
%% b)
I = eye(size(A, 1));
for i = 1 : size(A, 1)
    for j = 1 : size(A, 1)
        if i == j
            I(j, :) = I(j, :) / A(j, i);
            A(j, :) = A(j, :) / A(j, i);
        else
            I(j, :) = I(j, :) + (-A(j, i)/A(i, i)) * I(i, :);
            A(j, :) = A(j, :) + (-A(j, i)/A(i, i)) * A(i, :);
        end;
    end;
end;
fprintf('Ma tran nghich dao cua A bang bien doi so cap\n');
disp(I);
%% c)
C = inv(B);
fprintf('Ma tran nghich dao cua A bang ham inv\n');
disp(C);