FROM ruby:3.1.2-alpine3.15

WORKDIR /app
COPY Gemfile Gemfile.lock /app/

RUN apk add --no-cache -t .build-dependencies \
    alpine-sdk \
    build-base \
 && apk add --no-cache \
    bash \
    postgresql-dev \ 
    tzdata \
    nginx \
    openrc \
 && bundle install \
 && apk del --purge .build-dependencies

COPY . /app

RUN SECRET_KEY_BASE=placeholder bundle exec rails assets:precompile

# nginx
ADD deploy/development/nginx.conf /etc/nginx/nginx.conf
ADD deploy/development/entrypoint.sh /app/entrypoint.sh

# openrc preparation
# ref: https://stackoverflow.com/questions/65627946
RUN openrc && touch /run/openrc/softlevel

EXPOSE 80

RUN chmod +x /app/entrypoint.sh 