FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /rnc-api
WORKDIR /rnc-api

ADD Gemfile /rnc-api/Gemfile
ADD Gemfile.lock /rnc-api/Gemfile.lock
ADD . /rnc-api
RUN bundle install
RUN curl -sL https://deb.nodesource.com/setup_8.x |   bash -
RUN  apt-get install -y nodejs
CMD tail -f /dev/null

