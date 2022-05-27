# VPC Security

![](../resources/images/aws_network_security.png)

<!-- Presenter Note

AWS provides a range of networking services that enable you to create a logically isolated network that you define, establish a private network connection to the AWS Cloud, use a highly available and scalable DNS service, and deliver content to your end users with low latency at high data transfer speeds with a content delivery web service. Security features within Amazon VPC include security groups, network access control lists (ACLs), routing tables and subnets, and gateways. Each of these items is complementary to providing a secure, isolated network that can be extended through selective enabling of direct Internet access or private connectivity to another network. ELB devices also assist in the overall security of the VPC. Amazon EC2 instances running within an Amazon VPC inherit all of the VPC security benefits described above. In this section, we will review each one of the items displayed here.

You can use a NAT (Network Address Translation) device to enable instances in a private subnet to connect to the internet (for example, for software updates) or other AWS services, but prevent the internet from initiating connections with the instances. A NAT device forwards traffic from the instances in the private subnet to the internet or other AWS services, and then sends the response back to the instances. When traffic goes to the internet, the source IPv4 address is replaced with the NAT device’s address and similarly, when the response traffic goes to those instances, the NAT device translates the address back to those instances’ private IPv4 addresses.



AWS offers two kinds of NAT devices: a NAT gateway and a NAT instance. We recommend NAT gateways, as they provide better availability and bandwidth over NAT instances. The NAT gateway service is also a managed service that does not require your administration efforts. A NAT instance is launched from a NAT AMI. You can choose to use a NAT instance for special purposes.

For more information on NAT devices used by AWS, see https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html.

-->

# VPC Security

![](../resources/images/lock.svg)

Security Groups

- Acts as a virtual firewall for instances
- Stateful protection
- Only allow ingress and egress rules
- Configuration is needed to allow communication

<!--

A security group acts as a virtual firewall for your instance to control inbound and outbound traffic. When you launch an instance in a VPC, you must specify a security group for the instance. If you don't specify a particular group at launch time, the instance is automatically assigned to the default security group for the VPC. Security groups are stateful: responses to allowed inbound traffic are allowed to flow outbound regardless of outbound rules, and vice versa. For example, if you allow traffic on incoming port 80, the outgoing port 80 will be automatically opened. Traffic can be restricted by IP protocol, service port, and source/destination IP address.

For each security group, you add rules that control the inbound traffic to instances and a separate set of rules that control the outbound traffic. No inbound traffic is allowed until you configure inbound rules to your desired security group. If don’t specify a configured security group for your instance, AWS will assign your instance a default security group that will allow traffic to any other instance that is assigned the default security group. You can remove the default rule and add outbound rules that allow specific outbound traffic only. You can specify only Allow rules, but not Deny rules.

You can have up to 50 ingress and 50 egress rules per security group. If you have to apply more than 50 rules to an instance, you can associate up to five security groups with each network interface. A VPC can have up to 500 security groups. By default, instances will not be able to talk to each other unless security groups are modified. Ingress and egress rules are allowed.

For more information on VPC security groups, see https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html.

-->

# VPC Security

![](../resources/images/jail.svg)

Network Access Control List

- Created and managed at the subnet level
- Stateless traffic filters
- Rules to deny list or allow list traffic

<!--

To further add a layer of security within your VPC, you can configure network ACLs. These are stateless traffic filters that act as a network firewall; responses to allowed inbound traffic are subject to the rules for outbound traffic (and vice versa). These ACLs can contain ordered rules to allow or deny traffic based upon IP protocol, service port, and/or source/destination IP address.

Your VPC automatically comes with a modifiable default network ACL, which allows all inbound and outbound traffic. You can create custom network ACLs, which start out closed (permitting no traffic) until you add a rule. Each subnet must be associated with a network ACL. If you don't explicitly associate a subnet with a network ACL, the subnet is automatically associated with the default network ACL. A network ACL can be associated to multiple subnets within the same VPC. The best use of NACLs is to categorically deny things, not allow them. The classic example for this is to configure a rule like this: "no IP from the public subnet can connect to the database subnet at all.”

In this example, instances in the subnet can communicate with each other, and are accessible from a trusted remote computer. The remote computer may be a computer in your local network or an instance in a different subnet or VPC that you use to connect to your instances in order to perform administrative tasks. Your network ACL rules allow access from the IP address of your remote computer (172.31.1.2/32). All other traffic from the internet or other networks is denied.

