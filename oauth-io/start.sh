#! /bin/bash

sed -i -e "s/REDIS_PORT_6379_TCP_ADDR/$REDIS_PORT_6379_TCP_ADDR/g" /opt/oauthd/config.js
sed -i -e "s/REDIS_PORT_6379_TCP_PORT/$REDIS_PORT_6379_TCP_PORT/g" /opt/oauthd/config.js
sed -i -e "s/REDIS_PASSWORD/$REDIS_PASSWORD/g" /opt/oauthd/config.js

coffee /opt/oauthd/lib/oauthd.coffee