#!/usr/bin/ev sh

#Terminate already running stalonetray instances
killall -q stalonetray

# Wait until the processes have been shutdown
while pgrep -x stalonetray >/dev/null; do sleep 1; done

# Launch Picom
stalonetray 
