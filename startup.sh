#!/bin/bash 

set -x

IP=$(ip route show |grep -o src.* |cut -f2 -d" ")

/bin/echo -n "My IP is: " > /usr/share/nginx/html/index.html
/bin/echo ${IP} >>/usr/share/nginx/html/index.html

/usr/sbin/nginx -g 'daemon off;'

