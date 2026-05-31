---
name: 🐛 Bug Report
about: Create a report to help us fix glitches or configuration issues in gNewSense Evolution.
title: '[BUG] '
labels: bug, triage
assignees: ''
---

## 📝 Problem Description
Provide a clear, brief description of the desktop crash, theme pollution, or package dependency glitch you encountered.

## ⚙️ System Environment Metadata
To help us duplicate and resolve this error without guessing, please fill out your target system setup properties exactly:

*   **gNewSense Variant:** [e.g., gNewSense Workstation, gNewSense KDE Theme Edition, Window Manager Tiling Spin, Base antiX]
*   **Processor Architecture:** [ ] 64-Bit (amd64) | [ ] 32-Bit (i686)
*   **Target Release Version:** [ ] v5.0 (Debian Forky Base) | [ ] v5.0.1 Point Release
*   **Active Desktop Session:** [State the exact interface index layout name, e.g., GNOME, Personal Desktop, Polina, WhiteSur, JWM, i3-wm]
*   **Display Manager Used:** [ ] GDM | [ ] SDDM | [ ] LightDM | [ ] LXDM

## 🔄 Steps to Reproduce
Tell us exactly how to force the issue to happen on our test machines:
1. Boot into the live environment using the `[variant name here]` ISO image.
2. Select `[desktop session name]` from the active display login screen dropdown menu.
3. Open the application or trigger the custom environment file shortcut: `[State command or shortcut here]`
4. Observe the interface behavior: `[State error behavior here]`

## 💥 Expected vs. Actual Behavior
*   **Expected:** Describe what the application panel, window theme boundary, or composition layer should look like.
*   **Actual:** Describe the visual pollution, lockups, or terminal outputs that occurred instead.

## 📋 System Logs & Diagnostics
If the **Calamares graphical installer** crashes or a custom wrapper engine launcher scripts fails to deploy, paste the terminal output log sections directly below using code block parameters:

```text
[Paste terminal log output data from /var/log/syslog or /var/log/calamares.log here]
```

## 📸 Visual Documentation
If you have screenshots showing the layout glitch, alignment overlaps, or font engine rendering issues, drop the image files directly here to assist our development tracking.
