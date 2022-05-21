echo 'setup start'

echo 'rds stack create...'
aws cloudformation create-stack --stack-name cfn-rds --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/cfn-rds.yml
aws cloudformation wait stack-create-complete --stack-name cfn-rds
echo 'rds stack created !'

echo 'iam stack create...'
aws cloudformation create-stack --stack-name cfn-iam --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/cfn-iam.yml --capabilities CAPABILITY_NAMED_IAM
aws cloudformation wait stack-create-complete --stack-name cfn-iam
echo 'iam stack created !'

echo 'task stack create...'
aws cloudformation create-stack --stack-name cfn-task --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/cfn-task.yml
aws cloudformation wait stack-create-complete --stack-name cfn-task
echo 'task stack created !'

echo 'ecs stack create...'
aws cloudformation create-stack --stack-name cfn-ecs --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/cfn-ecs.yml
aws cloudformation wait stack-create-complete --stack-name cfn-ecs
echo 'ecs stack created !'

echo 'setup finished'