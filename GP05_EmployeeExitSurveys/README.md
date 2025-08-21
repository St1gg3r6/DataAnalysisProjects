# Employee Exit Survey Analysis

## Overview

This project analyzes exit survey data from the Department of Education, Training and Employment (DETE) and the Technical and Further Education (TAFE) institute in Queensland, Australia. The goal is to investigate whether employees who resigned were dissatisfied, and how factors like length of service and age relate to resignation due to dissatisfaction.

## Key Questions

- Are employees with shorter service periods resigning due to dissatisfaction? What about those with longer service?
- Are younger employees resigning due to dissatisfaction? What about older employees?

## Approach

- **Data Cleaning:** Standardize column names, handle missing values, and drop unnecessary columns.
- **Filtering:** Focus on records where the reason for leaving is 'Resignation'.
- **Feature Engineering:** Calculate length of service and categorize it.
- **Dissatisfaction Identification:** Create indicators for dissatisfaction based on survey responses.
- **Analysis & Visualization:** Compare dissatisfaction rates across service categories.

## Notebook

View Notebook: [Employee Exit Survey Analysis](/GP05_EmployeeExitSurveys/Employee%20Exit%20Survey%20Analysis.ipynb).

## Requirements

- Python 3.x
- pandas
- numpy
- matplotlib
- Jupyter Notebook

## Results

- Employees with less than 3 years of service ('New') had the lowest proportion of resignations due to dissatisfaction.
- The analysis provides insights into patterns of dissatisfaction among departing employees.

## Reference

- [DETE and TAFE Exit Survey Data](https://data.gov.au/dataset/ds-queensland-education-exit-surveys)