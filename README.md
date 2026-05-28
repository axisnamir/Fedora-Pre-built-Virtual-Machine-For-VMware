# gNewSense Evolution (Rolling Release Platform)

Welcome to the modern rebirth of **gNewSense**. This repository hosts a curated collection of operating system editions built on a rock-solid, non-punishing **Debian** ecosystem base. To ensure hardware optimization and accessibility, our core editions are split into modern 64-Bit (`amd64`) and legacy 32-Bit (`i686`) standalone installers.

*   **CRITICAL ARCHITECTURE REMINDER:** 
    *   **gNewSense Base Kali**, **gNewSense Base Parrot**, and **gNewSense Base PureOS** are offered **strictly as 64-Bit (`amd64`)** images due to their respective upstreams dropping 32-bit support for advanced dependencies, toolchains, and security workstation standards. 
    *   All other builds, including **gNewSense FreeOnly**, continue to offer standalone dual-architecture (64-Bit and 32-Bit) downloads.

All editions feature the **Calamares graphical installer** pre-installed out-of-the-box for quick system deployments. Live ISO images are managed and generated using the **Penguin's Eggs** engine.

---

## 💾 System Download Index

### 🌟 1. The 4 Core Flagship Editions
Complete, pre-configured out-of-the-box flagship distributions containing our tailored system configurations and default desktop profiles.

*   **gNewSense Workstation**
    *   **Label:** Workstation Edition (GNOME desktop environment)
    *   **Interface:** GNOME (GTK4)
    *   **Downloads:** 💿 [64-Bit (amd64)](YOUR_LINK) | 💿 [32-Bit (i686)](YOUR_LINK)
    *   **Notes:** Default display manager is GDM.
*   **gNewSense Personal Desktop**
    *   **Label:** Personal Desktop Edition (KDE Plasma environment)
    *   **Interface:** Personal Desktop (Qt / KDE Plasma base)
    *   **Downloads:** 💿 [64-Bit (amd64)](YOUR_LINK) | 💿 [32-Bit (i686)](YOUR_LINK)
    *   **Notes:** Default display manager is SDDM.
*   **gNewSense KDE Theme Edition**
    *   **Label:** KDE Theme Edition (Premium customized layout styles)
    *   **Downloads:** 💿 [64-Bit (amd64)](YOUR_LINK) | 💿 [32-Bit (i686)](YOUR_LINK)
    *   **Included Layouts:** WhiteSur, Apple Ventura Dark, Sonoma Dark, McSur Dark, Tahoe Light, Windows 11, Skeuo Silver. Powered by SDDM.
*   **gNewSense FreeOnly** 🔄
    *   **Label:** Free-Only Workstation (14 desktop environments)
    *   **Firmware:** 100% Free Software compliant running the strict `linux-libre` kernel. Powered by LightDM.
    *   **Downloads:** 💿 [64-Bit (amd64)](YOUR_LINK) | 💿 [32-Bit (i686)](YOUR_LINK)
    *   **Included Interfaces (14):** COSMIC*, GNOME, Xfce, MATE, Cinnamon, Budgie, LXQt, LXDE, Enlightenment, Openbox, Fluxbox, JWM, i3-wm, Metacity. (*COSMIC available on 64-bit ISO only*).

---

### 🖥️ 2. Desktop & Window Manager Spins
Standalone installer profiles built for alternative interfaces, custom desktop testing, and high-density window manager workspaces.

*   **gNewSense Spin**
    *   **Label:** gNewSense Spin (19 desktop environments)
    *   **Firmware:** Full hardware compatibility (`linux-firmware` stack). Powered by SDDM.
    *   **Downloads:** 💿 [64-Bit (amd64)](YOUR_LINK) | 💿 [32-Bit (i686)](YOUR_LINK)
    *   **Included Interfaces (19):** COSMIC*, Hyprland*, CDE, Xfce, Cinnamon, MATE, LXQt, LXDE, Budgie, KDE Plasma Mobile, Trinity (TDE), JWM, Sway*, Deepin, Pantheon, Enlightenment, GNOME Flashback, Phosh, Sugar. (*Starred items available on 64-bit ISO only*).
*   **gNewSense Polina Spin**
    *   **Label:** Polina Desktop Environment (Experimental LXQt + KWin + KDE Apps)
    *   **Interface:** Hybrid Qt-workspace syncing an LXQt backend with the KWin window compositor and a native KDE Applications utility tray. Powered by SDDM.
    *   **Downloads:** 💿 [64-Bit (amd64)](YOUR_LINK) | 💿 [32-Bit (i686)](YOUR_LINK)
*   **gNewSense Window Manager Tiling Spin**
    *   **Label:** Tiling Window Manager Spin (21 tiling & dynamic managers)
    *   **Downloads:** 💿 [64-Bit (amd64)](YOUR_LINK) | 💿 [32-Bit (i686)](YOUR_LINK)
    *   **Included Interfaces (21):** Bspwm, Herbstluftwm, i3-wm, Qtile, awesome, xmonad, Stumpwm, EXWM, Larswm, LeftWM, Matchbox, Notion, Ratpoison, ZWM, dk, dwm, echinus, FrankenWM, spectrwm, Wingo, Sway*. Powered by LightDM. (*Sway available on 64-bit ISO only*).
