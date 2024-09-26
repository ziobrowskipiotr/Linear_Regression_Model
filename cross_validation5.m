function Model_results = cross_validation5(X_DataWR_1, X_DataWR_2, X_DataWR_3, X_DataWR_4, X_DataWR_5, Y_1, Y_2, Y_3, Y_4, Y_5)
Model_results = zeros(5, 1);
%first part of data is not shown
Model_results(1,1) = validation5(X_DataWR_2, X_DataWR_3, X_DataWR_4, X_DataWR_5, X_DataWR_1, Y_2, Y_3, Y_4, Y_5, Y_1);
%second part of data is not shown
Model_results(2,1) = validation5(X_DataWR_1, X_DataWR_3, X_DataWR_4, X_DataWR_5, X_DataWR_2, Y_1, Y_3, Y_4, Y_5, Y_2);
%third part of data is not shown
Model_results(3,1) = validation5(X_DataWR_1, X_DataWR_2, X_DataWR_4, X_DataWR_5, X_DataWR_3, Y_1, Y_2, Y_4, Y_5, Y_3);
%fourth part of data is not shown
Model_results(4,1) = validation5(X_DataWR_1, X_DataWR_2, X_DataWR_3, X_DataWR_5, X_DataWR_4, Y_1, Y_2, Y_3, Y_5, Y_4);
%fifth part of data is not shown
Model_results(5,1) = validation5(X_DataWR_1, X_DataWR_2, X_DataWR_3, X_DataWR_4, X_DataWR_5, Y_1, Y_2, Y_3, Y_4, Y_5);
end