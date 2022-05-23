---
title: AWS Security
subtitle: Xebia Security
author: Nima Saed
date: June 2022
theme: Boadilla
classoption: aspectratio=169
---

# Intro


# Security design principles

AWS provides you the following in regards to your cloud resources and workloads:

- Controllability
- Auditability
- Visibility
- Agility
- Automation


<!-- Presenter Note:

Security is a top priority in anyone’s list, especially in a cloud environment. The same security models used today in your environment may also be brought over to the cloud. AWS offers several different services and tools that provide you with controllability, auditability, and visibility into your cloud resources and workloads.

AWS also offers agility and automation, which are crucial for processes like incident response.

For example, the AWS Config service can help you track your AWS resources, granting you visibility into your inventory and your user and application activity.  There’s also AWS CloudTrail, which can help you answer questions such as, “What actions did a specific user take over a given period of time?” and “Which resource was affected by that action and from which IP address?” In a traditional environment, normally it would be difficult to have this level of detail for all completed actions.

In the cloud, there are a number of principles that can help you strengthen your security. In the next several slides, we will identify these principles, which can help guide your conversation around security and compliance.

-->

# Security design principles

Apply principle of least privilege

- Grant access as needed
- Separation of duties
- Avoid long-term credentials

<!-- Presenter Note 

An organizational security culture should be built on the principle of least privilege and strong authentication. Only grant access to data and other resources to the people who really need that access. You can start with denying access to everything and grant access as needed, based on job role. Enforcing separation of duties with appropriate authorization for each interaction with your AWS resources is a security best practice. Expectations need to be set on how authority will be delegated down through software engineers, operations staff, and other job functions involved in cloud adoption. By centralizing privilege management and reducing or even eliminating reliance on long-term credentials, you can diminish your attack surface area.

-->

# Security design principles

Enable traceability

- Monitor actions and changes
- Leverage logs and metrics
- Audit your cloud resources

<!-- Presenter Note

With AWS, you can monitor, alert, and audit actions and changes to your environment in real time. AWS provides native logging as well as services that you can leverage to provide greater visibility in near-real time for occurrences in your environment. You can use these tools to integrate into your existing logging and monitoring solutions for end-to-end resolution of security-related activity. Knowing what workloads are deployed and operational allows you to audit and ensure that the environment is operating at the security governance levels expected and demanded by the security standards.

-->

# Security design principles

Secure all layers

- Defense-in-depth approach
- Use different AWS services

<!-- Presenter Note

Rather than just focusing on the protection of a single outer layer, apply a defense-in-depth approach with other security controls. This means applying security to all layers, such as your network, application, and data store. For example, you may require users to strongly authenticate to an application. In addition, ensure that users come from a trusted network path and require access to the decryption keys to process encrypted data. One of the benefits of using AWS is that our services are also built for integration. You may use several AWS services together to provide the most secure environment for your data and resources.

--> 

# Security design principles

Automate security

- Automate security routine tasks with APIs
- Infrastructure as code

<!-- Presenter Note

At AWS, we purpose-build security tools, which allows us to automate many of the routine tasks security experts normally spend time on. This means AWS security experts can spend more time focusing on measures to increase the security of your AWS Cloud environment. Security engineering and operations functions can be automated using a comprehensive set of APIs and tools. Identity management, network security and data protection, and monitoring capabilities can be fully automated and delivered using popular software development methods you already have in place. Rather than having people monitoring your security position and reacting to an event, automation enables your system to monitor, review, and initiate a response.

In AWS, you can turn your infrastructure into code. This allows you to automate the creation of trusted environments for conducting deeper investigations and forensics. You can run incident response simulations and use tools with automation to increase your speed for detection, investigation, and recovery. By automating deployments and maintenance, you can remove operator access to reduce your attack surface area.

-->

# Security design principles

Protect data in transit and at rest

- Use encryption and access controls
- Classify your data with tagging
- Leverage VPN and TLS connections

<!-- 

Safeguarding data is a critical piece of building and operating information systems. AWS provides services and features giving you several options to protect your data at rest and in transit. Safeguards include fine-grained access controls to objects, creating and controlling the encryption keys used to encrypt your data, selecting appropriate encryption methods, integrity validation, and appropriate retention of data. Classifying your data into sensitivity levels by implementing a tagging schema can help you manage protection. Constructing mechanisms to protect data in transit, such as using VPN and TLS connections, is also a security best practice.

--> 

# Security design principles
# Security design principles

