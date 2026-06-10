clc;
close all;
clear all;

f = @(x,y) x + y; 
x0 = 0;           
y0 = 1;            
xg = 1;             
h = 0.2;            
n = (xg - x0)/h;    

x(1) = x0;
y(1) = y0;

for i = 1:n
    y(i+1) = y(i) + h * f(x(i), y(i));  
    x(i+1) = x(i) + h;
    fprintf('x=%0.4f  y=%0.6f\n', x(i+1), y(i+1));
end

% Plot Euler approximation
plot(x, y, '-o','LineWidth',1.5,'MarkerSize',6);
xlabel('x'); 
ylabel('y'); 
title('Euler solution');
grid on;