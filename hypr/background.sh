#WALLPAPER="/home/leo/Pictures/synthwave.jpg"
WALLPAPER="/home/leo/Pictures/halo.jpg"
#WALLPAPER="/home/leo/Pictures/netrun_vol3.png"

WAYBAR_CONFIG="/home/leo/.config/waybar"

wal -i ${WALLPAPER}
swww kill
swww init
swww img ${WALLPAPER}
pkill -f "waybar"
waybar -c ${WAYBAR_CONFIG}/config.json -s ${WAYBAR_CONFIG}/style.css &
/home/leo/.config/swaylock/pyWalConfig.py
