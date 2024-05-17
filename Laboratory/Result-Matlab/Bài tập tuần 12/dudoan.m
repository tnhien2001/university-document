function I = dudoan()
I = 0;
a = 'y';
while lower(a) == 'y'
    b = round(rand(1) * 6);
    fprintf('Gia tri xuc xac: %0.0f\n', b);
    a = input('Muon choi tiep hay khong (y/n): ');
    clc
    while lower(a) ~= 'y' && lower(a) ~= 'n'
        clc
        fprintf('Ban nhap khong dung, vui long nhap lai!\n');
        a = input('Muon choi tiep hay khong (y/n): ');
    end;
end;