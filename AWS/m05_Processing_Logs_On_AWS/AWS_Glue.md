---
title: AWS Security
subtitle: Xebia Security
author: Yashin Mehaboobe
date: June 2022
theme: Boadilla
classoption: aspectratio=169
---

# AWS Glue

![](../resources/images/aws_glue.png)

Image courtesy https://aws.amazon.com/glue/?whats-new-cards.sort-by=item.additionalFields.postDateTime&whats-new-cards.sort-order=desc

- Serverless service for data analytics and transformation
- ETL or Extract, Transform and Load pipelines can be built with Glue
- Can take data from most AWS data stores (RedShift, DynamoDB etc)
- Performs datacrawling on various data sources to identify newly added data
- Can perform automatic schema creation based on data discovered
- Metadata from crawling and schema creation is then added to Glue Data Catalog

# Security in Glue

- Sensitive data detection allows discovery of non compliant data as soon as it enters a data store
- Glue can create alerts when sensitive info is detected
-  For example, a credit card number is added to a RedShift instance can be detected and alerted on using Glue
    - Glue can be configured to redact or replace the data
- Supported info include CC numbers, SSN and phone number
