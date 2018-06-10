FROM ruby:2.4-alpine3.7
LABEL Name=sinatra Version=0.0.1
WORKDIR /usr/src/app
COPY ./src/ .
RUN bundle install
EXPOSE 4567
CMD ["ruby /usr/src/app/myapp.rb -o 0.0.0.0"]