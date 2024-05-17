function [X, N] = Giai_PT_Bac_1(a, b)

if a == 0
    if b == 0
        N = inf;
        X = inf;
        disp('Phuong trinh vo so nghiem');
    else
        N = 0;
        X = NaN;
        disp('Phuong trinh vo nghiem');
    end;
else
    if b == 0
        x = 0;
    else
        x = -b / a;
    end;
    X = x;
    N = 1;
    fprintf('Phuong trinh co 1 nghiem la: %0.3f\n', X);
end;

