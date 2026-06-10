clc;
clear;
close all;

syms x;
y = x^3 + 2*x - 2;

a = 0;
b = 1;
e = 0.1;  

fa = eval(subs(y, x, a));
fb = eval(subs(y, x, b));

if fa * fb > 0
    fprintf('No root in the given interval\n');
else
    
    errors = [];
    c_old = a;
    
    while abs(b - a) > e
        c = (a + b) / 2;
        fc = eval(subs(y, x, c));
        
        err = abs(c - c_old);
        errors = [errors err];
        
        fprintf('%f\t%f\t%f\t%f\t%f\n', a, b, c, fc, err);
        
        if fa * fc < 0
            b = c;
            fb = fc;
        else
            a = c;
            fa = fc;
        end
        
        c_old = c;
    end
    
    fprintf('\nRoot up to one decimal place is: %.1f\n', c);
    
    figure;
    plot(1:length(errors), errors, '-o','LineWidth',1.5);
    xlabel('Iteration');
    ylabel('Absolute Error');
    title('Error graph');
    grid on;
end
