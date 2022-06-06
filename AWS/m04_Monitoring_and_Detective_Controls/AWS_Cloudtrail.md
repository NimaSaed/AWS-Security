---
title: AWS Security
subtitle: Xebia Security
author: Nima Saed
date: June 2022
theme: Boadilla
classoption: aspectratio=169
---


# AWS CloudTrail

![](../resources/images/aws_cloudtrail.svg)

Track user activity and API usage in your AWS account

- Continuously monitor user activities and record API calls
- Useful for compliance auditing, security analysis, and troubleshooting
- Log files are delivered to Amazon S3 buckets


<!--

AWS CloudTrail is a service that enables governance, compliance, operational auditing, and risk auditing of your AWS account. With CloudTrail, you can log, continuously monitor, and retain account activity and API usage related to actions across your AWS account. Any security detective would love CloudTrail as a service.

CloudTrail can smooth the progress of compliance reporting for enterprises using AWS that require tracking the API calls for one or more AWS accounts. This service can also be configured to maintain security information and event management (SIEM) and resource management. With CloudTrail, it is easy to get a history of AWS API calls for your account, including API calls made via the AWS Management Console, AWS SDKs, command line tools, and higher level AWS services (such as AWS CloudFormation). The AWS API call records that CloudTrail gives enable security examination, resource transformation tracking, and compliance auditing.

CloudTrail is enabled by default on your AWS account. You can use the AWS API call history that CloudTrail produces to track changes to AWS resources, including creation, modification, and deletion. CloudTrail log files containing the information recorded are delivered to Amazon Simple Storage Service (Amazon S3) buckets.

-->

# AWS CloudTrail

![](../resources/images/aws_cloudtrail.svg)

- Capture
- Store
    - s3
    - cloudwatch log
- Act
    - Cloudwatch alarm
    - SNS
- Review


> Cloudtrail is free (management events for first trail), you will pay for storage or AWS SNS.

# AWS CloudTrail

![](../resources/images/aws_cloudtrail.svg)

- Who?
    - Who made the API call?
- Where?
    - Where was the API call made from?
- What?
    - What was the API call, and what resources were affected?
- When?
    - When was the API call made?

# AWS CloudTrail

![](../resources/images/aws_cloudtrail.svg)

Who

```
{
    "Records": [{
        "eventVersion": "1.0",
        "userIdentity": {
            "type": "IAMUser",
            "principalId": "EX_PRINCIPAL_ID",
            "arn": "arn:aws:iam::123456789012:user/Alice",
            "accountId": "123456789012",
            "accessKeyId": "EXAMPLE_KEY_ID",
            "userName": "Alice"
        },
```

# AWS CloudTrail

![](../resources/images/aws_cloudtrail.svg)

When and Where

```
"eventTime": "2019-03-06T21:01:59Z",
        "eventSource": "ec2.amazonaws.com",
        "eventName": "StopInstances",
        "awsRegion": "us-west-2",
        "sourceIPAddress": "205.251.233.176",
        "userAgent": "ec2-api-tools 1.6.12.2",
```

# AWS CloudTrail

![](../resources/images/aws_cloudtrail.svg)

What

```
 "requestParameters": {
       "instancesSet": {
           "items": [{
                "instanceId": "i-ebeaf9e2"
           } ] },
      "force": false },
```

#

```
"responseElements": {
    "instancesSet": {
        "items": [{
            "instanceId": "i-ebeaf9e2",
            "currentState": {
                "code": 64,
                "name": "stopping” },
            "previousState": {
                "code": 16,
                "name": "running” } } ] },
```


# AWS CloudTrail

![](../resources/images/aws_cloudtrail.svg)

Security of logs

- Encryption
- Signature

<!--

Cloudtrail has integrety check, AWS uses sha2 hashing and sha2 rsa digital signature, and uses KMS for encyption

-->
