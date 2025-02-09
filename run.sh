#!/bin/sh

./runc-pre.sh

sudo nohup dockerd > dockerd-stdout.log 2> dockerd-stderr.log &

echo "Docker has been started."

