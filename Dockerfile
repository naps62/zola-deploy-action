from alpine:edge
MAINTAINER Shaleen Jain <shaleen@jain.sh>

LABEL "com.github.actions.name"="Zola Deploy to Pages"
LABEL "com.github.actions.description"="Build and deploy a Zola site to GitHub Pages"
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="green"

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk add git zola@testing

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
