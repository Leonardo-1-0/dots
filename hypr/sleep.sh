#!/bin/bash
swayidle -w timeout 300 'swaylock -f -i /home/leo/Pictures/synthwave_2.png --indicator-idle-visible --indicator-radius 120 --indicator-thickness 20 --line-color FFFFFF --line-wrong-color FF0000 --ring-color FFFFFF' \
    timeout 600 'systemctl suspend' \
    before-sleep 'swaylock -f -i /home/leo/Pictures/synthwave_2.png --indicator-idle-visible --indicator-radius 120 --indicator-thickness 20 --line-color FFFFFF --line-wrong-color FF0000 --ring-color FFFFFF' &
