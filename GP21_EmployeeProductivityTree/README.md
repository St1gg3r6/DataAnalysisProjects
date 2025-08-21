# Predicting Employee Productivity Using Tree Models

## Overview

This project builds a machine learning model to predict the productivity of working teams in garment factories. Using the "Productivity Prediction of Garment Employees" dataset from the UCI Machine Learning Repository, the analysis explores key factors influencing team performance and applies decision tree and random forest classifiers to predict whether a team will meet its productivity target.

## Data Source

- [Productivity Prediction of Garment Employees](https://archive.ics.uci.edu/dataset/597/productivity+prediction+of+garment+employees)

## Contents

- **Dataset Exploration:** Initial inspection and summary of features.
- **Data Cleaning:** Handling categorical variables, missing values, and feature engineering.
- **Model Building:** Training a Decision Tree Classifier to predict team productivity.
- **Evaluation:** Assessing model accuracy, precision, recall, and F1 score.
- **Model Explanation:** Interpreting tree decisions and feature importance.
- **Random Forest Comparison:** Validating results with a Random Forest Classifier.
- **Conclusion:** Summary of findings and feature impact.

## Key Findings

- The most important features for predicting productivity are `incentive` and `smv` (allocated time per task), with `no_of_workers` also relevant.
- The Decision Tree Classifier achieved an accuracy score of **0.825**, with strong precision, recall, and F1 scores.
- Results were confirmed by a Random Forest Classifier, which produced the same accuracy.

## Notebook

View [Employee Productivity Prediction](/GP21_EmployeeProductivityTree/Employee%20Productivity%20Prediction.ipynb) Notebook.

## Requirements

- Python 3.x
- pandas
- numpy
- matplotlib
- seaborn
- scikit-learn
- Jupyter Notebook

## Reference

- [UCI Machine Learning Repository: Productivity Prediction of Garment Employees](https://archive.ics.uci.edu/dataset/597/productivity+prediction+of+garment+employees)