# Star Wars Survey Analysis

## Overview

This project analyzes survey data collected by FiveThirtyEight to explore public opinions on the Star Wars film franchise. The main question addressed is whether "The Empire Strikes Back" is considered the best Star Wars movie by survey respondents.

## Data Source

- Survey conducted via SurveyMonkey with 835 responses.
- Dataset available from [FiveThirtyEight's GitHub repository](https://github.com/fivethirtyeight/data/tree/master/star-wars-survey).
- Key columns include respondent demographics, film viewership, fandom, and movie rankings.

## Analysis Steps

- **Data Loading:** Import and inspect the survey dataset.
- **Data Cleaning:** Map Yes/No responses to Boolean values, clean checkbox columns for films seen, and convert ranking columns to numeric types.
- **Feature Engineering:** Rename columns for clarity and usability.
- **Exploratory Analysis:** 
  - Identify the highest ranked and most viewed Star Wars films.
  - Segment results by Star Trek fandom.
  - Visualize findings using bar charts.

## Key Findings

- "The Empire Strikes Back" is the highest ranked film among respondents.
- The original trilogy films are both the most viewed and most highly rated.
- Star Trek fandom does not significantly affect Star Wars film rankings or viewership.

## Notebook

View [Star Wars Survey Analysis](/GP07_StarWarsSurvey/Star%20Wars%20Survey%20Analysis.ipynb) Notebook.

## Requirements

- Python 3.x
- pandas
- numpy
- matplotlib
- Jupyter Notebook

## Reference

- [FiveThirtyEight: America's Favorite Star Wars Movies And Least Favorite Characters](https://fivethirtyeight.com/features/americas-favorite-star-wars-movies-and-least-favorite-characters/)