clc;
clear all;
close all;

f = @(x)x^3-x-1;   

a = 1;               
b = 2;                 
tol = 0.0001;      
err = 1;               
iter = 0;             

while err > tol
    x = (a*f(b)-b*f(a))/(f(b) - f(a));  
    
    if f(a)*f(x)<0
        b = x;
    else
        a = x;
    end
    
    err = abs(f(x));  
    iter = iter + 1;  
end

disp(['Root = ', num2str(x)])
disp(['Iterations = ', num2str(iter)])





