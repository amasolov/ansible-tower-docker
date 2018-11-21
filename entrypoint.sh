#!/bin/bash

set -e

trap "kill -15 -1 && echo all proc killed" TERM KILL INT

if [ "$1" = "ansible-tower" ]; then

	ansible-tower-service start
	sleep inf & wait
else
	exec "$@"
fi
