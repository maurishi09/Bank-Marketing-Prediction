# Bank Marketing Prediction Pipeline

An end-to-end machine learning pipeline predicting whether a customer will subscribe to a term deposit, based on a banking marketing dataset — built across SQL, Python, and Power BI.

## What this project does

Banks running marketing campaigns want to know which customers are actually likely to say yes before they call. This project builds that prediction: given a customer's profile and campaign history, it predicts the likelihood they'll subscribe — turning a guessing-game outreach list into a prioritized one.

## Pipeline

1. **SQL** — initial data setup and exploration (`SQLQuery 2.sql`)
2. **Python** (`Assignment_3 (1).ipynb`) — data cleaning, encoding categorical features, scaling numerical features, and training a classification pipeline with scikit-learn
3. **Power BI** (`Power BI Assignment 3.pbix`) — turning model results into a stakeholder-facing dashboard

## Dashboard

![Dashboard overview](AS3%201.jpeg)
![Campaign breakdown](AS3%202.jpeg)
![Prediction results](AS3%203.jpeg)
![Customer segments](AS3%204.jpeg)

## Why this project

Most of my earlier work was exploratory — dashboards and analysis reporting on what already happened. This one predicts what's likely to happen next, and carries the result through to a business-ready dashboard rather than stopping at the model. It's the most complete, full-pipeline project in my portfolio: raw data in, a decision-ready tool out.

## Files

| File | Purpose |
|---|---|
| `Assignment_3 (1).ipynb` | Data cleaning, preprocessing, and model training |
| `SQLQuery 2.sql` | Initial data setup/exploration |
| `Assignment 3.csv` | Source dataset |
| `Power BI Assignment 3.pbix` | Interactive dashboard (open in Power BI Desktop) |
| `AS3 1-4.jpeg` | Dashboard screenshots, for viewing without Power BI installed |

## Stack

SQL · Python (pandas, scikit-learn) · Power BI
