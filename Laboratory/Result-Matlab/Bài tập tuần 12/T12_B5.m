clear all
close all
clc

M = [1 2 3; 2 1 5; 4 6 4; 2 3 2];
fprintf('Gia tri ma tran M ban dau:\n');
disp(M);
for i = 1 : size(M, 1) - 1
    for j = i + 1 : size(M, 1)
        if M(j, 2) > M(i, 2)
            tam = M(j, :);
            M(j, :) = M(i, :);
            M(i, :) = tam;
        end;
    end;
end;
fprintf('Gia tri ma tran M luc sau:\n');
disp(M);