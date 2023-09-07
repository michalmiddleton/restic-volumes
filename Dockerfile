FROM alpine:3.18.3

RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community restic && \
    apk add --no-cache cronie
VOLUME /root/.cache/restic

# etc/cron.deny
# usr/bin/cronnext
# usr/bin/crontab
# usr/sbin/anacron
# usr/sbin/crond
