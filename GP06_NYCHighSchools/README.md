# NYC High Schools Data Analysis

## Overview

This project analyzes data from New York City public high schools to uncover factors that correlate with SAT scores. Multiple datasets are combined, cleaned, and explored to investigate relationships between SAT performance and variables such as school safety, demographics, race, gender, and AP exam participation.

## Contents

- **Data Loading & Cleaning:** Import and preprocess multiple CSV datasets (SAT results, AP scores, class size, demographics, graduation rates, surveys, and school directory).
- **Feature Engineering:** Create new columns (e.g., total SAT score, school district, AP participation rate).
- **Data Merging:** Combine datasets using the DBN (school identifier).
- **Exploratory Analysis:** 
  - Correlation analysis between SAT scores and survey responses.
  - Investigation of safety perceptions, race, gender, and AP participation.
  - Visualization of key relationships using bar and scatter plots.
- **Key Findings:** 
  - Positive correlation between SAT scores and student perceptions of safety and academic standards.
  - SAT scores tend to be higher in schools with greater percentages of White and Asian students, and lower in schools with higher percentages of Hispanic students.
  - Gender and AP participation show weak or unclear correlations with SAT scores.

## Notebook

Open [NYC High Schools](/GP06_NYCHighSchools/NYC%20High%20Schools.ipynb) for viewing.

## Requirements

- Python 3.x
- pandas
- numpy
- matplotlib
- Jupyter Notebook

## Reference

- [NYC Department of Education Data](https://data.cityofnewyork.us/)