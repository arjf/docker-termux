#!/bin/sh


# package setup
pkg install root-repo core-utils tsu sudo -y
pkg update
pkg install docker -y


# docker setup
cp ./daemon.json $PREFIX/etc/docker/daemon.json

