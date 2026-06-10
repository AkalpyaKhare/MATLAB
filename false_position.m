clc;
clear;

f = @(x) x^3 - x - 1;

a = 1;
b = 2;
tol = 0.001;

fprintf('Enter the non liner equation : x^3 - x - 1\n');
fprintf('Enter the first guess : %d\n', a);
fprintf('Enter the second guess : %d\n', b);
fprintf('Tolorance error is : %.3f\n\n', tol);

fa = f(a);
fb = f(b);
c_values = [];

% First iteration
c = (a*fb - b*fa)/(fb - fa);
fc = f(c);
fprintf('%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\n', a, b, c, fa, fb, fc);

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

    fprintf('%.6f \t %.6f \t %.6f \t %.6f\n', a, b, c, abs(fc));
    c_values = [c_values c];
end

fprintf('\nRoot is : %.6f\n', c);

% Graph of convergence
figure;
plot(1:length(c_values), c_values, '-o','LineWidth',1.5);
xlabel('Iteration');
ylabel('Approximate Root');
title('False Position Method Convergence');
grid on;

% Function graph
x = linspace(1,2,400);
y = f(x);

figure;
plot(x,y,'LineWidth',1.5);
hold on;
yline(0);
plot(c,f(c),'ro','MarkerSize',8);
xlabel('x');
ylabel('f(x)');
title('f(x) = x^3 - x - 1');
grid on;