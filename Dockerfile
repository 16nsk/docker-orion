FROM ubuntu:14.04

MAINTAINER Gabriel Ignisca <gabriel@designjunkie.com>

ENV REFRESHED_AT 2015-03-21

RUN apt-get -y update
RUN apt-get -y dist-upgrade
RUN apt-get -y install default-jdk wget upzip
RUN apt-get -y clean
RUN apt-get -y autoclean

WORKDIR /opt
RUN wget -o orion.zip http://www.mirrorservice.org/sites/download.eclipse.org/eclipseMirror/orion/drops/R-8.0-201502161823/eclipse-orion-8.0-linux.gtk.x86_64.zip
RUN unzip orion.zip
RUN rm orion.zip

# COPY eclipse /opt/eclipse

WORKDIR /opt/eclipse

EXPOSE 8080

CMD [ "/opt/eclipse/orion" ]
