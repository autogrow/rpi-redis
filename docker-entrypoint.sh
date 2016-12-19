#!/bin/bash
set -e

if [ "$1" = 'redis-server' ]; then
	chown -R redis .
	exec gosu redis "$@" /etc/redis.conf
fi

exec "$@" /etc/redis.conf
