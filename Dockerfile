FROM ruby:2.6.2
LABEL Anatoly Stupin <an@webbery.pro>
ARG secret_token

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install -y --no-install-recommends nodejs netcat

WORKDIR /app
COPY ./app/ .
ENV RAILS_ENV production
ENV SECRET_TOKEN = $secret_token

RUN gem install bundler -v '1.17.3'
RUN bundle install
RUN cp config/database.yml.sample config/database.yml
RUN rake assets:precompile

CMD rails db:migrate && rails server -b 0.0.0.0