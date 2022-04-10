FROM docker.io/jenkins/jenkins:lts-jdk11
MAINTAINER Hemanth BITRA<hemanthbitra@live.com>
USER root
RUN apt update -y;apt install apt-utils wget -y;apt install nginx -y
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN rm -vf /etc/nginx/sites-enabled/default
RUN wget -O /etc/nginx/conf.d/jenkins.conf https://gist.github.com/hemanth22/aad79b1fd41ae1bbf5fd2a1b62c11733/raw
EXPOSE 8080
EXPOSE 80
