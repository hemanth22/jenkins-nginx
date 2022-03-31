FROM docker.io/jenkins/jenkins:lts-jdk11
MAINTAINER Hemanth BITRA<hemanthbitra@live.com>
USER root
RUN apt update;apt install nginx -y
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
EXPOSE 8080
EXPOSE 80
