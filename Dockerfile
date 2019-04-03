FROM ruby:2.6-alpine

WORKDIR /app

COPY Gemfile /app
COPY Gemfile.lock /app

RUN apk upgrade --no-cache && \
    apk add --update --no-cache nodejs tzdata mysql-client && \
    apk add --update --no-cache --virtual=build-dependencies \
    build-base curl-dev linux-headers libxml2-dev libxslt-dev mysql-dev ruby-dev yaml-dev zlib-dev && \
    gem install bundler:2.0.1 && \
    bundle install

EXPOSE 3000
