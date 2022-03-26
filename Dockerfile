FROM jenkins/jenkins:lts-jdk11
MAINTAINER Hemanth BITRA<hemanthbitra@live.com>
RUN apt install nginx
EXPOSE 8080
