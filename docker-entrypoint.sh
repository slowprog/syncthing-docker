
#!/usr/bin/with-contenv bash

echo "Starting Syncthing"

chown "${PUID}:${PGID}" -R /sync

# see https://docs.syncthing.net/users/faq.html#inotify-limits
echo "fs.inotify.max_user_watches=1000000" | tee -a /etc/sysctl.conf

UMASK_SET=${UMASK_SET:-022}

umask "$UMASK_SET"

exec \
	s6-setuidgid abc syncthing \
	-home=/config -no-browser -no-restart \
	--gui-address="0.0.0.0:8384"