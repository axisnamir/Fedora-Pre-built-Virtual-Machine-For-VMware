#!/bin/bash
# gNewSense Evolution - Icon & Cursor Theme Synchronization Engine

# Define asset storage directories
SYSTEM_ICON_DIR="/usr/share/icons"
SKEL_ICON_DIR="/etc/skel/.local/share/icons"
LOG_FILE="$HOME/.config/gnewsense-theme-sync.log"

mkdir -p "$HOME/.config"
echo "👑 Launching Core Theme Synchronization Loop..." > "$LOG_FILE"

# Ensure the visual icon package dependencies are pulled from Debian Forky main branches
if [ ! -d "$SYSTEM_ICON_DIR/Papirus" ] && [ ! -d "$SYSTEM_ICON_DIR/Adwaita" ]; then
    echo "⚡ Missing core icon packages. Syncing package databases..." | tee -a "$LOG_FILE"
    sudo apt update && sudo apt install -y papirus-icon-theme adwaita-icon-theme
fi

# Synchronize your custom cursor sets and window icons to the user skeleton path
if [ -d "artwork/themes/icons" ]; then
    echo "📁 Copying repository asset icon files to system skeleton..." | tee -a "$LOG_FILE"
    mkdir -p "$SKEL_ICON_DIR"
    cp -r artwork/themes/icons/* "$SKEL_ICON_DIR/"
fi

# Force system configuration trackers to rebuild font caches and theme registries
echo "⚙️  Rebuilding desktop layout graphic icon indexes..." | tee -a "$LOG_FILE"
sudo gtk-update-icon-cache -f -t /usr/share/icons/* 2>/dev/null

# Sync settings natively for GTK based flagship platforms (GNOME, Xfce, MATE)
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark" 2>/dev/null
gsettings set org.gnome.desktop.interface cursor-theme "Adwaita" 2>/dev/null

# Sync settings for Qt/Plasma based configurations using config wrapper overrides
if [ -f "$HOME/.config/kdeglobals" ]; then
    sed -i 's/Theme=.*/Theme=Papirus-Dark/' "$HOME/.config/kdeglobals" 2>/dev/null
fi

echo "🟢 Theme layout initialization loops successfully completed!" | tee -a "$LOG_FILE"
chmod +x build-templates/flagship-editions/workstation/usr/bin/sync-themes.sh
