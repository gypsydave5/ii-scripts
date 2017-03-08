#!/bin/bash
./connect.sh
tmux new-session -c ~/irc -s irc -n rust-beginners -d
tmux split-window -v -t irc:rust-beginners -c ~/irc -p 40
tmux split-window -v -t irc:rust-beginners -c ~/irc -p 40
tmux send-keys -t irc:rust-beginners.0 'clear' Enter
tmux send-keys -t irc:rust-beginners.1 'clear' Enter
tmux send-keys -t irc:rust-beginners.2 'clear' Enter
tmux send-keys -t irc:rust-beginners.0 'tail -f irc.mozilla.org/rust-beginners/out | ./ii-scripts/regex_colorize.rb' Enter