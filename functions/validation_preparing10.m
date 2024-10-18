function [X1, X2, X3, X4, X5, X6, X7, X8, X9, X10] = validation_preparing10(X)
numberOfRowsX = size(X, 1);
%minimum number of rows in one part od data
number = floor(numberOfRowsX / 10);
%the rest from division
rest = mod(numberOfRowsX, 10);
X1 = zeros(number, size(X, 2));
X2 = zeros(number, size(X, 2));
X3 = zeros(number, size(X, 2));
X4 = zeros(number, size(X, 2));
X5 = zeros(number, size(X, 2));
X6 = zeros(number, size(X, 2));
X7 = zeros(number, size(X, 2));
X8 = zeros(number, size(X, 2));
X9 = zeros(number, size(X, 2));
X10 = zeros(number+rest, size(X, 2));
for i = 1:numberOfRowsX
    if i <= number
        X1(i, :) = X(i, :);
    elseif i <= 2*number
        X2(i-number, :) = X(i, :);
    elseif i <= 3*number
        X3(i - 2*number, :) = X(i, :);
    elseif i <= 4*number
        X4(i - 3*number, :) = X(i, :);
    elseif i <= 5*number
        X5(i - 4*number, :) = X(i, :);
    elseif i <= 6*number
        X6(i - 5*number, :) = X(i, :);
    elseif i <= 7*number
        X7(i - 6*number, :) = X(i, :);
    elseif i <= 8*number
        X8(i - 7*number, :) = X(i, :);
    elseif i <= 9*number
        X9(i - 8*number, :) = X(i, :);
    else
        X10(i - 9*number, :) = X(i, :);
    end
end
end