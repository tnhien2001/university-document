function I = DT_TamGiac_Vuong(a, b, c)
t = 0;
if a^2 + b^2 == c^2 || a^2 + c^2 == b^2 || b^2 + c^2 == a^2
    t = 1;
end;
if t == 1
    p = (a + b + c)/2;
    S = sqrt(p*(p - a)*(p - b)*(p - c));
    I = S;
    fprintf('Dien tich tam giac vuong la: %0.0f\n', I);
else
    disp('Day khong phai la tam giac vuong');
end;