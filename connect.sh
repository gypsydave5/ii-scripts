#!/bin/bash
ii -s irc.freenode.net -n gypsydave5 -f "David Wickes" &
ii -s irc.mozilla.org -n gypsydave5 -f "David Wickes" &

sleep 10

LOGIN_STRING="/nickserv identify $IRC_PASSWORD"

echo $LOGIN_STRING
echo $LOGIN_STRING > ~/irc/irc.freenode.net/in
echo $LOGIN_STRING > ~/irc/irc.mozilla.org/in