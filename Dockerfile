FROM ruby:2.3.0
MAINTAINER Mohan Krishna <gmk.india@gmail.com>
RUN apt-get update -qq && apt-get install -y build-essential nodejs libpq-dev &&mkdir -p /var/app
RUN mkdir /leopie
WORKDIR /loepie
COPY Gemfile /leopie/Gemfile
COPY Gemfile.lock /leopie/Gemfile.lock
RUN bundle install
ADD . /leopie
