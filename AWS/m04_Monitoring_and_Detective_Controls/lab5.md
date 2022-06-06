# EvenBridge, Inspector and SNS

- Create SNS Topic and Subscription (using Email)
- Create Amazon EventBridge rule
- A rule with an event pattern
- Event source is an AWS Service 
- AMS Service is Inspector 2 
- Event type is Inspector 2 finding 
- Custom pattern using this example 

# 

Event Pattern

```
{
  "source": ["aws.inspector2"],
  "detail-type": ["Inspector2 Finding"],
  "detail": {
    "severity": ["HIGH"]
  }
}
```

- Target is AWS Service (SNS)
- Select your topic from SNS

# Configure input transformer


## Input Path
```
{
  "source": "$.source",
  "account": "$.account",
  "severity": "$.detail.severity",
  "instance_id": "$.detail.resources[0].id",
  "region": "$.detail.resources[0].region"
}
```

## Template

```
Security Issue:

Reported from <source>
Account#: 		<account>
Secerity: 		<severity>
Instance ID: 	<instance_id>
Region: 		<region>
```
