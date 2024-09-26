function Model_results = cross_validation10(X_DataWR_1, X_DataWR_2, X_DataWR_3, X_DataWR_4, X_DataWR_5, X_DataWR_6, X_DataWR_7, X_DataWR_8, X_DataWR_9, X_DataWR_10, Y_1, Y_2, Y_3, Y_4, Y_5, Y_6, Y_7, Y_8, Y_9, Y_10)
Model_results = zeros(10, 1);
%first part of data is not shown
Model_results(1,1) = validation10(X_DataWR_2, X_DataWR_3, X_DataWR_4, X_DataWR_5, X_DataWR_6, X_DataWR_7, X_DataWR_8, X_DataWR_9, X_DataWR_10, X_DataWR_1, Y_2, Y_3, Y_4, Y_5, Y_6, Y_7, Y_8, Y_9, Y_10, Y_1);
%second part of data is not shown
Model_results(2,1) = validation10(X_DataWR_1, X_DataWR_3, X_DataWR_4, X_DataWR_5, X_DataWR_6, X_DataWR_7, X_DataWR_8, X_DataWR_9, X_DataWR_10, X_DataWR_2, Y_1, Y_3, Y_4, Y_5, Y_6, Y_7, Y_8, Y_9, Y_10, Y_2);
%third part of data is not shown
Model_results(3,1) = validation10(X_DataWR_1, X_DataWR_2, X_DataWR_4, X_DataWR_5, X_DataWR_6, X_DataWR_7, X_DataWR_8, X_DataWR_9, X_DataWR_10, X_DataWR_3, Y_1, Y_2, Y_4, Y_5, Y_6, Y_7, Y_8, Y_9, Y_10, Y_3);
%fourth part of data is not shown
Model_results(4,1) = validation10(X_DataWR_1, X_DataWR_2, X_DataWR_3, X_DataWR_5, X_DataWR_6, X_DataWR_7, X_DataWR_8, X_DataWR_9, X_DataWR_10, X_DataWR_4, Y_1, Y_2, Y_3, Y_5, Y_6, Y_7, Y_8, Y_9, Y_10, Y_4);
%fifth part of data is not shown
Model_results(5,1) = validation10(X_DataWR_1, X_DataWR_2, X_DataWR_3, X_DataWR_4, X_DataWR_6, X_DataWR_7, X_DataWR_8, X_DataWR_9, X_DataWR_10, X_DataWR_5, Y_1, Y_2, Y_3, Y_4, Y_6, Y_7, Y_8, Y_9, Y_10, Y_5);
%sixth part of data is not shown
Model_results(6,1) = validation10(X_DataWR_1, X_DataWR_2, X_DataWR_3, X_DataWR_4, X_DataWR_5, X_DataWR_7, X_DataWR_8, X_DataWR_9, X_DataWR_10, X_DataWR_6, Y_1, Y_2, Y_3, Y_4, Y_5, Y_7, Y_8, Y_9, Y_10, Y_6);
%seventh part of data is not shown
Model_results(7,1) = validation10(X_DataWR_1, X_DataWR_2, X_DataWR_3, X_DataWR_4, X_DataWR_5, X_DataWR_6, X_DataWR_8, X_DataWR_9, X_DataWR_10, X_DataWR_7, Y_1, Y_2, Y_3, Y_4, Y_5, Y_6, Y_8, Y_9, Y_10, Y_7);
%eighth part of data is not shown
Model_results(8,1) = validation10(X_DataWR_1, X_DataWR_2, X_DataWR_3, X_DataWR_4, X_DataWR_5, X_DataWR_6, X_DataWR_7, X_DataWR_9, X_DataWR_10, X_DataWR_8, Y_1, Y_2, Y_3, Y_4, Y_5, Y_6, Y_7, Y_9, Y_10, Y_8);
%ninth part of data is not shown
Model_results(9,1) = validation10(X_DataWR_1, X_DataWR_2, X_DataWR_3, X_DataWR_4, X_DataWR_5, X_DataWR_6, X_DataWR_7, X_DataWR_8, X_DataWR_10, X_DataWR_9, Y_1, Y_2, Y_3, Y_4, Y_5, Y_6, Y_7, Y_8, Y_10, Y_9);
%ten part of data is not shown
Model_results(10,1) = validation10(X_DataWR_1, X_DataWR_2, X_DataWR_3, X_DataWR_4, X_DataWR_5, X_DataWR_6, X_DataWR_7, X_DataWR_8, X_DataWR_9, X_DataWR_10, Y_1, Y_2, Y_3, Y_4, Y_5, Y_6, Y_7, Y_8, Y_9, Y_10);
end

