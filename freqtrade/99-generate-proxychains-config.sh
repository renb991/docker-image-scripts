#!/bin/sh

set -e
envsubst < /etc/proxychains.conf.tpl > /home/ftuser/.proxychains/proxychains.conf
