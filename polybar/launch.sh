#! /bin/sh

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bar
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar left 2>&1 | tee -a /tmp/polybar_left.log & disown
polybar center 2>&1 | tee -a /tmp/polybar_left.log & disown
polybar right 2>&1 | tee -a /tmp/polybar_left.log & disown

echo "Bars launched..."
