#!/bin/bash
# gNewSense Evolution - Automated Wallpaper Picker Engine

# Define standard folder targets
WALLPAPER_DIR="/usr/share/backgrounds/gnewsense"
CONFIG_FILE="$HOME/.config/gnewsense-wallpaper.conf"

# Ensure our asset folder structure exists smoothly
mkdir -p "$HOME/.config"

# Check if the text dialog window package dependencies are loaded
if ! command -v zenity &> /dev/null; then
    echo "👑 Error: 'zenity' is missing. Installing user layout utilities..."
    sudo apt update && sudo apt install -y zenity
fi

# Gather a list of available image assets inside your artwork path
if [ ! -d "$WALLPAPER_DIR" ]; then
    # Fallback to home user artwork target if system directories aren't compiled yet
    WALLPAPER_DIR="$HOME/gnewsense-evolution/artwork/wallpapers"
fi

# Let the user select their active background file using a visual popup grid
SELECTED_FILE=$(basename "$(zenity --file-selection --title="👑 gNewSense Evolution Wallpaper Matrix" --filename="$WALLPAPER_DIR/")")

if [ -z "$SELECTED_FILE" ]; then
    zenity --info --text="No theme wallpaper modifications applied." --timeout=2
    exit 0
fi

# Apply the background selection cleanly across our flagship environments
IMAGE_PATH="$WALLPAPER_DIR/$SELECTED_FILE"

# 1. Update GNOME Workstation backgrounds
gsettings set org.gnome.desktop.background picture-uri "file://$IMAGE_PATH" 2>/dev/null
gsettings set org.gnome.desktop.background picture-uri-dark "file://$IMAGE_PATH" 2>/dev/null

# 2. Update Personal Desktop (KDE Plasma) style trackers via qdbus interface script loops
qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript "
    var allDesktops = desktops();
    for (var i=0; i<allDesktops.length; i++) {
        var d = allDesktops[i];
        d.currentConfigGroup = Array('Wallpaper', 'org.kde.image', 'General');
        d.writeConfig('Image', 'file://$IMAGE_PATH');
    }
" 2>/dev/null

# Save configuration logging outputs natively
echo "WALLPAPER=$IMAGE_PATH" > "$CONFIG_FILE"
zenity --info --text="Wallpaper successfully synchronized to: $SELECTED_FILE" --timeout=2
