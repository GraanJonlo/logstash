#!/bin/bash

exec /sbin/setuser logstash /logstash/bin/logstash -f /logstash/conf/logstash.conf

