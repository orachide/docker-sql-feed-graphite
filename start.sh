#!/bin/sh

env >> /etc/environment

cron && tail -f /var/log/cron.log
