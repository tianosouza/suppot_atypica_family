# syntax = docker/dockerfile:1


FROM ruby:3.3.0

RUN apt-get update -qq && \
    apt-get install -y \
    nodejs \
    npm \
    postgresql-client \
    imagemagick \
    libvips \
    curl \
    gnupg \
    libpq-dev

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update -qq && \
    apt-get install -y yarn

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .