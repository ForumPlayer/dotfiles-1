#!/usr/bin/ev sh

#Terminate already running picom instances
killall -q picom

# Wait until the processes have been shutdown
while pgrep -x picom >/dev/null; do sleep 1; done

# Launch Picom
picom --backend glx --vsync --experimental-backends
