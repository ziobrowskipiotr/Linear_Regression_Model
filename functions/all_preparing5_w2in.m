function [X_DataWR_1,X_DataWR_2,X_DataWR_3,X_DataWR_4,X_DataWR_5, Y1, Y2, Y3, Y4, Y5] = all_preparing5_w2in(X_Lukas, X_Rafal)
[X_Data] = SummingData2(X_Lukas, X_Rafal);
[X_Data_1,X_Data_2,X_Data_3,X_Data_4,X_Data_5] = validation_preparing5(X_Data);
[X_DataWR_1,X_DataWR_2,X_DataWR_3,X_DataWR_4,X_DataWR_5] = deletingResults5(X_Data_1,X_Data_2,X_Data_3,X_Data_4,X_Data_5); %WR mean Without Results
[Y1, Y2, Y3, Y4, Y5] = only_results(X_Data_1,X_Data_2,X_Data_3,X_Data_4,X_Data_5);
end

