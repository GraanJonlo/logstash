FROM phusion/baseimage:0.9.16

MAINTAINER Andy Grant <andy.a.grant@gmail.com>

RUN \
  add-apt-repository ppa:openjdk-r/ppa && \
  apt-get update && apt-get upgrade -y && apt-get install -y \
  openjdk-8-jdk \
  wget

ENV LS_VERSION 1.5.3

RUN \
  cd /tmp && \
  wget -O logstash.tar.gz https://download.elastic.co/logstash/logstash/logstash-$LS_VERSION.tar.gz && \
  tar xvzf logstash.tar.gz && \
  mv logstash-$LS_VERSION /logstash && \
  groupadd logstash && \
  useradd -g logstash logstash && \
  rm -rf /tmp/*

RUN mkdir -p /etc/service/logstash
ADD logstash.sh /etc/service/logstash/run
ADD logstash.conf /logstash/config/logstash.conf

VOLUME ["/logstash/config"]

CMD ["/sbin/my_init", "--quiet"]

