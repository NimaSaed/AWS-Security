---
title: AWS Security
subtitle: Xebia Security
author: Nima Saed
date: June 2022
theme: Boadilla
classoption: aspectratio=169
---

# Pizza as Service

![](../resources/images/pizzaas.JPG)

# AWS shared responsibility model

- Security of the cloud
- Security in the cloud

# AWS shared responsibility model


```mermaid

graph TD

  subgraph "Security <i>of</i> The Cloud <br/>"

  B[[_________________ Software _________________]]

  B --- C[Compute]
  B --- D[Storage]
  B --- E[Database]
  B --- F[Network]


  C --- K[[_________ Hardware / AWS Global Infra _________ ]]
  D --- K
  E --- K
  F --- K

  K --- L[Regions]
  K --- M[Availability Zones]
  K --- N[Edge Locations]

  end

  style B fill:#F39C12,stroke:#000000,stroke-width:2px
  style K fill:#F39C12,stroke:#000000,stroke-width:2px
  style C fill:#F8C471,stroke:#000000,stroke-width:1px
  style D fill:#F8C471,stroke:#000000,stroke-width:1px
  style E fill:#F8C471,stroke:#000000,stroke-width:1px
  style F fill:#F8C471,stroke:#000000,stroke-width:1px
  style L fill:#F8C471,stroke:#000000,stroke-width:1px
  style M fill:#F8C471,stroke:#000000,stroke-width:1px
  style N fill:#F8C471,stroke:#000000,stroke-width:1px

```

<!-- Presenter Note

This slide provides a high-level overview of the AWS shared responsibility model. AWS is responsible for protecting the global infrastructure that runs all of the services offered in the AWS Cloud. This infrastructure comprises the hardware, software, networking, and facilities that run AWS services.

-->

# AWS shared responsibility model

```mermaid

graph TB

 subgraph "Security <i>in</i> The Cloud"

  b[[____________ Customer Data ____________]]
  b --- c[[Platform, Applications, Identity & Access Management]]
  c --- d[[OPERATING SYSTEM, NETWORK & FIREWALL CONFIGURATION]]

  d --- f(CLIENT-SIDE DATA <br/> ENCRYPTION & DATA <br/> INTEGRITY AUTHENTICATION)
  d --- g(SERVER-SIDE ENCRYPTION <br/> FILE SYSTEM AND/OR DATA)
  d --- h(NETWORKING TRAFFIC PROTECTION <br/> ENCRYPTION, INTEGRITY, IDENTITY)

 end

  f --- A
  g --- A
  h --- A

  A(_________________ The cloud _________________)

  style A fill:#F39C12,stroke:#000000,stroke-width:0px
  style b fill:#5DADE2,stroke:#000000,stroke-width:2px
  style c fill:#5DADE2,stroke:#000000,stroke-width:2px
  style d fill:#5DADE2,stroke:#000000,stroke-width:2px
  style f fill:#AED6F1,stroke:#000000,stroke-width:2px
  style g fill:#AED6F1,stroke:#000000,stroke-width:2px
  style h fill:#AED6F1,stroke:#000000,stroke-width:2px

```

<!-- Presenter Note

As an AWS customer, you can securely provision virtual servers, storage, databases, and desktops in the AWS Cloud. In this process, you are responsible for securing your data, operating systems, networks, platforms, and other resources that you create in the AWS Cloud. You are responsible for protecting the confidentiality, integrity, and availability of your data in the cloud. You must also meet any specific business and/or compliance requirements for your workloads in the cloud. As previously mentioned, this course looks at how AWS deals with security OF the cloud and how you can take care of security IN the cloud.

For more information about the AWS shared responsibility model, see https://aws.amazon.com/compliance/shared-responsibility-model/.

-->
