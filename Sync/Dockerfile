FROM ubuntu:18.04
ENV DEBIAN_FRONTEND noninteractive
USER root

RUN apt-get update && apt-get install -y ubuntu-server
RUN apt-get update
RUN apt-get -y upgrade
RUN apt install -y openssh-client openssh-server awscli

WORKDIR /root/sync
COPY . /root/sync
RUN chmod -R 777 /root/sync

RUN echo "sleep infinity" >> sleep.sh
RUN chmod 777 sleep.sh

EXPOSE 22

ENTRYPOINT ["/bin/bash", "/root/sync/sleep.sh"]