# Building a Spam Filter with Naive Bayes

## Overview

This project implements a spam filter for SMS messages using the multinomial Naive Bayes algorithm. The filter is trained to classify messages as spam or ham (non-spam) with at least 80% accuracy, using a dataset compiled by Tiago A Almeida and José Gómez Hidalgo.

## Data Source

- [SMS Spam Collection Dataset](https://archive.ics.uci.edu/dataset/228/sms+spam+collection)  
  Details: [Data composition](http://www.dt.fee.unicamp.br/~tiago/smsspamcollection/#composition)

## Contents

- **Data Exploration:** Load and inspect the dataset, calculate spam/ham proportions.
- **Preprocessing:** Clean text by removing punctuation and converting to lowercase.
- **Vocabulary Creation:** Build a list of unique words from the training data.
- **Feature Engineering:** Count word occurrences for each message.
- **Model Training:** Calculate probabilities for spam and ham messages and for each word.
- **Classification:** Classify new messages using the trained model.
- **Evaluation:** Measure the accuracy of the spam filter on a test set.

## Key Findings

- The spam filter achieved an accuracy of 98.74%, exceeding the target of 80%.
- The model demonstrates strong performance in correctly identifying spam messages.

## Notebook

View [Spam Filter with Naive Bayes](/GP15_NaiveBayesSpamFilter/Spam%20Filter%20with%20Naive%20Bayes.ipynb) Notebook.

## Requirements

- Python 3.x
- pandas
- Jupyter Notebook

## Reference

- [SMS Spam Collection Dataset](https://archive.ics.uci.edu/dataset/228/sms+spam+collection)
- [Original research and data composition](http://www.dt.fee.unicamp.br/~tiago/smsspamcollection/#composition)

> **Note:** The dataset contains real spam messages, which may include offensive content.