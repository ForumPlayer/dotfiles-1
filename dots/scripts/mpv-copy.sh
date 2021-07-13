#!/bin/bash
LINK=$(xclip -o selection clipboard)
echo $LINK
notify-send -t 1000 "Youtube to MPV" "Playing:\n $LINK"
mpv $LINK
