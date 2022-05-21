# About

Zenn で公開している [Rails × CloudFormation ハンズオン](https://zenn.dev/hukurouo/books/cfn-hands-on) という本のサンプルコードです。

## build
~~~
docker-compose build
docker-compose up -d
~~~

## login
~~~
docker-compose exec web /bin/bash
~~~

## ECS Exec
~~~
aws ecs execute-command --cluster cfn-sample-dev --task *** --container cfn-sample-dev --interactive --command '/bin/bash'
~~~

## bundle install
~~~
docker-compose run --rm web bundle install
~~~