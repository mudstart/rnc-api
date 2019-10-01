FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /rnc-api
WORKDIR /rnc-api

ADD Gemfile /rnc-api/Gemfile
ADD Gemfile.lock /rnc-api/Gemfile.lock

RUN bundle install

ADD . /rnc-api
