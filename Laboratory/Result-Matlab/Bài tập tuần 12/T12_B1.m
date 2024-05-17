clear all
close all
clc

syms x;
P(1) = sym(1);
P(2) = x;
for i = 3 : 6
    P(i) = ((2 * i - 3) * x * P(i - 1) - (i - 2) * P(i - 2)) / (i - 1);
end;
for j = 1 : 6
    ezplot(P(j));
    hold on;
end;