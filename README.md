# Richemont Marketing usecase

Imagine, you are a data analyst working for a watchmaking company. Your role is to understand the performance of this Maison and to find recommendations to improve its sales.
Can you please,
1. Present the dataset and its main characteristics
2. Use the dataset and answer the following questions :
    - What is a customer's re-purchase rate?
    - How long does it take a customer to repurchase? [The repurchase rate is the proportion of customers who repurchase after a first purchase. In this dataset, the first purchase is the customer's first purchase in their lifetime (i.e., they have not purchased anything before]
    - What other information in the dataset do you think is important to share with marketing teams so that they can use it in their activities?
    - What CRM activations or other marketing levers can be put in place to improve customer lifetime value?

## Pre-requisites

- Have a Google Cloud Platform project enable
- Have the dataset available on Google Sheet.
- Have `gcloud` installed locally and set up with the given GCP project (`brew install gcloud`).
  Optionnally, update `gcloud` with the latest components (`gcloud components update`)
- Have Terraform installed (to create BigQuery resources to host data)
  This can be done with `brew install tfenv && tfenv install latest`
- Have Python installed (`brew install pyenv && brew install pyenv-virtualenv`)

## Looker Studio

Go to the [dedicated Looker Studio dashboard](https://lookerstudio.google.com/reporting/8417fa26-fb1d-47ac-a591-e3f1f3746e78/page/YdZsD) to have a look on the findings and insights of the dataset.