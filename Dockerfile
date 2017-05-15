FROM ubuntu:16.04

MAINTAINER lanxianhui <lanxianhui@gmail.com>

ADD assets /assets
RUN /assets/setup.sh

EXPOSE 22


CMD /usr/sbin/sshd -D
