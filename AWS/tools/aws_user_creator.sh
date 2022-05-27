#!/usr/bin/env bash
set -o nounset # Treat unset variables as an error

export AWS_PAGER=""

# TODO need to make a better group for training
aws_group="Administrators"
aws_accout_alias=$(aws iam list-account-aliases | jq .AccountAliases[0] -r)

if [ -z ${1:-""} ];
then
    echo "Please provide path to name list file";
    exit 1;
fi

name_list=${1}

echo "attempting to read name list at ${1}"
while
    read name
do
    # only if the line is not empty
    if [ -n "$name" ];
    then
        # repalce space with - in name
        aws_user=$(echo ${name} | sed 's/ /-/g')

        # if delete is requested
        if [ ${2:-""} = "-d" ]; then
            echo "Deleting user ${aws_user} from ${aws_accout_alias}"
            aws iam remove-user-from-group --user-name ${aws_user} --group-name ${aws_group}
            aws iam delete-login-profile --user-name ${aws_user}
            aws iam delete-user --user-name ${aws_user}
            if [ -e ${aws_user}.zip ]; then
                rm ${aws_user}.zip
            fi
            continue
        fi

        # create user
        aws iam create-user --user-name ${aws_user}

        # create password
        aws_password=$(openssl rand -base64 18)
        aws iam create-login-profile --user-name ${aws_user} --password ${aws_password} --password-reset-required

        # add the user to the group
        aws iam add-user-to-group --user-name ${aws_user} --group-name ${aws_group}

        # create help command for trainee
        echo "# How to connect to our AWS" > README.txt
        echo ""
        echo "visit https://${aws_accout_alias}.signin.aws.amazon.com/console" >> README.txt
        echo "IAM User name: ${aws_user}" >> README.txt
        echo "Password: ${aws_password}" >> README.txt

        mkdir ${aws_user}
        mv README.txt ${aws_user}/
        zip -r ${aws_user}.zip ${aws_user}/

        # cleaning up
        rm -r ${aws_user}/
    else
        echo "end of list"
    fi
done < $name_list