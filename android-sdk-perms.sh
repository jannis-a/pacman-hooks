#!/usr/bin/env sh
GROUP="android-sdk"
DIR="/opt/android-sdk"

if [ ! $(getent group "$GROUP") ]; then
	groupadd -r "$GROUP"
fi

setfacl -R -m g:"$GROUP":rwx "$DIR"
setfacl -d -m g:"$GROUP":rwX "$DIR"
