clear all
close all
clc

t = linspace(0, 2 * pi, 500);
subplot(2, 2, 1);
x = 2 * sin(t);
y = 3 * cos(t);
plot(x, y, '.b');
title('Elip axis tight');
legend('x^2/4+y^2/9=1');
axis tight;

subplot(2, 2, 2);
x = 2 * sin(t);
y = 3 * cos(t);
plot(x, y, '-r');
title('Elip axis square');
legend('x^2/4+y^2/9=1');
axis square;

subplot(2, 2, 3);
x = 2 * sin(t);
y = 3 * cos(t);
plot(x, y, '>y');
title('Elip axis normal');
legend('x^2/4+y^2/9=1');
axis normal;

subplot(2, 2, 4);
x = 2 * sin(t);
y = 3 * cos(t);
plot(x, y, '<g');
title('Elip axis equal');
legend('x^2/4+y^2/9=1');
axis equal;