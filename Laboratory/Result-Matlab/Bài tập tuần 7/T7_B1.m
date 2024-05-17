clear all
close all
clc

x = linspace(0, 4);
y1 = x;
y2 = x.^3;
y3 = exp(x);
y4 = exp(x.^2);
figure(1);
xlabel('X');
ylabel('Y');
hold on;
title('Do thi ham so y = x');
hold on;
plot(x, y1);
legend('y = x');
figure(2);
xlabel('X');
ylabel('Y');
hold on;
title('Do thi ham so y = x^3');
hold on;
plot(x, y2);
legend('y = x^3');
figure(3);
xlabel('X');
ylabel('Y');
hold on;
title('Do thi ham so y = e^x');
hold on;
plot(x, y3);
legend('y = e^x');
figure(4);
xlabel('X');
ylabel('Y');
hold on;
title('Do thi ham so y = e^{x^2}');
hold on;
plot(x, y4);
legend('y = e^{x^2}');
