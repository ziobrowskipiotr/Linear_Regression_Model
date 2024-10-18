function ShowingResults(number_of_validations, Model_Results)
for i = 1:number_of_validations
    fprintf('Average error in the %d part of the data covered: %f\n', i, Model_Results(i,1));
end
avg = mean(abs(Model_Results));
fprintf('Average error in validation: %d \n \n', avg);
end
