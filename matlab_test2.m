clc;
clear;
close all;

f=@(x)x^3-x-2;
a=1;
b=2;
tol=0.1;

fprintf('Enter the non liner equation : x^3 - x - 2\n');
fprintf('Enter the value of 1st interval : %d\n', a);
fprintf('Enter the value of 2nd interval : %d\n', b);
fprintf('Tolorance error is %f\n', tol);

fa=f(a);
fb=f(b);

c_values = [];

c = (a*fb - b*fa)/(fb - fa);
fc = f(c);
fprintf('%f\t%f\t%f\t%f\t%f\t%f\n', a, b, c, fa, fb, fc);

while abs(fc) > tol
    if fa*fc < 0
        b = c;
        fb = fc;
    else
        a = c;
        fa = fc;
    end

    c = (a*fb - b*fa)/(fb - fa);
    fc = f(c);

    fprintf('%f \t %f \t %f \t %f\n', a, b, c, abs(fc));
    c_values = [c_values c];
end

fprintf('Root is : %f\n', c);