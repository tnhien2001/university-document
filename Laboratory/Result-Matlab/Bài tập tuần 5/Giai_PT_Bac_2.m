function [X1, X2, N] = Giai_PT_Bac_2(a, b, c)

if a == 0
    Giai_PT_Bac_1(b, c);
else
    delta = b^2 - 4 * a * c;
    if delta < 0
        N = 0;
        X1 = Inf;
        X2 = Inf;
        disp('Phuong trinh vo nghiem');
    elseif delta == 0
        N = 1;
        X1 = -b/(2 * a);
        X2 = -b/(2 * a);
        fprintf('Phuong trinh co 1 nghiem duy nhat la: %0.3f\n', X1);
    else
        N = 2;
        X1 = (-b + sqrt(delta))/(2 * a);
        X2 = (-b - sqrt(delta))/(2 * a);
        disp('Phuong trinh co 2 nghiem phan biet la');
        fprintf('x1 = %0.3f\t x2 = %0.3f\n', X1, X2);
    end;
end;
        