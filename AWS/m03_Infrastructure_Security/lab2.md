# Securing VPC resources with security group

- Create security groups
    - load balancer accept 80 from 0.0.0.0/0
    - web server accept 80 from load balancer
- Create a target group "web server"
- Create an instance
    - change default security group to only accept ssh from your public IP
    - install apache/httpd
- Create a load balancer
- Connect them all together
