#!/bin/bash

echo 'open localhost 4222'
sleep 0.5
echo 'pub router.register 127'
sleep 0.1
echo '{"host":"127.0.0.1","port":9081,"uris":["my.cloud.com"],"tags":{},"stale_threshold_in_seconds":3600, "private_instance_id":"1"}'
sleep 0.1
echo 'pub router.register 127'
sleep 0.1
echo '{"host":"127.0.0.1","port":9082,"uris":["my.cloud.com"],"tags":{},"stale_threshold_in_seconds":3600, "private_instance_id":"2"}'
sleep 0.1
echo ''