*   **gNewSense Window Manager Stacking Spin**
    *   **Label:** Stacking Window Manager Spin (34 stacking managers)
    *   **Downloads:** 💿 [64-Bit (amd64)](YOUR_LINK) | 💿 [32-Bit (i686)](YOUR_LINK)
    *   **Included Interfaces (34):** Openbox, Fluxbox, JWM, Blackbox, Enlightenment, IceWM, Marco, Metacity, Muffin, KWin standalone, Gala, CTWM, 2bwm, 9wm, aewm++, AfterStep, berry, Compiz, cwm, E16, eggwm, EMWM, evilwm, flwm, FVWM3, Goomwwm, jbwm, Karmen, lwm, MWM, PekWM, progman, Sawfish, Metacity standalone. Powered by LightDM.

---

### 📦 3. Base Spins (Multi-Desktop GUI Only)
Comprehensive system bases that include every major desktop configuration officially supported by that distribution's ecosystem on standalone Debian-optimized installer images.

*   **gNewSense Base Kali**
    *   **Label:** Base Kali Spin (All 10 Cybersecurity Desktops)
    *   **Architecture:** 🖥️ **64-Bit (amd64) Only**
    *   **Included Interfaces (10):** Xfce, GNOME, KDE Plasma, MATE, LXQt, LXDE, Cinnamon, Enlightenment, GNOME Flashback, i3-wm.
    *   **Downloads:** 💿 [64-Bit (amd64)](YOUR_LINK)
*   **gNewSense Base Parrot**
    *   **Label:** Base Parrot Spin (All 5 Advanced Desktops)
    *   **Architecture:** 🖥️ **64-Bit (amd64) Only**
    *   **Included Interfaces (5):** MATE, KDE Plasma, LXQt, Enlightenment, and system utilities.
    *   **Downloads:** 💿 [64-Bit (amd64)](YOUR_LINK)
*   **gNewSense Base PureOS**
    *   **Label:** Base PureOS Spin (All 2 Official Desktops)
    *   **Architecture:** 🖥️ **64-Bit (amd64) Only**
    *   **Included Interfaces (2):** GNOME, KDE Plasma.
    *   **Downloads:** 💿 [64-Bit (amd64)](YOUR_LINK)
*   **gNewSense Base Devuan**
    *   **Label:** Base Devuan Spin (All 7 Official Desktops)
    *   **Downloads:** 💿 [64-Bit (amd64)](YOUR_LINK) | 💿 [32-Bit (i686)](YOUR_LINK)
    *   **Included Interfaces (7):** LXQt, LXDE, Cinnamon, KDE Plasma, Xfce, MATE, and core utilities.
*   **gNewSense Base MXLinux**
    *   **Label:** Base MXLinux Spin (All 3 Official Desktops)
    *   **Downloads:** 💿 [64-Bit (amd64)](YOUR_LINK) | 💿 [32-Bit (i686)](YOUR_LINK)
    *   **Included Interfaces (3):** Xfce, KDE Plasma, Fluxbox.
*   **gNewSense Base Q4OS**
    *   **Label:** Base Q4OS Spin (All 2 Official Desktops)
    *   **Downloads:** 💿 [64-Bit (amd64)](YOUR_LINK) | 💿 [32-Bit (i686)](YOUR_LINK)
    *   **Included Interfaces (2):** Trinity (TDE), KDE Plasma.
*   **gNewSense Base antiX**
    *   **Label:** Base antiX Spin (All 4 Official Desktops)
    *   **Downloads:** Simulator [64-Bit (amd64)](YOUR_LINK) | 💿 [32-Bit (i686)](YOUR_LINK)
    *   **Included Interfaces (4):** IceWM, Fluxbox, JWM, Herbstluftwm.

---

## 🛠️ Core System & Graphical Installer Design
*   **System Installer:** Powered natively by Calamares across all architecture choices.
*   **Isolation Architecture:** Desktop sessions are fully sandboxed via unique configuration paths in `/etc/skel/.config/` to prevent cross-theme profile pollution.
*   **Package Management:** Powered natively by `apt`.

---

## ⚙️ Compilation Steps (Building Standalone ISOs)

To rebuild your standalone architecture images:

1. Update your local Debian package databases:
   ```bash
   sudo apt update && sudo apt upgrade -y
   ```
2. Ensure Calamares and its theme configurations are loaded:
   ```bash
   sudo apt install calamares eggs -y
   ```
3. Wipe transient installation files to optimize deployment space:
   ```bash
   sudo apt clean
   ```
4. Run Penguin's Eggs engine to render your bootable installation media:
   ```bash
   sudo eggs produce --clone
   ```
