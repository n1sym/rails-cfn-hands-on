# About

Zenn で公開している [Rails × CloudFormation ハンズオン](https://zenn.dev/hukurouo/books/cfn-hands-on) という本のサンプルコードです。

## 概要図

### Fargate in Public Subnets

![rapture_20220522013203](https://user-images.githubusercontent.com/49607363/169660863-cd01671b-5c8b-4aee-b10d-f68754642872.png)

### Fargate in Private Subnets

![rapture_20220522013230](https://user-images.githubusercontent.com/49607363/169660877-4e75479f-46b3-407e-bf3c-a336b4116be2.png)


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
