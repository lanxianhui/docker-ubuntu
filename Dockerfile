FROM ubuntu:16.04

MAINTAINER lanxianhui <lanxianhui@gmail.com>

ADD assets /assets
RUN bash /assets/setup.sh

EXPOSE 22
EXPOSE 443


CMD /usr/sbin/sshd -D
