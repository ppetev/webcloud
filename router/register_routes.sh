#!/bin/bash

while true
do
  /home/vagrant/router/nats_messages_lb.sh | telnet &> /dev/null
  sleep 60
done
