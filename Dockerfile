FROM docker.io/jenkins/jenkins:lts-jdk11
MAINTAINER Hemanth BITRA<hemanthbitra@live.com>
USER root
RUN apt update -y;apt install apt-utils wget -y;apt install nginx -y
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN rm -vf /etc/nginx/sites-enabled/default
RUN wget -O /etc/nginx/conf.d/jenkins.conf https://gist.githubusercontent.com/hemanth22/29e5b623ae6d462b67675fe5e3e5775f/raw
EXPOSE 8080
EXPOSE 80
