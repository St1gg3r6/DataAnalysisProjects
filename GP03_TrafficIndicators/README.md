# I-94 Traffic Indicators Analysis

## Overview

This project analyzes westbound traffic data from the I-94 Interstate highway, using the [Metro Interstate Traffic Volume dataset](https://archive.ics.uci.edu/ml/datasets/Metro+Interstate+Traffic+Volume) from the UCI Machine Learning Repository. The goal is to identify key indicators of heavy traffic periods.

## Contents

- **Data Exploration:** Initial inspection of the dataset and its features.
- **Traffic Volume Analysis:** Distribution of traffic volume and comparison between day and night periods.
- **Time-Based Indicators:** Investigation of traffic patterns by month, day of week, and hour.
- **Weather Analysis:** Exploration of weather variables and their correlation with traffic volume.
- **Conclusion:** Summary of findings and main indicators of heavy traffic.

## Key Findings

- **Season, day of week, and hour** are strong indicators of heavy traffic.
- **Traffic is heaviest** on weekdays during morning and afternoon rush hours, and in spring to autumn months.
- **Weather variables** (temperature, rain, snow, clouds) show little correlation with traffic volume.

## Notebook

Open the notebook for viewing: [Finding_Heavy_Traffic_Indicators_I94.ipynb](/GP03_TrafficIndicators/Finding_Heavy_Traffic_Indicators_I94.ipynb).

## Requirements

- Python 3.x
- NumPy
- Pandas
- Matplotlib
- Jupyter Notebook

## Reference

- Dataset: [UCI Machine Learning Repository - Metro Interstate Traffic Volume](https://archive.ics.uci.edu/ml/datasets/Metro+Interstate+Traffic+Volume)