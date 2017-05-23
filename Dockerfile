FROM ruby:2.4-alpine
MAINTAINER DeepMarimba Devops <devops@mailman.deepmarimba.com>

EXPOSE 80

ADD https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64 /usr/local/bin/dumb-init
ADD Home.md /wiki/Home.md
WORKDIR /wiki

RUN chmod +x /usr/local/bin/dumb-init \
    && apk add --no-cache -t build_util make cmake build-base git \
    && apk add --no-cache icu-dev \
    && gem install github-linguist \
    && gem install gollum \
    && gem install github-markdown \
\
    && git init \
    && git config user.name Nobody \
    && git config user.email nobody@example.com \
    && git add Home.md \
    && git commit -m "Default page" \
\
    && apk del build_util

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
CMD ["gollum", "--port", "80"]
