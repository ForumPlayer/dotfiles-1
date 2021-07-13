#!/usr/bin/ev sh

#Terminate already running picom instances
killall -q polybar

# Wait until the processes have been shutdown
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch Picom
polybar main
