FROM ubuntu:18.04
LABEL maintainer "Jacky Chan <jacky.Chen@esix.co>"

RUN apt-get update
RUN apt-get -y install subversion build-essential libncurses5 libncurses5-dev
RUN apt-get -y install  zlib1g-dev gawk git ccache unzip wget
RUN apt-get -y install  gettext libssl-dev xsltproc libxml-parser-perl python2.7
RUN apt-get -y  install  gengetopt default-jre-headless ocaml-nox sharutils u-boot-tools


RUN useradd -m user


USER user
WORKDIR /home/user

RUN git config --global user.name "user" && git config --global user.email "example@example.com"
