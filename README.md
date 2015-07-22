# What is Logstash?

Logstash is a tool that can be used to collect, process and forward events and log messages. Collection is accomplished via number of configurable input plugins including raw socket/packet communication, file tailing and several message bus clients. Once an input plugin has collected data it can be processed by any number of filters which modify and annotate the event data. Finally events are routed to output plugins which can forward the events to a variety of external programs including Elasticsearch, local files and several message bus implementations.

> [wikitech.wikimedia.org/wiki/Logstash](https://wikitech.wikimedia.org/wiki/Logstash)

![logo](https://raw.githubusercontent.com/docker-library/docs/master/logstash/logo.png)

# How to use this image

## start a logstash instance

    docker run --name logstash [-v /some/directory:/logstash/conf] -d graanjonlo/logstash[:tag]

The sample config logs stdin to stdout so not very exciting. You can mount a directory with your own logstash.conf to volume `/logstash/conf`

