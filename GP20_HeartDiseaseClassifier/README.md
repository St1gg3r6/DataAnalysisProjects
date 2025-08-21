# Classifying Heart Disease

## Overview

This project applies logistic regression modeling in Python to classify the presence of heart disease using the Cleveland Clinic Foundation dataset from the UCI Machine Learning Repository. The analysis explores patient characteristics and evaluates model performance for predicting heart disease.

## Data Source

- [UCI Heart Disease Dataset](https://archive.ics.uci.edu/dataset/45/heart+disease)
- Features include age, sex, chest pain type, resting blood pressure, cholesterol, fasting blood sugar, ECG results, maximum heart rate, exercise-induced angina, ST depression, slope, number of major vessels, thalassemia, and diagnosis.

## Approach

- **Data Cleaning:** Remove records with missing values and convert categorical columns to numeric types.
- **Exploratory Analysis:** Visualize distributions and relationships between features and heart disease presence.
- **Feature Selection:** Choose relevant numerical and categorical predictors based on correlation and domain knowledge.
- **Preprocessing:** One-hot encode categorical variables and log-transform skewed features.
- **Modeling:** Train and evaluate a logistic regression classifier.
- **Interpretation:** Analyze model coefficients to understand feature impact.
- **Evaluation:** Assess accuracy, sensitivity, and specificity on training and test sets.

## Key Findings

- The model achieves good accuracy and specificity, but sensitivity is lower, meaning some cases of heart disease may be missed.
- Features such as chest pain type, number of major vessels, sex, slope, and exercise-induced angina have the greatest impact on prediction.
- Age and maximum heart rate have less influence than expected.

## Notebook

View [Classifying Heart Disease](/GP20_HeartDiseaseClassifier/Classifying%20Heart%20Disease.ipynb) Notebook.

## Requirements

- Python 3.x
- pandas
- numpy
- matplotlib
- seaborn
- scikit-learn
- Jupyter Notebook

## Reference

- [UCI Heart Disease Dataset](https://archive.ics.uci.edu/dataset/45/heart+disease)