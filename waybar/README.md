# Waybar config files

Use like so

```bash
$ waybar -c path/to/config.json -s path/to/stylesheet.css
```

Set the transparency of hex colors from pywal's colors-waybar.css
like so: alpha(@colorX, opacity).
[This is a gtk css thing](https://docs.gtk.org/gtk4/css-properties.html)


For the vnp command, don't forget to add this to the sudoers file if you don't
want to input the sudo password every time to call the openconnect command

```bash
$ su
$ echo "leo laptop= NOPASSWD: /usr/bin/openconnect" >> /etc/sudoers
```

or append it manually to the sudoers file

```bash
$ su
$ visudo
# append the file with "leo laptop= NOPASSWD: /usr/bin/openconnect"
```

where `leo`=USER and `laptop`=HOSTNAME
