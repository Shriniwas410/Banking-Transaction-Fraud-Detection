# Fraud Detection

This repository contains SQL scripts for a Fraud Detection system. The system uses historical transaction data to identify potentially fraudulent activities.

#  Description

This project uses BigqueryML,Google Cloud Platform (GCP) service to run the SQL and Model generation. The SQL scripts in this repository are used to query a database of transaction data. The scripts are designed to identify patterns and anomalies that could indicate fraudulent activity.

#  Features

- Data extraction: SQL scripts to extract relevant data from the database.
- Data analysis: SQL scripts to analyze transaction patterns and identify anomalies.
- Fraud detection: SQL scripts to flag potentially fraudulent transactions based on predefined criteria.

#  Setup

1. Setup GCP Environment with Cloud Shell, Google Cloud Storage(GCS) and Bigquery
2. Run the following to download the data file to your project GCS bucket:
```gsutil cp gs://spls/gsp774/archive.zip .```
```unzip archive.zip```
3. In order to make it easier to refer to this file later, create an environment variable for the name of the file:
```export DATA_FILE=PS_20174392719_1491204439457_log.csv```
```export PROJECT_ID=<project_id>```
4. Run the following to create a BigQuery Dataset to store tables and models for this lab called finance in Cloud Shell:
```bq mk --dataset $PROJECT_ID:finance```
```bq load --autodetect --source_format=CSV --max_bad_records=100000 finance.fraud_data gs://$PROJECT_ID/$DATA_FILE```

#  Build

## Explore and investigate the data with BigQuery
   1. Run the queries listed in Discovery.SQL

## Prepare your data
   1. Run the queries listed in Data_cleaning.SQL

## Train an unsupervised model to detect dnomalies
   1. Run the queries listed in Unsupervised_Model.SQL

## Train a supervised machine learning model
   1. Run the queries listed in Supervised_Model.SQL

## Improve your model
   1. Run the queries listed in Improving_Models.SQL

## Evaluate your supervised machine learning models
    1.Run the queries listed in Evaluating_Models.SQL

## Predict fraudulent transactions on test data
    1.Run the queries listed in Prediction.SQL

#  Requirements

- GCP BIgquery, GCS and Cloud Shell access
- Access to a database of transaction data

# Owner
Shriniwas Ramesh Suram (@Shriniwas410)