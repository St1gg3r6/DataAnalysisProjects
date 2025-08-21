# Stack Exchange Tag Analysis

## Overview

This project analyzes Data Science Stack Exchange questions to identify the most popular topics and trends in data science. By examining tags, view counts, and question frequency, the analysis helps determine what content is most sought after by the data science community.

## Contents

- **Data Collection:**  
  Data exported from Stack Exchange Data Explorer (`2019_questions.csv` and `all_questions.csv`).
- **Data Cleaning:**  
  Handling missing values, parsing tags, and converting datatypes for analysis.
- **Tag Popularity:**  
  Identifying the most frequently used and most viewed tags.
- **Tag Relationships:**  
  Exploring co-occurrence of top tags and visualizing their relationships.
- **Trend Analysis:**  
  Investigating trends in deep learning questions over time.

## Key Findings

- Machine learning and Python-related tags dominate both usage and views.
- Deep learning topics have grown steadily and now represent a significant proportion of questions.
- Top tags often co-occur, indicating strong relationships between popular topics.

## Notebook

View [StackExchangeTagAnalysis](/GP11_StackExchangeTags/StackExchangeTagAnalysis.ipynb) Notebook.

## Requirements

- Python 3.x
- pandas
- numpy
- matplotlib
- seaborn
- scikit-learn
- Jupyter Notebook

## Reference

- [Data Science Stack Exchange](https://datascience.stackexchange.com/)
- [Stack Exchange Data Explorer](https://data.stackexchange.com/)