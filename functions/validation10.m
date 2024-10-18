function result = validation10(X_DataWR_1, X_DataWR_2, X_DataWR_3, X_DataWR_4,X_DataWR_5, X_DataWR_6, X_DataWR_7, X_DataWR_8, X_DataWR_9, X_DataWR_test, Y_1, Y_2, Y_3, Y_4, Y_5, Y_6, Y_7, Y_8, Y_9, Y_test)
X = [X_DataWR_1; X_DataWR_2; X_DataWR_3; X_DataWR_4; X_DataWR_5; X_DataWR_6; X_DataWR_7; X_DataWR_8; X_DataWR_9];
Y = [Y_1; Y_2; Y_3; Y_4; Y_5; Y_6; Y_7; Y_8; Y_9];
Xmean = mean(X(:,2:end)); % Calculate average for features only (ignoring the interception column if present)
Xstd = std(X(:,2:end)); % Calculate standard deviation for features only

% Standardization of training data
X(:,2:end) = (X(:,2:end) - Xmean) ./ Xstd;

% Training model
W = gradient_decent(X, Y);

% Standardize Test Data (Use Xmean and Xstd calculated for training data)
X_DataWR_test(:,2:end) = (X_DataWR_test(:,2:end) - Xmean) ./ Xstd;

%Calculating the model output
predictions = X_DataWR_test * W;
result = mean(abs(predictions - Y_test) ./ Y_test);
end


