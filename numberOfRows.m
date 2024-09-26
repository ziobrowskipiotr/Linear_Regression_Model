function [n] = numberOfRows(X_Sb)
n = 0;
for i = 1:size(X_Sb, 1)
    if X_Sb(i, 3) ~= -1
        n = n+1;
    end
end
end