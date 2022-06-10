## VPC Flow logs

1. VPC flow Logs
2. VPC flow Logs for subnet
3. VPC flow logs for EC2

## AWS Traffic Monitoring

1. Create 2 t3a.micro instances
    - Malicious
    - Inspector
2. Create Traffic Mirror Target and attach inspector
3. Create Traffic Mirror Filter and accept everything except SSH
4. Create Traffic Mirror Session and attach Malicious
5. Modify inspector's security group to accept UDP port 4789 from Malicious' security group.
6. run TCPDUMP on inspector
    - `sudo tcpdump not port ssh -w session.pcap`
7. Download the pcap file and open it in wireshark
