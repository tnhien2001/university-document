clear all
close all
clc

n = input('Nhap so nguyen n: ');
if n == round(n)
    a = floor(n / 10);
    b = mod(n, 10);
    switch a
        case 1
            fprintf('Muoi');
        case 2
            fprintf('Hai muoi');
        case 3
            fprintf('Ba muoi');
        case 4
            fprintf('Bon muoi');
        case 5
            fprintf('Nam muoi');
        case 6
            fprintf('Sau muoi');
        case 7
            fprintf('Bay muoi');
        case 8
            fprintf('Tam muoi');
        case 9
            fprintf('Chin muoi');
        otherwise
            disp('Khong the doc so nay');
    end;
    if a >= 1 & a <= 9
        switch b
            case 0
                fprintf('\n');
            case 1
                fprintf(' mot\n');
            case 2
                fprintf(' hai\n');
            case 3
                fprintf(' ba\n');
            case 4
                fprintf(' bon\n');
            case 5
                fprintf(' lam\n');
            case 6
                fprintf(' sau\n');
            case 7
                fprintf(' bay\n');
            case 8
                fprintf(' tam\n');
            case 9
                fprintf(' chin\n');
            otherwise
                disp('Khong doc duoc so nay');
        end;
    end;
else
    disp('So nay khong phai so nguyen');
end;
        
