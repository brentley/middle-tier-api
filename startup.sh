#!/bin/bash -x

IP=$(ip route show |grep -o src.* |cut -f2 -d" ")

echo -n "My IP is: " > /usr/share/nginx/html/index.html
echo ${IP} >>/usr/share/nginx/html/index.html

nginx -g 'daemon off;'

