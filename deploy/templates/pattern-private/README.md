# テンプレートファイルをS3にアップロード
~~~
aws s3 cp deploy/templates/pattern-private/cfn-base.yml s3://cfn-sample-templates/services/cfn-sample/pattern-private/
aws s3 cp deploy/templates/pattern-private/cfn-ecs.yml s3://cfn-sample-templates/services/cfn-sample/pattern-private/
aws s3 cp deploy/templates/pattern-private/cfn-batch.yml s3://cfn-sample-templates/services/cfn-sample/pattern-private/
~~~


# スタックの更新 + 作成

ECS スタックが作成されている場合は一旦削除しておきます。
~~~
aws cloudformation update-stack --stack-name cfn-base --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/pattern-private/cfn-base.yml
aws cloudformation create-stack --stack-name cfn-ecs --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/pattern-private/cfn-ecs.yml
aws cloudformation create-stack --stack-name cfn-batch --template-url https://cfn-sample-templates.s3.ap-northeast-1.amazonaws.com/services/cfn-sample/pattern-private/cfn-batch.yml
~~~