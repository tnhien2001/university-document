clear all
close all
clc

disp('Cau a');
S1 = 0;
S2 = 0;
n1 = 1;
n2 = 1;
for i = 1 : 10^6
    if S1 < 4
        S1 = S1 + 5/(i*(i + 1));
    else
        n1 = i;
        break;
    end;
end;
while S2 < 4
    S2 = S2 + 5/(n2*(n2 + 1));
    n2 = n2 + 1;
end;
fprintf('n = %0.0f xap xi cau a bang ham FOR\n', n1);
fprintf('n = %0.0f xap xi cau a bang ham WHILE\n', n2);
disp('Cau b');
S1 = 0;
S2 = 0;
n1 = 1;
n2 = 1;
for i = 1 : 10^6
    if S1 <= 1/2
        S1 = S1 + 1/(i*(i + 3));
    else
        n1 = i;
        break;
    end;
end;
while S2 <= 1/2
    S2 = S2 + 1/(n2*(n2 + 3));
    n2 = n2 + 1;
end;
fprintf('n = %0.0f xap xi cau b bang ham FOR\n', n1 - 1);
fprintf('n = %0.0f xap xi cau b bang ham WHILE\n', n2 - 1);
disp('Cau c');
S1 = 0;
S2 = 0;
n1 = 1;
n2 = 1;
for i = 1 : 10^6
    if S1 <= 10
        S1 = S1 + i^2/(i^2 + 1);
    else
        n1 = i;
        break;
    end;
end;
while S2 <= 10
    S2 = S2 + n2^2/(n2^2 + 1);
    n2 = n2 + 1;
end;
fprintf('n = %0.0f xap xi cau c bang ham FOR\n', n1 - 1);
fprintf('n = %0.0f xap xi cau c bang ham WHILE\n', n2 - 1);
