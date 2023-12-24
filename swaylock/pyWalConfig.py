#!/usr/bin/env python3
import yaml


with open("/home/leo/.cache/wal/colors.yml", "r") as scheme:
    scheme = yaml.safe_load(scheme)
    wallpaper = scheme["wallpaper"]
    special = scheme["special"]
    colors = scheme["colors"]

for key, val in special.items():
    special[key] = val.removeprefix("#")

for key, val in colors.items():
    colors[key] = val.removeprefix("#")


with open("/home/leo/.config/swaylock/config", "w") as config:
    config.write(f"""
daemonize
clock

#24 HRS clock format and standard Europe Date Format
timestr=%H:%M
datestr=%d %B

# Add current display as background
screenshots

# Add an image as a background. You need to disable screenshots above
# image=$HOME/Pictures/synthwave_3.jpg

# Effect for background
# NOTE: if you choose image as wallpaper, you may want to comment (#) these effects 
effect-blur=9x5
# effect-vignette=0.5:0.5
# effect-greyscale
# effect-pixelate=5

color={special['background'] + '80'}
font="JetBrains Mono Nerd Font"
indicator
indicator-caps-lock
indicator-radius=200
indicator-thickness=20

text-color={special['foreground']}
text-caps-lock-color={special['foreground']}
inside-color={special['background']}
line-color={special['background']}
ring-color={special['foreground']}
separator-color=00000000
text-ver-color={special['foreground']}
inside-ver-color={special['foreground']}
line-ver-color={colors['color1']}
ring-ver-color={colors['color1']}
text-wrong-color=ff0000
inside-wrong-color={special['background']}
line-wrong-color={special['background']}
ring-wrong-color=ff0000
text-clear-color={special['background']}
inside-clear-color={special['foreground']}
line-clear-color=00ff00
ring-clear-color={colors['color7']}
key-hl-color={colors['color4']}
bs-hl-color={special['foreground']}

fade-in=0.5
""")
