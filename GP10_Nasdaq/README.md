# Nasdaq Financial Data Analysis

## Overview

This project explores financial metrics for global companies using the Nasdaq Data Link API. The analysis focuses on the Accrued Expenses Turnover metric, which measures how efficiently companies pay off their accrued liabilities. Data is retrieved, cleaned, analyzed, and visualized for the period 2011–2015, with comparisons across companies and regions.

## Contents

- **API Integration:** Retrieve financial statement data from the Nasdaq Data Link API (`MER/F1` table).
- **Data Cleaning:** Select relevant columns and filter for the Accrued Expenses Turnover metric.
- **Feature Engineering:** Map country codes to full names and rename columns for clarity.
- **Trend Analysis:** Visualize changes in Accrued Expenses Turnover over time for individual companies.
- **Regional Analysis:** Compare average Accrued Expenses Turnover across countries.

## Key Findings

- Most companies maintained relatively constant Accrued Expenses Turnover from 2011 to 2015, with some showing significant fluctuations.
- Bahamas had the highest average Accrued Expenses Turnover; USA and Great Britain were similar, while other regions had lower averages.

## Notebook

View [NasdaqFinancialDataAnalysis](/GP10_Nasdaq/NasdaqFinancialDataAnalysis.ipynb) Jupyter Notebook.

## Requirements

- Python 3.x
- pandas
- matplotlib
- requests
- Jupyter Notebook

## Reference

- [Nasdaq Data Link API Documentation](https://docs.data.nasdaq.com/docs/in-depth-usage-1)