clc;
close all;
clear all;

f = @(x,y) 1 + x^2;     

x0 = 0;                 
y0 = -4;                
xg = 1;               
h = 0.2;                
n = (xg - x0)/h;        

x(1) = x0;
y(1) = y0;

for i = 1:n
    
    fx = 2*x(i);        
    fy = 0;             
    
    y(i+1) = y(i) + h*f(x(i),y(i)) + (h^2/2)*(fx + fy*f(x(i),y(i)));
    x(i+1) = x(i) + h;
    
    fprintf('x=%0.4f  y=%0.6f\n', x(i+1), y(i+1));
    
end
