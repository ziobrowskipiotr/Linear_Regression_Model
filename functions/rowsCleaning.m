function [X_Sb_new] = rowsCleaning(X_Sb)
[n] = numberOfRows(X_Sb);
X_Sb_new = zeros(n, size(X_Sb,2));
j = 1;
for i = 1:size(X_Sb, 1)
    if X_Sb(i, 4) ~= -1
        X_Sb_new(j, :) = X_Sb(i, :);
        j = j+1;
    end
end
rowsToRemove = all(X_Sb_new == 0, 2);
X_Sb_new(rowsToRemove, :) = [];
end

