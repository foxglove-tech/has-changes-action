FROM ubuntu:latest

LABEL "repository"="http://github.com/UnicornGlobal/has-changes-action"
LABEL "homepage"="http://github.com/UnicornGlobal/has-changes-action"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
