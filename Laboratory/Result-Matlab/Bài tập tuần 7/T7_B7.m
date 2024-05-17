clear all
close all
clc

x = linspace(-2, 2);
y = linspace(-2, 2);
[X, Y] = meshgrid(x, y);
%% a)
% figure(1);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so 3x - x^3 - 2y^2 + y^4');
% hold on;
% z = 3*X - X.^3 - 2*Y.^2 + Y.^4;
% plot3(X, Y, z);
% legend('z = 3x - x^3 - 2y^2 + y^4');
% view(45,45);
% 
% figure(2);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so 3x - x^3 - 2y^2 + y^4');
% hold on;
% mesh(X, Y, z);
% legend('z = 3x - x^3 - 2y^2 + y^4');
% view(45,45);
% 
% figure(3);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so 3x - x^3 - 2y^2 + y^4');
% hold on;
% meshc(X, Y, z);
% legend('z = 3x - x^3 - 2y^2 + y^4');
% view(45,45);
% 
% figure(4);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so 3x - x^3 - 2y^2 + y^4');
% hold on;
% meshz(X, Y, z);
% legend('z = 3x - x^3 - 2y^2 + y^4');
% view(45,45);
% 
% figure(5);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so 3x - x^3 - 2y^2 + y^4');
% hold on;
% surf(X, Y, z);
% legend('z = 3x - x^3 - 2y^2 + y^4');
% view(45,45);
% 
% figure(6);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so 3x - x^3 - 2y^2 + y^4');
% hold on;
% surfc(X, Y, z);
% legend('z = 3x - x^3 - 2y^2 + y^4');
% view(45,45);
% 
% figure(7);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so 3x - x^3 - 2y^2 + y^4');
% hold on;
% waterfall(X, Y, z);
% legend('z = 3x - x^3 - 2y^2 + y^4');
% view(45,45);
%% b)
% figure(1);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so sin(\pix) + sin(\piy) + sin(\pix + \piy)');
% hold on;
% z = sin(pi * X) + sin(pi * Y) + sin(pi * X + pi * Y);
% plot3(X, Y, z);
% legend('z = sin(\pix) + sin(\piy) + sin(\pix + \piy)');
% view(45,45);
% 
% figure(2);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so sin(\pix) + sin(\piy) + sin(\pix + \piy)');
% hold on;
% mesh(X, Y, z);
% legend('z = sin(\pix) + sin(\piy) + sin(\pix + \piy)');
% view(45,45);
% 
% figure(3);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so sin(\pix) + sin(\piy) + sin(\pix + \piy)');
% hold on;
% meshc(X, Y, z);
% legend('z = sin(\pix) + sin(\piy) + sin(\pix + \piy)');
% view(45,45);
% 
% figure(4);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so sin(\pix) + sin(\piy) + sin(\pix + \piy)');
% hold on;
% meshz(X, Y, z);
% legend('z = sin(\pix) + sin(\piy) + sin(\pix + \piy)');
% view(45,45);
% 
% figure(5);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so sin(\pix) + sin(\piy) + sin(\pix + \piy)');
% hold on;
% surf(X, Y, z);
% legend('z = sin(\pix) + sin(\piy) + sin(\pix + \piy)');
% view(45,45);
% 
% figure(6);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so sin(\pix) + sin(\piy) + sin(\pix + \piy)');
% hold on;
% surfc(X, Y, z);
% legend('z = sin(\pix) + sin(\piy) + sin(\pix + \piy)');
% view(45,45);
% 
% figure(7);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so sin(\pix) + sin(\piy) + sin(\pix + \piy)');
% hold on;
% waterfall(X, Y, z);
% legend('z = sin(\pix) + sin(\piy) + sin(\pix + \piy)');
% view(45,45);
%% c)
% figure(1);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so e^x + y^4 - x^3 + 4cos(\piy)');
% hold on;
% z = exp(X) + Y.^4 - X.^3 + 4 * cos(pi * Y);
% plot3(X, Y, z);
% legend('z = e^x + y^4 - x^3 + 4cos(\piy)');
% view(45,45);
% 
% figure(2);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so e^x + y^4 - x^3 + 4cos(\piy)');
% hold on;
% mesh(X, Y, z);
% legend('z = e^x + y^4 - x^3 + 4cos(\piy)');
% view(45,45);
% 
% figure(3);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so e^x + y^4 - x^3 + 4cos(\piy)');
% hold on;
% meshc(X, Y, z);
% legend('z = e^x + y^4 - x^3 + 4cos(\piy)');
% view(45,45);
% 
% figure(4);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so e^x + y^4 - x^3 + 4cos(\piy)');
% hold on;
% meshz(X, Y, z);
% legend('z = e^x + y^4 - x^3 + 4cos(\piy)');
% view(45,45);
% 
% figure(5);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so e^x + y^4 - x^3 + 4cos(\piy)');
% hold on;
% surf(X, Y, z);
% legend('z = e^x + y^4 - x^3 + 4cos(\piy)');
% view(45,45);
% 
% figure(6);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so e^x + y^4 - x^3 + 4cos(\piy)');
% hold on;
% surfc(X, Y, z);
% legend('z = e^x + y^4 - x^3 + 4cos(\piy)');
% view(45,45);
% 
% figure(7);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Do thi ham so e^x + y^4 - x^3 + 4cos(\piy)');
% hold on;
% waterfall(X, Y, z);
% legend('z = e^x + y^4 - x^3 + 4cos(\piy)');
% view(45,45);