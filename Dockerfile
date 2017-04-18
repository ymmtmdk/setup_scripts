FROM ubuntu:16.04

ENV TERM xterm-256color
ENV HOME /root

RUN mkdir $HOME/setup_scripts
WORKDIR mkdir $HOME/setup_scripts
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y sudo
COPY setup_admin.sh ./
RUN sh setup_admin.sh
COPY setup_user.sh fisher.rb ./
RUN sh setup_user.sh
WORKDIR $HOME
