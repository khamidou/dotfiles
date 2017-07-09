#!/bin/bash
# automatically block hosts from crontab. Called every 5 min.
set -e

HOSTS=(
    "reddit.com"
    "www.reddit.com"
    "fr.reddit.com"
    "de.reddit.com"
    "gb.reddit.com"
    "news.ycombinator.com"
    "allmusic.com"
    "facebook.com"
    "www.facebook.com"
    "twitter.com"
    "www.twitter.com"
)

for host in $HOSTS
do
    echo $host
    #sh edit-hosts add $host
done


