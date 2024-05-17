clear all
close all
clc

S = 0;
n = 0;
while abs(S - pi/4) > 10^-9
    S = S + (-1)^n/(2*n + 1);
    n = n + 1;
end;
fprintf('n = %0.0f la xap xi cua pi\n', n); 
