# AWS Training Contents

## Day 1

### m01 Security on AWS

- [security design principles](./m01_Security_on_AWS/AWS_Security_Design_Principles.md)
- [shared responsibility model](./m01_Security_on_AWS/AWS_Shared_Responsibility_Model.md)

### m02 Identity and Access management

- [IAM Introduction](./m02_Identity_and_Access_management/IAM_introduction.md)
- [IAM Advance](./m02_Identity_and_Access_management/IAM_advance.md)
- [IAM Access Analyser](./m02_Identity_and_Access_management/IAM_access_analyser.md)

> [Lab 1](./m02_Identity_and_Access_management/lab1.md) - Understanding IAM

### m03 Infrastructure Security

- [VPC Security](./m03_Infrastructure_Security/VPC_Security.md)
    - VPC Security Features
    - VPC FlowLog
    - VPC Traffic Mirroring
    - Forensics on AWS, Instance Isolation
- [Amazon Inspector (Automate vulnerability management)](./m03_Infrastructure_Security/Amazon_inspector.md)

> [Lab 2](./m03_Infrastructure_Security/lab2.md) - Securing VPC resources with security group

> [Lab 3](./m03_Infrastructure_Security/lab3.md) - AWS Traffic Monitoring

> [Lab 4](./m03_Infrastructure_Security/lab4.md) - Using SSM and Amazon Inspector

## Day 2

### m04 Monitoring and Detective Controls

- Amazon CloudWatch
- [Amazon CloudTrail](./m04_Monitoring_and_Detective_Controls/AWS_Cloudtrail.md) (Track user activity and API usage)
- [Amazon GuardDuty](./m04_Monitoring_and_Detective_Controls/AWS_GuardDuty.md) (Protect AWS accounts with intelligent threat detection)
- [AWS Security Hub](./m04_Monitoring_and_Detective_Controls/AWS_Security_Hub.md) (Automate AWS security checks and centralise security alerts)
- Amazon Detective

> [Lab 5](./m04_Monitoring_and_Detective_Controls/lab5.md) - Amazon EventBridge, Inspector and SNS

> [Lab 6](./m04_Monitoring_and_Detective_Controls/lab6.md) - Amazon EventBridge, Amazon GuardDuty  and AWS Lambda

### Processing log on AWS

- Amazon Kinesis (Interactive analytics)
- Amazon Athena (Interactive analytics)
- AWS Glue (Serverless data integration service)

> Lab 5 - Web Server Log Analysis with Amazon Kinesis and Amazon Athena

### DDoS mitigation

- AWS Shield (Managed Distributed Denial of Service)
- AWS WAF (Filter Malicious Web Traffic)

### Incident Response Essentials

- AWS Config (Record and evaluate configurations of your AWS resources)
- AWS Lambda and event-driven response system

> Lab 6 - Monitor and Respond with AWS Config

## Proposed Timeline

### Day 1

```
09:00-09:15     Introduction and goals of today
09:15-09:45     Security Design Principles on AWS
09:45-10:30     Identity and Access management Part 1
10:30-10:45     Break
10:45-11:00     Identity and Access management Part 2
11:00-12:00     Lab 1: Understanding IAM
12:00-12:45     Lunch
12:45-13:45     Infrastructure Security Part 1
13:45-14:15     Lab 2: Securing VPC recourses with security group
14:15-14:30     Break
                Lab 3: AWS Traffic Monitoring
14:30-15:30     Infrastructure Security Part 2
15:30-17:00     Lab 3: Using SSM and Amazon Inspector
```

### Day 2

```
09:00-09:15     Introduction and goals of today
09:00-10:45     Monitoring and Detective Controls
10:45-11:00     Break
11:00-12:00     Processing log on AWS Part 1
12:00-12:45     Lunch
12:45-13:30     Processing log on AWS Part 1
13:30-14:30     Lab 4 – Web Server Log Analysis with Amazon Kinesis and Amazon Athena
14:30-14:45     Break
14:45-15:30     DDoS mitigation
15:30-16:00     Incident Response Essentials
16:00-16:30     Lab 5: Monitor and Respond with AWS Config
16:30-17:00     Recap Day 1 and Day 2
```


Getting AWS services' Logo/Icon [here](https://awsicons.dev)
