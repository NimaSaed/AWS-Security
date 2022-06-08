---
title: AWS Security
subtitle: Xebia Security
author: Yashin Mehaboobe
date: June 2022
theme: Boadilla
classoption: aspectratio=169
---

# AWS Athena

- Serverless service that allows you to query data easily
- Works well with Glue and Glue Catalog
- For example, you could have sensitive data in a data store
    - Glue could come across this data while crawling
    - Glue can then automatically identify the schema of the data
    - Glue could also identify this as sensitive data and put this metadata in the Glue Catalog
    - Athena can be used to query the Glue Catalog to exactly find what sort of confidential information is present.
