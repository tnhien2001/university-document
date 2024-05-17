clear all
close all
clc

theta = linspace(-2 * pi, 2 * pi, 500);

figure(1);
r = cos(2 * theta);
polar(theta, r);

figure(2);
r = 2 * cos(theta);
polar(theta, r);

figure(3);
r = 1 + cos(theta);
polar(theta, r);

figure(4);
r = sin(2 * theta) .* cos(2 * theta);
polar(theta, r);