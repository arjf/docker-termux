#!/bin/sh


# package setup
pkg install root-repo core-utils -y
pkg update
pkg install docker


# docker setup
cp ./daemon.json $PREFIX/etc/docker/daemon.json

