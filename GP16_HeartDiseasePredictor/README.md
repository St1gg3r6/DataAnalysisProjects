# Predicting Heart Disease

## Overview

This project develops a machine learning model to predict the likelihood of heart disease in patients using anonymized medical data. The dataset includes features such as age, sex, chest pain type, blood pressure, cholesterol, and more. The goal is to build an accurate classifier to assist in early detection of heart disease.

## Data Source

- [Heart Failure Prediction Dataset](https://www.kaggle.com/datasets/fedesoriano/heart-failure-prediction)

## Contents

- **Introduction:** Project motivation and background on cardiovascular disease.
- **Data Exploration:** Inspection of dataset structure, summary statistics, and visualizations of categorical variables.
- **Data Cleaning:** Handling missing and invalid values, such as replacing zero cholesterol values and removing invalid blood pressure rows.
- **Feature Selection:** Correlation analysis and selection of relevant features for modeling.
- **Model Building:** Training K-Nearest Neighbors classifiers, both with individual features and combined features.
- **Hyperparameter Tuning:** Using GridSearchCV to optimize model parameters.
- **Evaluation:** Assessing model accuracy on test data and discussing potential biases.

## Key Findings

- The final model achieved an accuracy of approximately 87% on the test set.
- Some features, such as sex, are heavily skewed, which may affect prediction bias.
- Further analysis is recommended to address potential dataset imbalances.

## Notebook

View [Predicting Heart Disease](/GP16_HeartDiseasePredictor/Predicting%20Heart%20Disease.ipynb) Notebook.

## Requirements

- Python 3.x
- pandas
- matplotlib
- seaborn
- scikit-learn
- Jupyter Notebook

## Reference

- [World Health Organization: Cardiovascular Diseases](https://www.who.int/news-room/fact-sheets/detail/cardiovascular-diseases-(cvds))
- [Kaggle: Heart Failure Prediction Dataset](https://www.kaggle.com/datasets/fedesoriano/heart-failure-prediction)