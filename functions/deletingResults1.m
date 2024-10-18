function [X_WR] = deletingResults1(X1,X2,X3)
X = [X1; X2; X3];
X_WR = X(:, 1 : end-1);
end