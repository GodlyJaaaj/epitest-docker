FROM fedora:38 as build
MAINTAINER GodlyJaaaj

#install git
RUN dnf install -y git

#clone dump_fedora38 repo
WORKDIR /tmp
RUN git clone https://github.com/GodlyJaaaj/dump_fedora38.git
WORKDIR /tmp/dump_fedora38
RUN chmod +x ./install_packages_dump.sh

#install packages
RUN ./install_packages_dump.sh

FROM build as copy
MAINTAINER GodlyJaaaj

RUN rm -rf /home/*
COPY . /home/
WORKDIR /home

