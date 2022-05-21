echo 'cleanup start'

echo 'task stack delete...'
aws cloudformation delete-stack --stack-name cfn-task
aws cloudformation wait stack-delete-complete --stack-name cfn-task
echo 'task stack deleted !'

echo 'iam stack delete...'
aws cloudformation delete-stack --stack-name cfn-iam
aws cloudformation wait stack-delete-complete --stack-name cfn-iam
echo 'iam stack deleted !'

echo 'rds stack delete...'
aws cloudformation delete-stack --stack-name cfn-rds

echo 'ecs stack delete...'
aws cloudformation delete-stack --stack-name cfn-ecs

aws cloudformation wait stack-delete-complete --stack-name cfn-rds
aws cloudformation wait stack-delete-complete --stack-name cfn-ecs

echo 'Re: ecs stack delete...'
aws cloudformation delete-stack --stack-name cfn-ecs

echo 'cleanup finished'