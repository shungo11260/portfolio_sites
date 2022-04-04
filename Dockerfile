FROM ruby:2.7.5
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt update -qq && \
  apt install -y yarn && \
  apt install -y nodejs && \
  gem install rails -v 6.1

WORKDIR /home/portfolio_sites/backend/