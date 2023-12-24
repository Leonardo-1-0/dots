#!/usr/bin/env python3

import yaml


mapping = {
        "0": 0,
        "1": 1,
        "2": 2,
        "3": 3,
        "4": 4,
        "5": 5,
        "6": 6,
        "7": 7,
        "8": 8,
        "9": 9,
        "a": 10,
        "b": 11,
        "c": 12,
        "d": 13,
        "e": 14,
        "f": 15,
}

def hex_to_decimal(hex_number: str) -> int:
    return (int(mapping[hex_number[0].lower()]) * 10 + int(mapping[hex_number[1].lower()]))

def hex_to_rgb(hex: str) -> str:
    hex = hex.removeprefix("#")
    _1 = hex_to_decimal(hex[:2])
    _2 = hex_to_decimal(hex[2:4])
    _3 = hex_to_decimal(hex[4:6])
    return f'"{_1}, {_2}, {_3}"'


with open("/home/leo/.cache/wal/colors.yml", "r") as scheme:
    scheme = yaml.safe_load(scheme)
    wallpaper = scheme["wallpaper"]
    special = scheme["special"]
    colors = scheme["colors"]


with open("/home/leo/.config/hypr/colors-hyprland.conf", "w") as hypr:
    hypr.write(f"$wallpaper = {wallpaper}\n\n")
    for var, spec in special.items():
        hypr.write(f"${var} = {spec}\n")
    hypr.write("\n")
    for var, color in colors.items():
        color = color.removeprefix("#")
        hypr.write(f"${var} = rgba({color.lower() + 'ee'})\n")
