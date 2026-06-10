clc;
close all;
clear all;

f = @(x,y) 1 + x^2;

x0 = 1;
y0 = -4;
xg = 1.03;
h = 0.01;
n = (xg - x0)/h;

x = x0;
y = y0;

for i = 1:n
    
    k1 = f(x,y);
    k2 = f(x+h, y + h*k1);
    
    y = y + (h/2)*(k1 + k2);
    x = x + h;
    
    fprintf('x=%0.4f  y=%0.6f\n', x, y);
    
end