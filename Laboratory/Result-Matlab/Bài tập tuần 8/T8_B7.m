clear all
clc
close all

t = linspace(0, 2 * pi, 1000);
x = [4 + 3 * cos(11 * t)] .* cos(t);
y = [4 + 3 * cos(11 * t)] .* sin(t);
plot(x, y);
xlabel('X');
ylabel('Y');
axis square;