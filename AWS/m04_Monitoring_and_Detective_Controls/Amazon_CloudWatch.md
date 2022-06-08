# Amazon CloudWatch

![](../resources/images/aws_cloudwatch.svg)

Monitor and report on your AWS resources and applications

- Operational visibility and insight
- Collect metrics in AWS and on premises
- Infrastructure monitoring and troubleshooting
- Customize logs and events

# Amazon CloudWatch

![](../resources/images/aws_cloudwatch.svg)

Enable flow log on CloudWatch

- Create a IAM role
- Create a Cloudwatch log group
- Create VPC flow log

https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs-cwl.html


# Amazon CloudWatch

![](../resources/images/aws_cloudwatch.svg)

Enable flow log on CloudWatch

Policy

```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:DescribeLogStreams"
      ],
      "Resource": "*"
    }
  ]
}   
```

# Amazon CloudWatch

![](../resources/images/aws_cloudwatch.svg)

Enable flow log on CloudWatch

Role

```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "vpc-flow-logs.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
} 
```

# Amazon EventBrdige

![](../resources/images/aws_eventbridge.svg)

Amazon EventBridge is a serverless event bus service that makes it easy to connect your applications with data from a variety of sources. 

# Amazon EventBrdige

![](../resources/images/aws_eventbridge_1.jqg.png)
