FROM ruby:2.7.2

RUN apt-get update && apt-get install -y build-essential

# for PostgreSQL
RUN apt-get install -y libpq-dev

# for a JS runtime
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs

RUN mkdir /lucky-star
WORKDIR /lucky-star

COPY . /lucky-star

RUN bundle install

EXPOSE 3001