#!/bin/sh

env >> /etc/environment

tail -f /var/log/cron.log
