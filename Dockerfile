FROM ruby:2.6.2

RUN apt-get update && apt-get install -y build-essential

# for postgres
RUN apt-get install -y libpq-dev

# for a JS runtime
RUN apt-get install -y nodejs

RUN mkdir /lucky-star
WORKDIR /lucky-star

COPY Gemfile /lucky-star/Gemfile
COPY Gemfile.lock /lucky-star/Gemfile.lock

RUN gem install bundler
RUN bundle install

COPY . /lucky-star