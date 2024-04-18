FROM ruby:2.1

COPY . /src
WORKDIR /
RUN bundler install

CMD ["rackup", "--host", "0.0.0.0"]
EXPOSE 9200
