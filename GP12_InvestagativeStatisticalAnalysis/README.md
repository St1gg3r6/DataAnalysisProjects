# Investigative Statistical Analysis of Movie Ratings

## Overview

This project analyzes movie ratings data to investigate potential bias in Fandango's star rating system, as highlighted by Walt Hickey's FiveThirtyEight article. The analysis compares ratings for films released in 2015 (from Hickey's original dataset) and 2016 (from a follow-up dataset) to determine if Fandango addressed the rounding issue in their ratings.

## Contents

- **Introduction:** Background on the Fandango ratings controversy and project goals.
- **Data Sources:**  
  - [Fandango Score Comparison (2015)](https://github.com/fivethirtyeight/data/tree/master/fandango)  
  - [Movie Ratings 2016-17](https://github.com/mircealex/Movie_ratings_2016_17)
- **Data Cleaning:** Filtering and aligning datasets for comparison.
- **Statistical Analysis:**  
  - Distribution comparison using kernel density plots  
  - Frequency tables and summary statistics (mean, median, mode)
- **Visualization:** Plots illustrating changes in rating distributions and summary statistics.
- **Conclusion:** Discussion of findings and limitations.

## Key Findings

- Fandango's star ratings for 2016 films show a slight downward trend compared to 2015.
- The proportion of films rated 4.5 and 5 stars decreased, while 3.5 and 4 star ratings increased.
- It remains unclear whether the change is due to improved rating accuracy or differences in film quality.

## Notebook

View [Investigative Statistical Analysis of Movie Ratings](/GP12_InvestagativeStatisticalAnalysis/Investigative%20Statistical%20Analysis%20of%20Movie%20Ratings.ipynb) Notebook.

## Requirements

- Python 3.x
- pandas
- matplotlib
- Jupyter Notebook

## Reference

- [FiveThirtyEight: Fandango Movie Ratings Investigation](https://fivethirtyeight.com/features/fandango-movies-ratings/)
- [Original and follow-up datasets on GitHub](https://github.com/fivethirtyeight/data/tree/master/fandango), [Movie Ratings 2016-17](https://github.com/mircealex/Movie_ratings_2016_17)