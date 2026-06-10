clc;
close all;
clear all;

f = @(t,x) 1 - 2*x^2 - t;   

t0 = 0;                    
x0 = 1;                     
tg = 0.03;                 
h = 0.01;                   
%n = (tg - t0)/h;
n = 100; 

t(1) = t0;
x(1) = x0;

for i = 1:n
    
    ft = -1;                
    fx = -4*x(i);           
    
    x(i+1) = x(i) + h*f(t(i),x(i)) + (h^2/2)*(ft + fx*f(t(i),x(i)));
    t(i+1) = t(i) + h;
    
    fprintf('t=%0.4f  x=%0.6f\n', t(i+1), x(i+1));
    
end

