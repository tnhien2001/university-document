clear all
close all
clc

disp('Cau a');
S1 = 0;
S2 = 0;
for i = 1 : 4 : 9999
    S1 = S1 + i;
end;
for i = 3 : 4 : 9999
    S2 = S2 + i^2;
end;
fprintf('S1 = %0.0f\n', S1 + S2);
disp('Cau b');
S1 = 0;
S2 = 0;
for i = 2 : 4 : 9998
    S1 = S1 + i;
end;
for i = 4 : 4 : 9998
    S2 = S2 + i^2;
end;
fprintf('S2 = %0.0f\n', S1 + S2);