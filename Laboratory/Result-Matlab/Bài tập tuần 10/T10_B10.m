clear all
close all
clc

syms x;
f = input('Nhap ham f: ');
n = input('Nhac bac da thuc: ');
x0 = input('Nhap lan can x0: ');
h = DaThuc_Taylor(f, n, x0)
if f == exp(x)
    g = exp(x0)
    p = double(subs(h, x0))
    if abs(p - g) < 10^-6
        disp('ham taylor gan giong ham MATLAB');
    else
        disp('ham taylor khong giong ham MATLAB');
    end;
elseif f == cos(x)
    g = cos(x0)
    p = double(subs(h, x0))
    if abs(p - g) < 10^-6
        disp('ham taylor gan giong ham MATLAB');
    else
        disp('ham taylor khong giong ham MATLAB');
    end;
elseif f == sin(x)
    g = cos(x0)
    p = double(subs(h, x0))
    if abs(p - g) < 10^-6
        disp('ham taylor gan giong ham MATLAB');
    else
        disp('ham taylor khong giong ham MATLAB');
    end;
elseif f == log(x)
    g = log(x0)
    p = double(subs(h, x0))
    if abs(p - g) < 10^-6
        disp('ham taylor gan giong ham MATLAB');
    else
        disp('ham taylor khong giong ham MATLAB');
    end;
end;