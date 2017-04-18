FROM ubuntu:16.04

ENV TERM xterm-256color
ENV HOME /root
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN mkdir $HOME/setup_scripts
WORKDIR mkdir $HOME/setup_scripts
RUN apt-get update
RUN apt-get install -y apt-utils sudo locales
RUN locale-gen en_US.UTF-8

COPY setup_admin.sh ./
RUN sh setup_admin.sh

COPY setup_user.sh fisher.rb ./
RUN sh setup_user.sh
WORKDIR $HOME
