# Predicting Insurance Costs

## Overview

This project builds predictive models for individual medical insurance costs using the [Medical Cost Data Set](https://www.kaggle.com/datasets/mirichoi0218/insurance?resource=download) from Kaggle. The goal is to estimate insurance charges based on patient demographics and personal characteristics, helping hospitals forecast revenue and plan resources.

## Data Source

- `insurance.csv` from Kaggle
- Features:
  - `age`: Age of primary beneficiary
  - `sex`: Gender
  - `bmi`: Body mass index (kg/m²)
  - `children`: Number of dependents
  - `smoker`: Smoker status
  - `region`: US region
  - `charges`: Medical insurance costs

## Approach

- **Exploratory Data Analysis:** Summary statistics, distribution plots, and correlation analysis.
- **Feature Engineering:** Log transformation of `charges` to address skewness; conversion of categorical variables.
- **Modeling:** Linear regression to predict log-transformed charges using age, BMI, and smoker status.
- **Residual Diagnostics:** Analysis of model errors and identification of non-linear patterns.
- **Segmented Modeling:** Separate models for smokers and non-smokers to improve prediction accuracy.
- **Evaluation:** Calculation of MSE, RMSE, and R² on training and test sets.

## Key Findings

- Smoker status is the most significant predictor of insurance costs.
- The model explains ~74% of the variance in log-transformed charges.
- Separate models for smokers and non-smokers can improve accuracy.

## Notebook

View [PredictingInsuranceCosts](/GP18_PredictingInsuranceCosts/PredictingInsuranceCosts.ipynb) Notebook.

## Requirements

- Python 3.x
- pandas
- numpy
- matplotlib
- seaborn
- scikit-learn
- Jupyter Notebook

## Reference

- [Medical Cost Personal Dataset on Kaggle](https://www.kaggle.com/datasets/mirichoi0218/insurance?resource=download)