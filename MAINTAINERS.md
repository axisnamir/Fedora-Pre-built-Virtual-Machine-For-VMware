# gNewSense Evolution - Core Maintainer Guidelines

This document serves as the master operations manual for all project maintainers, package packagers, and system administrators. As a core maintainer, you are responsible for keeping our 4 Flagship Editions, 4 Specialized Spins, and 10 Base Spins updated, functional, and fully synchronized across our network layout.

Because the project founder is currently under 18, **adult maintainers carry the responsibility for handling domain registration, server bill management, and infrastructure upkeep via our `gnewsenserw.org` and SourceForge assets.**

---

## 🛡️ 1. Core Architecture Guardrails

Every pull request (PR) or ISO compilation update must pass these strict compliance rules before hitting our public download subdomains:

*   **Clean Title Case Enforcement:** Never allow fully capitalized text blocks inside public system logs or metadata fields. Keep all text presentation in professional Title Case (e.g., `gNewSense Personal Desktop`, `gNewSense Polina Spin`).
*   **Prevent Theme Pollution:** Ensure every environment's settings remain completely sandboxed inside `/etc/skel/.config/` or `/etc/skel/.local/share/`. Modifying global configuration pathways directly will break other desktop layers and is strictly forbidden.
*   **Architecture Isolation Rules:**
    *   **64-Bit (`amd64`) Only:** Do not create or accept 32-bit builds for `gNewSense FreeOnly`, `Base Kali`, `Base Parrot`, `Base PureOS`, or `Base Pop!_OS`. These must remain 64-bit to prevent toolkit failures.
    *   **Dual Architecture (`amd64` / `i686`):** All other editions must provide separate, standalone 32-bit and 64-bit installer ISO files to preserve retro legacy hardware utility support.

---

## 📡 2. Mirror Deployment & ISO Pushing Procedures

Once an edition or spin build passes local diagnostic testing via the **Penguin's Eggs** simulation layer, use these precise server terminal instructions to push the finished product live to our public network layers.

### Step 1: Clean and Prepare the Local Sandbox Image
Wipe tracking logs, package caches, and temporary installation footprints inside your build container to ensure the output image size remains optimized:
```bash
sudo apt clean
sudo eggs produce --clone
```

### Step 2: Push Core Flagships to our Download Matrix
Use `rsync` over SSH to upload finished flagship files directly to our master download subdomain (`cdimage.gnewsenserw.org`):
```bash
rsync -avzP --delete ~/penguins-eggs/gnewsense-workstation-amd64.iso maintainer@cdimage.gnewsenserw.org:/var/www/iso/flagships/
```

### Step 3: Push Desktop & Window Manager Spins
Deploy high-density custom desktop setups or window manager grids to your specialized spins host sector (`spins.gnewsenserw.org`):
```bash
rsync -avzP --delete ~/penguins-eggs/gnewsense-wm-tiling-i686.iso maintainer@spins.gnewsenserw.org:/var/www/iso/spins/
```

### Step 4: Synchronize Upstream Base Spins to SourceForge Storage
To keep our upstream-aligned base editions cleanly indexed and distributed across the global SourceForge mirror network, push them straight to your static project files tree:
```bash
rsync -avzP -e ssh ~/penguins-eggs/gnewsense-base-kali-amd64.iso your_sf_username@frs.sourceforge.net:/home/frs/project/gnewsenserw/Base-Spins/
```

---

## 🛠️ 3. Repository Branching Strategy (v5.0 / v5.0.1)

Maintainers must organize codebase updates into three distinct pipeline structures:

1.  **`main` Branch:** Holds completely stable production template roots. Only updated when a build layout is verified to launch its pre-installed **Calamares graphical installer** flawlessly.
2.  **`development-forky` Branch:** The primary workshop track tracking incoming **Debian 14 (Forky)** package sets. All experimental modifications (such as testing adjustments for the `Polina Desktop Environment`) occur here first.
3.  **`patch-5.0.1` Branch:** A dedicated maintenance layer created explicitly to track post-release bug fixes, desktop configuration alignment repairs, and security updates targeting our v5.0.1 point release roadmap.

---

## 📄 4. Core Maintainer Code of Conduct
As a maintainer of **gNewSense Evolution**, you are a guide for a next-generation open-source community. Be helpful, clear, and direct when evaluating community code contributions on our GitHub Pull Request tracker pages. Keep our architecture clean, our documentation pristine, and our file systems fully isolated.
