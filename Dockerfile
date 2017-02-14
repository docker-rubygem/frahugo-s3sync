FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.4.1

RUN gem install frahugo-s3sync --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["s3sync"]
CMD ["--help"]
