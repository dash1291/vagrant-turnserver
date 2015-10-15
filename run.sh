#!/usr/bin/sh
# TODO: Remove sudo. its here because some pid!
/usr/local/bin/turnserver -p 8000 -L 0.0.0.0.0 -L 192.168.33.11 -o -a -f -r turn.serv -u username:key
