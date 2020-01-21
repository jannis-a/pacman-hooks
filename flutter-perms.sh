#!/usr/bin/env sh
GROUP="flutter"
DIR="/opt/flutter"

if [ ! $(getent group "$GROUP") ]; then
	groupadd -r "$GROUP"
fi

chgrp -R "$GROUP" "$DIR"
chmod -R g+w "$DIR"
