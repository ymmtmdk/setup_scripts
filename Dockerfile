FROM ubuntu:16.04

ENV PATH /usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH
ENV TERM=xterm-256color
ENV HOME /root

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y sudo
RUN mkdir $HOME/setup_scripts
COPY setup_admin.sh $HOME/setup_scripts
RUN cd $HOME/setup_scripts && sh $HOME/setup_scripts/setup_admin.sh
COPY setup_user.sh fisher.rb $HOME/setup_scripts/
RUN cd $HOME/setup_scripts && sh $HOME/setup_scripts/setup_user.sh

