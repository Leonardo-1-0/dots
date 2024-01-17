#WALLPAPER="/home/leo/Pictures/synthwave.jpg"
#WALLPAPER="/home/leo/Pictures/halo.jpg"
WALLPAPER="/home/leo/Pictures/Sunset-by-the-Pier.jpg"

WAYBAR_CONFIG="/home/leo/.config/waybar"

activate_night_light() {
	currenttime=$(date +%H:%M)
	if [[ "$currenttime" > "20:00" ]] || [[ "$currenttime" < "07:00" ]]; then
		busctl --user set-property rs.wl-gammarelay / rs.wl.gammarelay Brightness d 1.0 &&
			busctl --user set-property rs.wl-gammarelay / rs.wl.gammarelay \
				Temperature q 2750
	fi
}

wal -i ${WALLPAPER}
swww kill
swww init
swww img ${WALLPAPER}
pkill -f "waybar"
waybar -c ${WAYBAR_CONFIG}/config.json -s ${WAYBAR_CONFIG}/style.css &
/home/leo/.config/swaylock/pyWalConfig.py
activate_night_light
