#!/bin/bash

sed -i -e "/$POD_IP/d" /usr/share/nginx/html/index.html
