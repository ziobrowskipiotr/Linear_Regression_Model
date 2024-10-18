close all; clear; clc;
addpath('functions\');

%1 part of data
% Read .csv file
XJa1 = readtable('data/Ja1.csv', 'VariableNamingRule', 'preserve');
XLukas1 = readtable('data/Lukas1.csv', 'VariableNamingRule', 'preserve');
XRafal1 = readtable('data/Rafal1.csv', 'VariableNamingRule', 'preserve');
% create X matrixs to solve linear regression
[X_Ja1, X_Lukas1, X_Rafal1] = regression_matrix(XJa1, XLukas1, XRafal1);
%data cleaning
[X_Ja1, X_Lukas1, X_Rafal1] = data_cleaning(X_Ja1, X_Lukas1, X_Rafal1);

%2 part of data
% Read .csv file
XJa2 = readtable('data/Ja2.csv', 'VariableNamingRule', 'preserve');
XLukas2 = readtable('data/Lukas2.csv', 'VariableNamingRule', 'preserve');
XRafal2 = readtable('data/Rafal2.csv', 'VariableNamingRule', 'preserve');
% create X matrixs to solve linear regression
[X_Ja2, X_Lukas2, X_Rafal2] = regression_matrix(XJa2, XLukas2, XRafal2);
%data cleaning
[X_Ja2, X_Lukas2, X_Rafal2] = data_cleaning(X_Ja2, X_Lukas2, X_Rafal2);

%3 part of data
% Read .csv file
XJa3 = readtable('data/Ja3.csv', 'VariableNamingRule', 'preserve');
XLukas3 = readtable('data/Lukas3.csv', 'VariableNamingRule', 'preserve');
XRafal3 = readtable('data/Rafal3.csv', 'VariableNamingRule', 'preserve');
% create X matrixs to solve linear regression
[X_Ja3, X_Lukas3, X_Rafal3] = regression_matrix(XJa3, XLukas3, XRafal3);
%data cleaning
[X_Ja3, X_Lukas3, X_Rafal3] = data_cleaning(X_Ja3, X_Lukas3, X_Rafal3);

%4 part of data
% Read .csv file
XJa4 = readtable('data/Ja4.csv', 'VariableNamingRule', 'preserve');
XLukas4 = readtable('data/Lukas4.csv', 'VariableNamingRule', 'preserve');
XRafal4 = readtable('data/Rafal4.csv', 'VariableNamingRule', 'preserve');
% create X matrixs to solve linear regression
[X_Ja4, X_Lukas4, X_Rafal4] = regression_matrix(XJa4, XLukas4, XRafal4);
%data cleaning
[X_Ja4, X_Lukas4, X_Rafal4] = data_cleaning(X_Ja4, X_Lukas4, X_Rafal4);

%5 part of data
% Read .csv file
XLukas5 = readtable('data/Lukas5.csv', 'VariableNamingRule', 'preserve');
XRafal5 = readtable('data/Rafal5.csv', 'VariableNamingRule', 'preserve');
% create X matrixs to solve linear regression
[X_Lukas5, X_Rafal5] = regression_matrix1(XLukas1, XRafal1);
%data cleaning
[X_Lukas5, X_Rafal5] = data_cleaning1(X_Lukas5, X_Rafal5);

%part of the test data
% Read .csv file
X_testJa = readtable('data/Test_Ja.csv', 'VariableNamingRule', 'preserve');
X_testLukas = readtable('data/Test_Lukas.csv', 'VariableNamingRule', 'preserve');
X_testRafal = readtable('data/Test_Rafal.csv', 'VariableNamingRule', 'preserve');
% create X matrixs to solve linear regression
[X_Ja_Test, X_Lukas_Test, X_Rafal_Test] = regression_matrix(X_testJa, X_testLukas, X_testRafal);
%data cleaning
[X_Ja_Test, X_Lukas_Test, X_Rafal_Test] = data_cleaning(X_Ja_Test, X_Lukas_Test, X_Rafal_Test);

%preparation for validation data
%(WR mean Without Results)
%(w3in mean with 3 inputs)
%(w2in mean with 2 inputs)

%First data
[X1_DataWR_1,X1_DataWR_2,X1_DataWR_3,X1_DataWR_4,X1_DataWR_5, Y1_1, Y1_2, Y1_3, Y1_4, Y1_5] = all_preparing5_w3in(X_Ja1, X_Lukas1, X_Rafal1);
%Second data
[X2_DataWR_1,X2_DataWR_2,X2_DataWR_3,X2_DataWR_4,X2_DataWR_5, Y2_1, Y2_2, Y2_3, Y2_4, Y2_5] = all_preparing5_w3in(X_Ja2, X_Lukas2, X_Rafal2);
%Third data
[X3_DataWR_1,X3_DataWR_2,X3_DataWR_3,X3_DataWR_4,X3_DataWR_5, Y3_1, Y3_2, Y3_3, Y3_4, Y3_5] = all_preparing5_w3in(X_Ja3, X_Lukas3, X_Rafal3);
%Fourth data
[X4_DataWR_1,X4_DataWR_2,X4_DataWR_3,X4_DataWR_4,X4_DataWR_5, Y4_1, Y4_2, Y4_3, Y4_4, Y4_5] = all_preparing5_w3in(X_Ja4, X_Lukas4, X_Rafal4);
%Fifth data
[X5_DataWR_1,X5_DataWR_2,X5_DataWR_3,X5_DataWR_4,X5_DataWR_5, Y5_1, Y5_2, Y5_3, Y5_4, Y5_5] = all_preparing5_w2in(X_Lukas5, X_Rafal5);

%5-cross-validation models results
Model_Results1 = cross_validation5(X1_DataWR_1,X1_DataWR_2,X1_DataWR_3,X1_DataWR_4,X1_DataWR_5, Y1_1, Y1_2, Y1_3, Y1_4, Y1_5);
disp("5-cross-validation with first part of data:");
ShowingResults(5, Model_Results1);
Model_Results2 = cross_validation5(X2_DataWR_1,X2_DataWR_2,X2_DataWR_3,X2_DataWR_4,X2_DataWR_5, Y2_1, Y2_2, Y2_3, Y2_4, Y2_5);
disp("5-cross-validation with second part of data:");
ShowingResults(5, Model_Results2);
Model_Results3 = cross_validation5(X3_DataWR_1,X3_DataWR_2,X3_DataWR_3,X3_DataWR_4,X3_DataWR_5, Y3_1, Y3_2, Y3_3, Y3_4, Y3_5);
disp("5-cross-validation with third part of data:");
ShowingResults(5, Model_Results3);
Model_Results4 = cross_validation5(X4_DataWR_1,X4_DataWR_2,X4_DataWR_3,X4_DataWR_4,X4_DataWR_5, Y4_1, Y4_2, Y4_3, Y4_4, Y4_5);
disp("5-cross-validation with fourth part of data:");
ShowingResults(5, Model_Results4);
Model_Results5 = cross_validation5(X5_DataWR_1,X5_DataWR_2,X5_DataWR_3,X5_DataWR_4,X5_DataWR_5, Y5_1, Y5_2, Y5_3, Y5_4, Y5_5);
disp("5-cross-validation with fifth part of data:");
ShowingResults(5, Model_Results5);

%Preparing all data to rate model with 5-cross_validation
X_DataWR_1 = [X1_DataWR_1; X1_DataWR_2; X1_DataWR_3; X1_DataWR_4; X1_DataWR_5];
X_DataWR_2 = [X2_DataWR_1; X2_DataWR_2; X2_DataWR_3; X2_DataWR_4; X2_DataWR_5];
X_DataWR_3 = [X3_DataWR_1; X3_DataWR_2; X3_DataWR_3; X3_DataWR_4; X3_DataWR_5];
X_DataWR_4 = [X4_DataWR_1; X4_DataWR_2; X4_DataWR_3; X4_DataWR_4; X4_DataWR_5];
X_DataWR_5= [X5_DataWR_1; X5_DataWR_2; X5_DataWR_3; X5_DataWR_4; X5_DataWR_5];
Y1 = [Y1_1; Y1_2; Y1_3; Y1_4; Y1_5];
Y2 = [Y2_1; Y2_2; Y2_3; Y2_4; Y2_5];
Y3 = [Y3_1; Y3_2; Y3_3; Y3_4; Y3_5];
Y4 = [Y4_1; Y4_2; Y4_3; Y4_4; Y4_5];
Y5 = [Y5_1; Y5_2; Y5_3; Y5_4; Y5_5];

%5-cross-validation model results
Model5_Results = cross_validation5(X_DataWR_1,X_DataWR_2,X_DataWR_3,X_DataWR_4,X_DataWR_5, Y1, Y2, Y3, Y4, Y5);
disp("5-cross-validation with all part of data:");
ShowingResults(5, Model5_Results);

%Preparing all data to rate model with 10-cross_validation
X_DataWR = [X_DataWR_1; X_DataWR_2; X_DataWR_3; X_DataWR_4; X_DataWR_5];
Y = [Y1; Y2; Y3; Y4; Y5];
[XWR1, XWR2, XWR3, XWR4, XWR5, XWR6, XWR7, XWR8, XWR9, XWR10] = validation_preparing10(X_DataWR);
[Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9, Y10] = validation_preparing10(Y);
Model10_Results = cross_validation10(XWR1, XWR2, XWR3, XWR4, XWR5, XWR6, XWR7, XWR8, XWR9, XWR10, Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9, Y10);
disp("10-cross-validation with all part of data:");
ShowingResults(10, Model10_Results);

%Final model results
X_WR_Test = deletingResults1(X_Ja_Test, X_Lukas_Test, X_Rafal_Test);
Y_Test = only_results1(X_Ja_Test, X_Lukas_Test, X_Rafal_Test);
All_model_results = training_model(X_DataWR, X_WR_Test, Y, Y_Test);
fprintf('Average error in all data model trained: %d \n', All_model_results);