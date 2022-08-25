TODO:

- AWS config - looking for security group that has open ports 0.0.0.0/32 - trigger lambda (python/node - boto3 ) edit the security group disable it/fix it.
- cloudwatch - - CPU load can be indicator of malware or malicious activity
- Security hub finding notify cloud watch and send notification or trigger lambda function.
- Dashboard creation for WAF https://aws.amazon.com/blogs/security/deploy-dashboard-for-aws-waf-minimal-effort/
- A chapter about SSM secrets, AWS secret manager, KMS and CloudHSM.

# AWS Security Champion

AWS Security Champion is about boosting your skills as a cloud security expert.

By the end of these two days of training, you will be better equipped to build secure application infrastructures and protect applications and data from common security threats.

You’ll be able to perform and automate security checks and configure authentication and permissions for applications and resources. Monitor AWS resources and respond to incidents. And finally, capture and process logs for deep investigation of security incidents.

## Day 1

### m01 Security on AWS

- [security design principles](./m01_Security_on_AWS/AWS_Security_Design_Principles.md)
- [shared responsibility model](./m01_Security_on_AWS/AWS_Shared_Responsibility_Model.md)

### m02 Identity and Access management

- [IAM Introduction](./m02_Identity_and_Access_management/IAM_introduction.md)
- [IAM Advance](./m02_Identity_and_Access_management/IAM_advance.md)
- [IAM Access Analyser](./m02_Identity_and_Access_management/IAM_access_analyser.md)

> [Lab 2.1](./m02_Identity_and_Access_management/lab2-1.md) - Understanding IAM

> [Lab 2.2](./m02_Identity_and_Access_management/lab2-2.md) - IAM Permissions Boundary

### m03 Infrastructure Security

- [VPC Security](./m03_Infrastructure_Security/VPC_Security.md)
    - VPC Security Features
    - VPC FlowLog
    - VPC Traffic Mirroring
    - Forensics on AWS, Instance Isolation
- [Amazon Inspector (Automate vulnerability management)](./m03_Infrastructure_Security/Amazon_inspector.md)

> [Lab 3.1](./m03_Infrastructure_Security/lab3-1.md) - Securing VPC resources with security group

> [Lab 3.2](./m03_Infrastructure_Security/lab3-2.md) - AWS Traffic Monitoring

> [Lab 3.3](./m03_Infrastructure_Security/lab3-3.md) - Using SSM and Amazon Inspector

## Day 2

### m04 Monitoring and Detective Controls

- [Amazon CloudWatch and EventBridge](./m04_Monitoring_and_Detective_Controls/Amazon_CloudWatch.md)
- [Amazon CloudTrail](./m04_Monitoring_and_Detective_Controls/AWS_Cloudtrail.md)
- [Amazon GuardDuty](./m04_Monitoring_and_Detective_Controls/AWS_GuardDuty.md)
- [AWS Security Hub](./m04_Monitoring_and_Detective_Controls/AWS_Security_Hub.md)
- [Amazon Detective](./m04_Monitoring_and_Detective_Controls/Amazon_Detective.md)

> [Lab 4.1](./m04_Monitoring_and_Detective_Controls/lab4-1.md) - VPC Flow Logs on CloudWatch

> [Lab 4.2](./m04_Monitoring_and_Detective_Controls/lab4-2.md) - Amazon EventBridge, Inspector and SNS

### m05 Processing log on AWS

- [Amazon Kinesis](./m05_Processing_Logs_On_AWS/AWS_Kinesis.md)
- [Amazon Athena](./m05_Processing_Logs_On_AWS/AWS_Athena.md)
- [AWS Glue](./m05_Processing_Logs_On_AWS/AWS_Glue.md)

<!-- >> Lab 5 - Web Server Log Analysis with Amazon Kinesis and Amazon Athena -->

### m06 DDoS mitigation

- [AWS WAF](./m06_ddos_mitigation/aws_waf.md)
- [AWS Shield](./m06_ddos_mitigation/aws_shield.md)

> [Lab 6.1](./m06_ddos_mitigation/Lab6.1.md) WAF Setup for a Application Loadbalancer

### m07 Incident Response Essentials

- [AWS Config](./m07_Incident_Response_Essentials/AWS_Config.md)
<!-- - AWS Lambda and event-driven response system -->

<!-- >> Lab 6 - Monitor and Respond with AWS Config -->

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
