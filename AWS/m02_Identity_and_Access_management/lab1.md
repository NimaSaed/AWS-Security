# Understanding IAM

1. Create
    - a role can list s3 `your_name_role_list_s3` attach policy `AmazonS3ReadOnlyAccess`to it.
    - a policy `your_name_assume_role_list_s3` to allow assume `your_name_role_list_s3`.
    - a group can assume the role `your_name_group_list_s3` attach policy `your_name_assume_role_list_s3`.
    - a user and add it to the group `your_name_s3_user`
2. login with the user and assume the role and list s3.



# Understanding IAM

```
{
        {
            "Effect": "Allow",
            "Action": [
                "iam:GetRole",
                "iam:ListRoles"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "sts:AssumeRole",
            "Resource": "arn:aws:iam::{accountid}:role/your_name_role_list_s3"
        }
}
```
