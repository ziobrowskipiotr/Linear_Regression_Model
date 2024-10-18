# Linear Regression Model for Predicting Calories Burned

## Project Overview

This project implements a linear regression model to predict calories burned based on data collected from Garmin sports watch users. The model uses data from three different users to build a prediction model using advanced regression techniques, including gradient descent optimization and cross-validation. The predictions are validated against real-world data, allowing for an evaluation of the model's accuracy.

## Table of Contents
1. [Project Overview](#project-overview)
2. [Data Collection](#data-collection)
3. [Project Structure](#project-structure)
4. [Data Structure](#data-structure)
5. [How to Run the Project](#how-to-run-the-project)
6. [Dependencies](#dependencies)
7. [Future Enhancements](#future-enhancements)

## Data Collection

The data used in this project was collected from Garmin sports watches worn by users. This includes physiological data such as weight, height, stress levels, heart rate, and activity metrics like steps and floors climbed. In addition to this, meteorological data such as temperature and air pressure in Cracow was integrated into the model. The combination of physiological and environmental factors aims to enhance the prediction accuracy for calories burned.

## Project Structure

The project is composed of several MATLAB scripts stored in the `functions/` folder. The scripts handle various tasks, such as data cleaning, matrix preparation, training the model, and evaluating its performance through cross-validation.

### Key Files:

1. **Projekt.m**:
   - The main script that loads the datasets, cleans them, prepares regression matrices, applies cross-validation, and trains the model using gradient descent.

2. **Functions in the `functions/` folder**:

   - **all_preparing5_w3in.m**: 
     Prepares datasets for 5-fold cross-validation, extracting features and results from three input datasets.

   - **cross_validation5.m** & **cross_validation10.m**:
     Implements 5-fold and 10-fold cross-validation routines to evaluate the model.

   - **data_cleaning.m**:
     Cleans the datasets by removing invalid or missing values.

   - **gradient.m** & **gradient_decent.m**:
     Implements the gradient descent algorithm and calculates the gradient of the cost function for the regression model.

   - **regression_matrix.m**:
     Converts data tables into matrices suitable for regression, adding an intercept term for the model.

   - **training_model.m**:
     Trains the linear regression model using gradient descent, standardizes the test data, and calculates the prediction error.

   - **validation5.m** & **validation10.m**:
     Implements individual iterations of 5-fold and 10-fold cross-validation.

## Data Structure

Here is an example of how the data is structured:

### Example Table Structure

| Column Name                        | Description                                                                 |
|------------------------------------|-----------------------------------------------------------------------------|
| **Date**                           | The date of data collection (format: Month Day).                             |
| **Weight**                         | The weight of the person (in kilograms).                                     |
| **Height**                         | The height of the person (in centimeters).                                   |
| **Average Stress Level**           | The average stress level during the day (measured in arbitrary units).        |
| **Average Resting Heart Rate**     | The average resting heart rate (measured in beats per minute).                |
| **Intensity Minutes**              | The number of minutes the person spent in high-intensity activities.          |
| **Floors Climbed**                 | The number of floors climbed during the day.                                  |
| **Steps**                          | The number of steps taken during the day.                                     |
| **Average Temperature in Cracow**  | The average temperature in Cracow on the given day (in degrees Celsius).      |
| **Average Air Pressure in Cracow** | The average air pressure in Cracow on the given day (in hPa).                 |
| **Calories**                       | The total number of calories burned during the day.                           |

## How to Run the Project

1. **Data Preparation**:
   - Place the required `.csv` files in the `data/` folder. The project will read these files, process them into regression matrices, and perform model training and validation.

2. **Running the Model**:
   - Simply run the `Projekt.m` script. This script will:
     1. Load and clean the data.
     2. Prepare the data for linear regression.
     3. Perform both 5-fold and 10-fold cross-validation.
     4. Train the model using gradient descent.
     5. Display results from the cross-validation in the console.

3. **Cross-Validation**:
   - Results from both 5-fold and 10-fold cross-validation will be displayed in the console, highlighting the model’s performance.

## Dependencies

- MATLAB (R2021b or later recommended)
- `.csv` data files placed in the `data/` folder

## Possible Enhancements

- Expanding support for more robust regularization techniques such as ridge regression.
- Adding performance metrics such as R-squared and RMSE.
- Implementing automated hyperparameter tuning for the gradient descent learning rate.
