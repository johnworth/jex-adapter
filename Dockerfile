FROM discoenv/golang-base:master

ENV CONF_TEMPLATE=/go/src/github.com/cyverse-de/jex-adapter/jobservices.yml.tmpl
ENV CONF_FILENAME=jobservices.yml
ENV PROGRAM=jex-adapter

COPY . /go/src/github.com/cyverse-de/jex-adapter
RUN go install github.com/cyverse-de/jex-adapter

EXPOSE 60000

ARG git_commit=unknown
ARG version="2.9.0"

LABEL org.cyverse.git-ref="$git_commit"
LABEL org.cyverse.version="$version"
