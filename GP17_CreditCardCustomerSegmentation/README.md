# Credit Card Customer Segmentation

## Overview

This project segments a credit card company's customers into distinct groups using the K-means clustering algorithm. The goal is to help the company apply targeted business strategies for each customer segment based on their demographic and behavioral characteristics.

## Data Source

- `customer_segmentation.csv` provided by the company's data engineering team.
- Features include: customer ID, age, gender, dependents, education level, marital status, estimated income, months as customer, relationship count, inactivity, credit limit, transaction amount, transaction count, and utilization ratio.

## Approach

- **Data Exploration:** Initial inspection, correlation analysis, and visualization of feature distributions.
- **Feature Engineering:** Transformation of categorical variables (`gender`, `education_level`, `marital_status`) for modeling.
- **Scaling:** Standardization of features for clustering.
- **Modeling:** Application of K-means clustering, selection of optimal cluster count using inertia analysis.
- **Analysis:** Assignment of cluster labels, visualization of cluster characteristics, and summary of key differences between groups.

## Key Findings

- Six customer segments were identified, each with distinct profiles in terms of income, credit limit, transaction behavior, and demographics.
- Example highlights:
  - Cluster 5: High income, high credit limit, mostly male, lower spend per transaction.
  - Cluster 2: Low income, high card use, mostly married and female.
  - Cluster 6: Low earners, low credit limit, mostly single females.

## Notebook

View [Credit Card Customer Segmentation](/GP17_CreditCardCustomerSegmentation/Credit%20Card%20Customer%20Segmentation.ipynb) Notebook.

## Requirements

- Python 3.x
- pandas
- numpy
- matplotlib
- seaborn
- scikit-learn
- Jupyter Notebook

## Reference

- K-means clustering algorithm documentation: [scikit-learn](https://scikit-learn.org/stable/modules/generated/sklearn.cluster.KMeans.html)