-->

# VPC Security

Defence in depth

![](../resources/images/aws_vpc_defence_in_depth.png)

<!-- Presenter Note

The following diagram illustrates the layers of security provided by security groups and network ACLs. By having a network ACL and security groups in place, two layers of defense have been incorporated. This security strategy is called “Defense in Depth” where several layers of security are used. In case one fails, the remaining layers are used for protection. For example, traffic from an internet gateway is routed to the appropriate subnet using the routes in the routing table. The rules of the network ACL associated with the subnet control which traffic is allowed to the subnet. The rules of the security group associated with an elastic network interface control which traffic is allowed to the instance.

-->


# Security Group VS Network ACLs

| Security Group | Network ACLs |
| :---: | :---: |
| Associated to an ENI and implemented in the hypervisor | Associated to a subnet and implemented in the network |
| Supports Allow rules only | Supports Allow rules and Deny rules |
| Stateful | Stateless |
| All rules are evaluated before deciding whether to allow traffic | All rules are processed in order when deciding whether to allow traffic |
| Needs to be manually assigned to instances | Automatically applied when instances are added to subnet |
| Requires configuration to allow communication | Allows communication by default |

# VPC Security

![](../resources/images/book.svg)

Flow Logs

# VPC Security

![](../resources/images/aws_vpc_flow_logs.png)

# VPC Security

Flow logs Format

<!--
|version|account-id|interface-id|srcaddr|dstaddr|srcport|dstport|protocol|packets|bytes|start|end|action|log-status|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|2|565276856658|eni-090cca3c4478b02b2|172.31.2.88|185.199.109.153|50014|443|6|13|1572|1653642177|1653642227|ACCEPT|OK|
-->

2 565276856658 eni-090cca3c4478b02b2 172.31.2.88 185.199.109.153 50014 443 6 13 1572 1653642177 1653642227 ACCEPT OK

# VPC Security

Flow logs translation

version account-id interface-id srcaddr dstaddr srcport dstport protocol packets bytes start end action log-status

2 565276856658 eni-090cca3c4478b02b2 172.31.2.88 185.199.109.153 50014 443 6 13 1572 1653642177 1653642227 ACCEPT OK

<!-- Presenter Note

From this, we can understand
there is an accepted inbound https from 172.31.2.88 to 185.199.109.153

-->

# VPC Security

Demo 

- VPC Flow Logs
- VPC Flow Logs Subnet
- VPC Flow Logs EC2

<!-- Presenter Note

Show how to create FLow logs for VPC and EC2

 -->

# VPC Security

AWS VPC Traffic Mirroring

- Detect network and security anomalies/threats
- Gain operational insights
- Implement compliance and security controls
- Troubleshoot issues

<!--

Running a complex network is not an easy job. In addition to simply keeping it up and running, you need to keep an ever-watchful eye out for unusual traffic patterns or content that could signify a network intrusion, a compromised instance, or some other anomaly. Traffic Mirroring is an Amazon VPC feature that you can use to copy network traffic from an elastic network interface of Amazon EC2 instances. 

With Amazon VPC Traffic Mirroring, you can extract traffic of interest from any workload in a VPC and route it to the detection tools of your choice. You can then detect and respond to attacks more quickly than is possible with traditional log-based tools. You can also use VPC Traffic Mirroring to get the network visibility and control you need to make security decisions that are better informed. VPC Traffic Mirroring allows you to meet regulatory and compliance requirements that mandate monitoring, logging, and so forth. You can mirror application traffic internally for testing and troubleshooting, and analyze traffic patterns and proactively locate choke points that will impair the performance of your applications.

VPC Traffic Mirroring can be thought as a “virtual fiber tap” that gives you direct access to the network packets flowing through your VPC. You can choose to capture all traffic, or you can use filters to capture the packets that are of particular interest to you, with an option to limit the number of bytes captured per packet. You can use VPC Traffic Mirroring in a multi-account AWS environment, capturing traffic from VPCs spread across many AWS accounts and then routing the traffic to a central VPC for inspection.

-->

# VPC Security

VPC Traffic Mirroring use cases

- mirror tcp from source on one target
- mirror tcp from source on target 1 and udp on target 2
- mirror internet traffics 

