clc
clear all
close all


A=[5,12,3;4,10,13;7,14,2];
n=3;
I=eye(n);

Aug=[A I];

for i=1:n
    value=Aug(i,i);
    Aug(i,:)=Aug(i,:)/value;

    for row = 1:n
        if row~=i
            multiplier = Aug(row, i);
            Aug(row, :) = Aug(row, :) - (multiplier * Aug(i, :));
       end
    end
end


Inverse = Aug(:, n+1:end);


disp('Final Inverse Matrix:');
disp(Inverse);
  
