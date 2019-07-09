#!/bin/sh

echo "Starting Syncthing"

chown $PUID:$PGID -R /sync
# see https://docs.syncthing.net/users/faq.html#inotify-limits
echo "fs.inotify.max_user_watches=1000000" | tee -a /etc/sysctl.conf