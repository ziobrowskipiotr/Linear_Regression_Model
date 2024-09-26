function ShowingResults(number_of_validations, Model_Results)
for i = 1:number_of_validations
    fprintf('Calorie difference with the %d part of the data covered: %f\n', i, Model_Results(i,1));
end
avg = mean(Model_Results);
fprintf('Average error in validation: %d \n \n', avg);
end

