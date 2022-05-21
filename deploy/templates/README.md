# テンプレートファイルをS3にアップロード
~~~
aws s3 cp deploy/templates/cfn-base.yml s3://cfn-sample-templates/services/cfn-sample/
aws s3 cp deploy/templates/cfn-code-deploy.yml s3://cfn-sample-templates/services/cfn-sample/
aws s3 cp deploy/templates/cfn-logs.yml s3://cfn-sample-templates/services/cfn-sample/
aws s3 cp deploy/templates/cfn-ecr.yml s3://cfn-sample-templates/services/cfn-sample/
aws s3 cp deploy/templates/cfn-rds.yml s3://cfn-sample-templates/services/cfn-sample/
aws s3 cp deploy/templates/cfn-iam.yml s3://cfn-sample-templates/services/cfn-sample/
aws s3 cp deploy/templates/cfn-task.yml s3://cfn-sample-templates/services/cfn-sample/
aws s3 cp deploy/templates/cfn-ecs.yml s3://cfn-sample-templates/services/cfn-sample/
aws s3 cp deploy/templates/cfn-batch.yml s3://cfn-sample-templates/services/cfn-sample/
aws s3 cp deploy/templates/cfn-athena.yml s3://cfn-sample-templates/services/cfn-sample/
~~~

# スタックの作成

~~~
aws cloudformation create-stack --stack-name cfn-base --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/cfn-base.yml
aws cloudformation create-stack --stack-name cfn-code-deploy --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/cfn-code-deploy.yml
aws cloudformation create-stack --stack-name cfn-logs --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/cfn-logs.yml
aws cloudformation create-stack --stack-name cfn-rds --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/cfn-rds.yml
aws cloudformation create-stack --stack-name cfn-ecr --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/cfn-ecr.yml
aws cloudformation create-stack --stack-name cfn-iam --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/cfn-iam.yml --capabilities CAPABILITY_NAMED_IAM
aws cloudformation create-stack --stack-name cfn-task --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/cfn-task.yml
aws cloudformation create-stack --stack-name cfn-ecs --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/cfn-ecs.yml
aws cloudformation create-stack --stack-name cfn-batch --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/cfn-batch.yml
aws cloudformation create-stack --stack-name cfn-athena --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/cfn-athena.yml
~~~

# パラメータを指定する
~~~
aws cloudformation create-stack --stack-name cfn-logs-qa --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/cfn-logs.yml --parameters file://deploy/templates/params/qa/cfn-logs-params.json
~~~