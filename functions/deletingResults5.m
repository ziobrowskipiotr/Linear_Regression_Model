function [X1_without, X2_without, X3_without, X4_without, X5_without] = deletingResults5(X1,X2,X3,X4,X5)
X1_without = X1(:, 1 : end-1);
X2_without = X2(:, 1 : end-1);
X3_without = X3(:, 1 : end-1);
X4_without = X4(:, 1 : end-1);
X5_without = X5(:, 1 : end-1);
end