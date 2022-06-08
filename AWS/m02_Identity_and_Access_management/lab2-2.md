# IAM Permissions Boundary

1. Create developer policy
    ```
    "lambda:*",
    "iam:PassRole",
    "iam:listRole"
    ```
1. Create a user and attach the policy to the user
1. Create a role for Lambda function to access EC2 
1. Create a Lambda function with developer account to show they can access to the roles for Lambda function
1. Modify the developer policy to create new role for lambda 
    ```
    "iam:List*",
    "iam:Get",
    "iam:CreatePolicy",
    "iam:CreateRole",
    "iam:UpdateRole",
    "iam:AttachRolePolicy"
    ```
1. Demo that developer can create lambdo role with admin access
1. Create a policy "permission boundry" only access to ec2 and s3
    ```
    "ec2:Describe*",
    "ec2:Get*",
    "s3:List*",
    "s3:Get*"
    ```
1. Edit developer policy, for create role and attach role policy set a condition for iam permission boundary and set it to ARN of permission boundry. 
1. Demo Developer cannot create a role without attaching boundry. 