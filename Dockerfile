# Rubyは2.5.0以上で
FROM ruby:2.5.3

ENV LANG C.UTF-8
# プロジェクト名にしておきましょう。 Rails new . とすると名前がカレントディレクトリになります
ENV WORKING_DIR /todo_app

WORKDIR $WORKING_DIR

# 基本項目をインストールします.
RUN apt-get update -qq && \
    apt-get install -y sudo build-essential libpq-dev postgresql-client

# yarn環境の構築
RUN apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

# nodejs環境の構築
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install nodejs

# Cannot find module node-sass対策
RUN yarn add node-sass

# Gemfileを事前にこのDockerfileと同じ場所に用意しておいてください
ADD ./Gemfile $WORKING_DIR
# Gemfile.lockの中身は空で
ADD ./Gemfile.lock $WORKING_DIR

RUN gem install bundler

RUN bundle install

