function [Y] = only_results1(X1, X2, X3)
X = [X1; X2; X3];
Y = X(:, end);
end
