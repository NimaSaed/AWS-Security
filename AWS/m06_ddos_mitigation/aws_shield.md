---
title: AWS Security
subtitle: Xebia Security
author: Nima Saed
date: June 2022
theme: Boadilla
classoption: aspectratio=169
---

# AWS Sheild

![](../resources/images/aws_shield.svg)

- Always-on detection
- Network and Transport layer protection
- Integration with Amazon Route 53, Amazon CloudFront, and ELB
- Standard vs. Advanced

<!--

AWS Shield is a managed DDoS protection service that safeguards web applications that run on AWS. AWS Shield provides always-on detection and automatic inline mitigations that minimize application downtime and latency, so there is no need to engage AWS Support to benefit from DDoS protection.

There are two tiers of AWS Shield: Standard and Advanced. All AWS customers benefit from the automatic protections of AWS Shield Standard, at no additional charge. AWS Shield Standard defends against most common, frequently occurring network and transport layer DDoS attacks. For higher levels of protection against attacks targeting your web applications running on Amazon Elastic Compute Cloud (Amazon EC2), Elastic Load Balancing (ELB), Amazon CloudFront, and Amazon Route 53 resources, you can subscribe to AWS Shield Advanced.

-->

# AWS Sheild Standard

![](../resources/images/aws_shield.svg)

- Provides always-on network flow monitoring, which inspects incoming traffic to AWS and uses a combination of traffic signatures, anomaly algorithms, and other analysis techniques to detect malicious traffic in real-time
- Automated mitigation techniques are built in, which gives you protection against common, most frequently occurring infrastructure attacks at layers 3 and 4
- Automatic mitigations are applied inline to your applications, so there is no latency impact
- Always-on detection and inline mitigation minimize application downtime
- You do not need to engage AWS Support to receive DDoS protection.

# AWS Sheild

![](../resources/images/aws_shield.svg)

|  | AWS Shield Standard | AWS Shield Advanced |
| ---: | :---: | :---: |
| Always-on detection | X | X |
| Automatic inline mitigation | X | X |
| Layer 3 and 4 protection | X | X |
| Expanded DDoS attack protection for specific services |  | X |
| 24x7 DDoS Response Team |  | X |
| Cost protection for DDoS spikes |  | X |
| Access to real-time reports |  | X |

<!--

All AWS customers benefit from the automatic protections of AWS Shield Standard, at no additional charge. AWS Shield Standard defends against most common, frequently occurring network and transport layer DDoS attacks that target your website or applications. While AWS Shield Standard helps protect all AWS customers, you get particular benefit if you are using Amazon CloudFront and Amazon Route 53. These services receive comprehensive availability protection against all known infrastructure (Layer 3 and 4) attacks.

Here are some of the features of AWS Shield Standard:
- Provides always-on network flow monitoring, which inspects incoming traffic to AWS and uses a combination of traffic signatures, anomaly algorithms, and other analysis techniques to detect malicious traffic in real-time
- Automated mitigation techniques are built in, which gives you protection against common, most frequently occurring infrastructure attacks at layers 3 and 4
- Automatic mitigations are applied inline to your applications, so there is no latency impact
- Always-on detection and inline mitigation minimize application downtime
- You do not need to engage AWS Support to receive DDoS protection.

For higher levels of protection against DDoS attacks, AWS offers AWS Shield Advanced. Here are some of the features of AWS Shield Advanced:
Provides expanded DDoS attack protection for web applications running on the following resources: Amazon EC2, ELB, Amazon CloudFront, Amazon Route 53, AWS Global Accelerator. As an example of this added protection, if you use Shield Advanced to protect an Elastic IP address, during an attack Shield Advanced will automatically deploy your network ACLs to the border of the AWS network, which allows Shield Advanced to provide protection against larger DDoS events.

Gives you 24x7 access to the AWS DDoS Response Team (DRT) and protection against DDoS related spikes in your EC2, ELB, CloudFront or Route 53 charges
Exclusive access to advanced, real-time metrics and reports for extensive visibility into attacks on your AWS resources.

-->
