clear;
close all;
clear all;


f = @(x,y) x - y^2;

x0 = 0;            
y0 = 1;            
h = 0.1;           
xg = 0.2;    
n = (xg - x0)/h;     

x(1) = x0;
y(1) = y0;

fprintf('Eulers method for the equation dy/dx=x-y^2\n');

for i = 1:n
    y(i+1) = y(i) + h * f(x(i), y(i));  
    x(i+1) = x(i) + h;
    fprintf('x=%0.4f  y=%0.6f\n', x(i+1), y(i+1));
end
