clear all
close all
clc

A = [1 2 3 5 4; 5 6 8 9 11; 3 1 2 5 7; 9 2 5 6 12; 2 5 7 7 14];
B = [11 12 20 30 32; 1 2 36 3 5; 31 22 25 9 11; 5 6 7 10 12; 15 32 24 34 38];
%a)
a = size(A);
b = size(B);
if a(1) == b(1) && a(2) == b(2)
    C = zeros(a(1), a(2));
    for i = 1 : size(A, 1)
        for j = 1 : size(A, 2)
            C(i, j) = A(i, j) + B(i, j);
        end;
    end;
    fprintf('Ma tran tong chay bang for:\n');
    disp(C);
    S = A + B;
    fprintf('Ma tran tong chay bang ham MATLAB\n');
    disp(S);
    if C == S
        disp('Tong dung voi ham cua MATLAB');
    else
        disp('Tong sai voi ham cua MATLAB');
    end;
end;
%b)
if a(2) == b(1)
    D = zeros(a(1), b(2));
    for i = 1 : a(1)
        for j = 1 : b(2)
            for k = 1 : a(2)
                D(i, j) = D(i, j) + A(i, k) * B(k, j);
            end;
        end;
    end;
    fprintf('Ma tran tich chay bang for:\n');
    disp(D);
    P = A * B;
    fprintf('Ma tran tich chay bang ham MATLAB\n');
    disp(P);
    if D == P
        disp('Tich dung voi ham cua MATLAB');
    else
        disp('Tich sai voi ham cua MATLAB');
    end;
end;