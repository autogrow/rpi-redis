FROM hypriot/rpi-redis

COPY 10-overcommit.conf /etc/sysctl.d/
COPY redis.conf /etc/redis.conf
COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 6379

CMD [ "redis-server", "/etc/redis.conf" ]
