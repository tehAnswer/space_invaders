FROM ruby:2.5.0-alpine
RUN \
  apk update && \
  apk add libffi-dev build-base
RUN mkdir -p /opt/space_invaders
WORKDIR /opt/space_invaders
ADD . ./
RUN bundle install
RUN rake scan[board]