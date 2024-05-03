FROM ruby:3.2.2
RUN apt update
RUN apt install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /rails_book
COPY Gemfile Gemfile.lock /rails_book/
RUN bundle install

