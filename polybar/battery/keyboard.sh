#! /bin/sh

current_bat=$(upower --dump | grep -i keyboard -A 7 | grep percentage | cut -c25-30)

echo "$current_bat"