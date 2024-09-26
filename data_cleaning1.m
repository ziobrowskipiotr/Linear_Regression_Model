function [X_Lukas, X_Rafal] = data_cleaning1(X_Lukas, X_Rafal)
%I have noticed that if we haven't got value in average heat rate, stress level equal -1
X_Lukas_new = [];
X_Rafal_new = [];
for i = 1:size(X_Lukas, 1)
    if X_Lukas(i, 4) ~= -1
        X_Lukas_new(end+1, :) = X_Lukas(i, :);
    end
end
for i = 1:size(X_Rafal, 1)
    if X_Rafal(i, 4) ~= -1
        X_Rafal_new(end+1, :) = X_Rafal(i, :);
    end
end
X_Lukas = X_Lukas_new;
X_Rafal = X_Rafal_new;

rowsToRemove = all(X_Lukas == 0, 2);  % Znajdź wiersze z samymi zerami
X_Lukas(rowsToRemove, :) = [];        % Usuń te wiersze

rowsToRemove = all(X_Rafal == 0, 2);  % Znajdź wiersze z samymi zerami
X_Rafal(rowsToRemove, :) = [];        % Usuń te wiersze
end