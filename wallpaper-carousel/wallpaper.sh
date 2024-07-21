#!/bin/bash

WALLPAPER_DIR=~/Wallpapers
CURRENT_INDEX_FILE=~/.current_wallpaper_index

# Ensure the index file exists and initialize if it doesn't
if [ ! -f "$CURRENT_INDEX_FILE" ]; then
    echo 0 > "$CURRENT_INDEX_FILE"
fi

CURRENT_INDEX=$(cat "$CURRENT_INDEX_FILE")
WALLPAPERS=($(ls "$WALLPAPER_DIR"))
TOTAL_WALLPAPERS=${#WALLPAPERS[@]}

# Function to set wallpaper
set_wallpaper() {
    WALLPAPER="${WALLPAPERS[$CURRENT_INDEX]}"
    gsettings set org.gnome.desktop.background picture-uri "file://$WALLPAPER_DIR/$WALLPAPER"
    gsettings set org.gnome.desktop.background picture-uri-dark "file://$WALLPAPER_DIR/$WALLPAPER"
}

# Function to increment index
next_wallpaper() {
    CURRENT_INDEX=$(( (CURRENT_INDEX + 1) % TOTAL_WALLPAPERS ))
    echo $CURRENT_INDEX > "$CURRENT_INDEX_FILE"
    set_wallpaper
}

# Function to decrement index
prev_wallpaper() {
    CURRENT_INDEX=$(( (CURRENT_INDEX - 1 + TOTAL_WALLPAPERS) % TOTAL_WALLPAPERS ))
    echo $CURRENT_INDEX > "$CURRENT_INDEX_FILE"
    set_wallpaper
}

case "$1" in
    next)
        next_wallpaper
        ;;
    prev)
        prev_wallpaper
        ;;
    *)
        set_wallpaper
        ;;
esac