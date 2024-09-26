function [X_Ja, X_Lukas, X_Rafal] = data_cleaning(X_Ja, X_Lukas, X_Rafal)
%I have noticed that if we haven't got value in average heat rate, stress level equal -1
[X_Ja_new] = rowsCleaning(X_Ja);
[X_Lukas_new] = rowsCleaning(X_Lukas);
[X_Rafal_new] = rowsCleaning(X_Rafal);

X_Ja = X_Ja_new;
X_Lukas = X_Lukas_new;
X_Rafal = X_Rafal_new;
end