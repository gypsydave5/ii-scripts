#!/bin/bash
ii -s irc.freenode.net -n gypsydave5 -f "David Wickes" &
ii -s irc.mozilla.org -n gypsydave5 -f "David Wickes" &

sleep 10

echo "/m nickserv identify $IRC_PASSWORD" > ~/irc/irc.freenode.net/in
echo "/m nickserv identify $IRC_PASSWORD" > ~/irc/irc.mozilla.org/in

echo "/j #rust-beginners" > ~/irc/irc.mozilla.org/in