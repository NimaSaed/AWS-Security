# Using SSM and Amazon Inspector

1. Enable Amazon Inspector
2. Create 2 ubuntu instances
    - with SSM role added
    - without SSM role added
        - add port 80 and 21 to the security group
        - install apache2
3. Observe the scan result
    - for instance with SSM role has more details since it has SSM agent install on it
    - for instance without SSM role, only has feedback like port setting, since does not have SSM agent
4. add SSM agent to the instance without SSM role and make sure it is listed in scanning group in Amazon Inspector
    - if it is AWS image, ssm is installed, you just need to add the IAM role to the instance from action/security/modify IAM role. 
    - for installing ssm agent on other image https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-manual-agent-install.html

