function [X_Lukas, X_Rafal] = regression_matrix1(XLukas, XRafal)
% Conversion a table to matrix
X_Lukasb = table2array(XLukas(:, 2:end));
X_Rafalb = table2array(XRafal(:, 2:end));
% adding ones column on the left 
ones_column2 = ones(size(X_Lukasb, 1), 1);
X_Lukas = horzcat(ones_column2, X_Lukasb);
ones_column3 = ones(size(X_Rafalb, 1), 1);
X_Rafal = horzcat(ones_column3, X_Rafalb);
end
