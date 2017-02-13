#!/usr/bin/env bash

/usr/sbin/haproxy -f /etc/haproxy/haproxy.conf -Ds

/usr/bin/killall haproxy
