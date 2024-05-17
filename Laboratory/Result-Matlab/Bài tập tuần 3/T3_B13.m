clear all
close all
clc

fprintf('1. Bai toan exp\n');
fprintf('2. Bai toan sin\n');
fprintf('3. Bai toan cos\n');
n1 = input('Chon bai toan: ');
switch n1
    case 1
        x = input('Nhap gia tri can tinh: ');
        e = input('Nhap muc xap xi: ');
        S1 = 0;
        S2 = 0;
        n1 = 0;
        n2 = 0;
        for i = 0 : 10^6
            if abs(S1 - exp(x)) > e
                S1 = S1 + x^i/factorial(i);
            else
                n1 = i;
                break;
            end;
        end;
        while abs(S2 - exp(x)) > e
            S2 = S2 + x^n2/factorial(n2);
            n2 = n2 + 1;
        end;
        fprintf('n = %0.0f de xap xi e^%0.3f bang ham FOR\n', n1, x);
        fprintf('n = %0.0f de xap xi e^%0.3f bang ham WHILE\n', n2, x);
    case 2
        x = input('Nhap gia tri can tinh: ');
        e = input('Nhap muc xap xi: ');
        S1 = 0;
        S2 = 0;
        n1 = 0;
        n2 = 0;
        for i = 0 : 10^6
            if abs(S1 - exp(x)) > e
                S1 = S1 + ((-1)^i * x^(2*i + 1))/factorial(2*i + 1);
            else
                n1 = i;
                break;
            end;
        end;
        while abs(S2 - exp(x)) > e
            S2 = S2 + ((-1)^n2 * x^(2*n2 + 1))/factorial(2*n2 + 1);
            n2 = n2 + 1;
        end;
        fprintf('n = %0.0f de xap xi sin(%0.3f) bang ham FOR\n', n1, x);
        fprintf('n = %0.0f de xap xi sin(%0.3f) bang ham WHILE\n', n2, x);
    case 3
        x = input('Nhap gia tri can tinh: ');
        e = input('Nhap muc xap xi: ');
        S1 = 0;
        S2 = 0;
        n1 = 0;
        n2 = 0;
        for i = 0 : 10^6
            if abs(S1 - exp(x)) > e
                S1 = S1 + ((-1)^i * x^(2*i))/factorial(2*i);
            else
                n1 = i;
                break;
            end;
        end;
        while abs(S2 - exp(x)) > e
            S2 = S2 + ((-1)^n2 * x^(2*n2))/factorial(2*n2);
            n2 = n2 + 1;
        end;
        fprintf('n = %0.0f de xap xi cos(%0.3f) bang ham FOR\n', n1, x);
        fprintf('n = %0.0f de xap xi cos(%0.3f) bang ham WHILE\n', n2, x);
    otherwise
        disp('Khong co bai toan do');
end;