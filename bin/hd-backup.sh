#!/bin/sh

# backup my home directory using rsync.

rsync --verbose  --progress --stats --compress --rsh=/usr/bin/ssh \
      --recursive --times --perms --links --delete \
      --exclude "*~" \
      --exclude ".*" \
      --exclude "*.vmdk" \
      --exclude "*.vdi" \
      --exclude "*.sav" \
      --include ".ssh" \
      ~ "/media/karim/My Passport"
