FROM elixir:latest

RUN apt-get update && \
    apt-get install -y postgresql-client && \
    apt-get install -y inotify-tools && \
    apt-get install -y nodejs && \
    apt-get install -y yarn && \
    curl -L https://npmjs.org/install.sh | sh && \
    mix local.hex --force && \
    mix archive.install hex phx_new 1.5.6 --force && \
    mix local.rebar --force

ADD . /app

WORKDIR /app
RUN mix deps.get
RUN cd assets && npm install
WORKDIR /app
