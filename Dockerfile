FROM jboss/base-jdk:8

MAINTAINER Gabriel Ignisca <gabriel@designjunkie.com>

ENV REFRESHED_AT 2015-03-22

RUN curl -o orion.zip http://www.mirrorservice.org/sites/download.eclipse.org/eclipseMirror/orion/drops/R-8.0-201502161823/eclipse-orion-8.0-linux.gtk.x86_64.zip
RUN unzip orion.zip
RUN rm orion.zip

EXPOSE 8080

CMD [ "/opt/jboss/eclipse/orion" ]
