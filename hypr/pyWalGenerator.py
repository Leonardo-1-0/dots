#!/usr/bin/env python3
import yaml


with open("/home/leo/.cache/wal/colors.yml", "r") as scheme:
    scheme = yaml.safe_load(scheme)
    wallpaper = scheme["wallpaper"]
    special = scheme["special"]
    colors = scheme["colors"]


with open("/home/leo/.config/hypr/colors-hyprland.conf", "w") as hypr:
    hypr.write(f"$wallpaper = {wallpaper}\n\n")
    for var, spec in special.items():
        spec = spec.removeprefix("#")
        hypr.write(f"${var} = rgba({spec.lower() + 'ff'})\n")
    hypr.write("\n")
    for var, color in colors.items():
        color = color.removeprefix("#")
        hypr.write(f"${var} = rgba({color.lower() + 'ee'})\n")
