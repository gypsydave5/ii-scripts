#!/bin/bash
ii -s irc.freenode.net -n gypsydave5 -f "David Wickes" & &> /dev/null
# ii -s irc.mozilla.org -n gypsydave5 -f "David Wickes" &

sleep 10

LOGIN_STRING="/msg NickServ ghost $IRC_PASSWORD"

echo $LOGIN_STRING > ~/irc/irc.freenode.net/in
echo '/join #go-nuts' > ~/irc/irc.freenode.net/in
# echo $LOGIN_STRING > ~/irc/irc.mozilla.org/in