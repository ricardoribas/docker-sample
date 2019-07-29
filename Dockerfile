FROM jenkins/jenkins:latest

LABEL maintainer="Ricardo Ribas"

USER root

EXPOSE 8080

VOLUME [ "temp:/var/jenkins_home" ]

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt