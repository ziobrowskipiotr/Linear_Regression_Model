function [X1, X2, X3, X4, X5] = validation_preparing5(X)
numberOfRowsX = size(X, 1);
%minimum number of rows in one part od data
number = floor(numberOfRowsX / 5);
%the rest from division
rest = mod(numberOfRowsX, 5);
X1 = zeros(number, size(X, 2));
X2 = zeros(number, size(X, 2));
X3 = zeros(number, size(X, 2));
X4 = zeros(number, size(X, 2));
X5 = zeros(number+rest, size(X, 2));
for i = 1:numberOfRowsX
    if i <= number
        X1(i, :) = X(i, :);
    elseif i <= 2*number
        X2(i-number, :) = X(i, :);
    elseif i <= 3*number
        X3(i - 2*number, :) = X(i, :);
    elseif i <= 4*number
        X4(i - 3*number, :) = X(i, :);
    else
        X5(i - 4*number, :) = X(i, :);
    end
end
end