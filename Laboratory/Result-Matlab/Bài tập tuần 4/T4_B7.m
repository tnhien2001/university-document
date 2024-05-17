clear all
close all
clc

n = input('Nhap vao so nguyen n: ');
if n == round(n)
    a = floor(n / 100);
    b = floor(n / 10) - a*10;
    c = mod(n, 100) - b * 10;
    switch a
        case 1
            fprintf('Mot tram');
        case 2
            fprintf('Hai tram');
        case 3
            fprintf('Ba tram');
        case 4
            fprintf('Bon tram');
        case 5
            fprintf('Nam tram');
        case 6
            fprintf('Sau tram');
        case 7
            fprintf('Bay tram');
        case 8
            fprintf('Tam tram');
        case 9
            fprintf('Chin tram');
        otherwise
            disp('Khong the doc so nay');
    end;
    if a >= 1 & a <= 9
        switch b
            case 0
                if c ~= 0
                    fprintf(' linh');
                end;
            case 1
                fprintf(' muoi');
            case 2
                fprintf(' hai muoi');
            case 3
                fprintf(' ba muoi');
            case 4
                fprintf(' bon muoi');
            case 5
                fprintf(' nam muoi');
            case 6
                fprintf(' sau muoi');
            case 7
                fprintf(' bay muoi');
            case 8
                fprintf(' tam muoi');
            case 9
                fprintf(' chin muoi');
            otherwise
                disp('Khong the doc so nay');
        end;
        switch c
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
                disp('Khong the doc so nay');
        end;
    end;
else
    disp('So nay khong phai so nguyen');
end;
