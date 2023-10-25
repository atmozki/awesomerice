#!/bin/bash

## General ------------------------------------------------------------------------#

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

## Configurations ------------------------------------------------------------------#

# Kill if already running
killall -9 dunst conky

# Autostart-----------------------------------------------------------------------#

run dex $HOME/.config/autostart/arcolinux-welcome-app.desktop

# polkit agent
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1

# Start network applet
run nm-applet

# Autorun Power Manager
run xfce4-power-manager

# Bluetooth Tray Icon
run blueberry-tray

# Volume Tray Icon
run volumeicon

# NumLock On
run numlockx on

# Pamac Tray Icon
run pamac-tray

# Start conky
# run conky &

# Start Doom Emacs
emacs --daemon &

# Start mpd
# exec mpd &

run variety
# Other applications
# nitrogen --restore &
# run caffeine &
# run dropbox &
# run discord &


## Wallpapers ---------------------------------------------------------------#

##you can set wallpapers in themes as well

### Get the wallpaper
feh --bg-fill --randomize ~/Pictures/Walls/Desktop/
