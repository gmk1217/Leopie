FROM ruby:2.3.0
MAINTAINER Mohan Krishna <gmk.india@gmail.com>
RUN apt-get update -qq && apt-get install -y build-essential nodejs libpq-dev &&mkdir -p /var/app
WORKDIR /var/app
COPY Gemfile /var/app/Gemfile
COPY Gemfile.lock /var/app/Gemfile.lock
RUN bundle install
CMD rails s -b 0.0.0.0

