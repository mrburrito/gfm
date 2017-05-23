FROM ruby:2.4-alpine
MAINTAINER DeepMarimba Devops <devops@mailman.deepmarimba.com>

EXPOSE 4567

ADD https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64 /usr/local/bin/dumb-init
RUN chmod +x /usr/local/bin/dumb-init \
    && apk add --no-cache -t build_util make build-base \
    && apk add --no-cache icu-dev \
    && gem install gollum \
    && gem install github-markdown \
    && apk del build_util

VOLUME /www
WORKDIR /www

ADD Home.md /www/Home.md

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
CMD ["gollum"]
