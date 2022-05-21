FROM ruby:3.1.2-alpine3.15

WORKDIR /myapp
COPY Gemfile Gemfile.lock /myapp/

RUN apk add --no-cache -t .build-dependencies \
    alpine-sdk \
    build-base \
 && apk add --no-cache \ 
    postgresql-dev \ 
    bash \
    tzdata \
 && gem install bundler \
 && bundle install \
 && apk del --purge .build-dependencies

COPY . /myapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]