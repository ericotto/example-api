FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /example-api
WORKDIR /example-api

COPY Gemfile /example-api/Gemfile
COPY Gemfile.lock /example-api/Gemfile.lock
RUN bundle install

COPY . /example-api

RUN ["chmod", "+x", "./docker-start.sh"]
ENTRYPOINT ["sh", "./docker-start.sh"]