function result = training_model(X, X_DataWR_test, Y, Y_test)
Xmean = mean(X(:,2:end)); % Calculate average for features only (ignoring the interception column if present)
Xstd = std(X(:,2:end)); % Calculate standard deviation for features only

% Standardization of training data
X(:,2:end) = (X(:,2:end) - Xmean) ./ Xstd;

% Training model
W = gradient_decent(X, Y);

% Standardize Test Data (Use Xmean and Xstd calculated for training data)
X_DataWR_test(:,2:end) = (X_DataWR_test(:,2:end) - Xmean) ./ Xstd;

% Calculating the model output
predictions = X_DataWR_test * W;
result = mean(abs((predictions - Y_test) ./ Y_test));
end