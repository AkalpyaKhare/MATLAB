clear;
close all;
clear all;

f  = @(x) x^3 - 2*x - 5;
df = @(x) 3*x^2 - 2;

x0 = 2; 
tol = 0.001;
i = 100;

fprintf('Enter the non linear equation : x^3 - 2x - 5\n');
fprintf('Enter the initial guess : %.3f\n', x0);
fprintf('Tolerance error is : %.3f\n\n', tol);

for iter=1:i
    fx  = f(x0);
    dfx = df(x0);
    
    x1=x0-fx/dfx;
    
    
    fprintf('%d \t %.6f \t %.6f \t %.6f\n', iter, x0, x1, abs(f(x1)));
    
    if abs(f(x1)) < tol
        break;
    end
    x0 = x1;
end

fprintf('\nRoot is : %.6f\n', x1);