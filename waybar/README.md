# Waybar config files

Use like so

```bash
$ waybar -c path/to/config.json -s path/to/stylesheet.css
```

Unfortunately, pywal generates colors only in hex and
not in rgb which means the waybar stylesheet can't
work with rgba and thus not set the opacity of the color
without affecting the whole button/pannel
