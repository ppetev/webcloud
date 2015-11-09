#!/bin/bash
echo 'open localhost 4222'
sleep 1
echo 'pub router.register 101'
sleep 1
echo '{"host":"127.0.0.1","port":9081,"uris":["my.cloud.com"],"tags":{},"stale_threshold_in_seconds":12000}'
sleep 1
echo 'pub router.register 101'
sleep 1
echo '{"host":"127.0.0.1","port":9082,"uris":["my.cloud.com"],"tags":{},"stale_threshold_in_seconds":12000}'
sleep 1
echo ''