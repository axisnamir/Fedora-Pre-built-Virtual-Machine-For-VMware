# gNewSense Evolution - Developer & Maintainer FAQ

This official tracking index answers core architecture, licensing, and infrastructure questions for gNewSense Evolution (v5.0 / v5.0.1) tracking the Debian 14 (Forky) package baseline.

---

### ❓ Q1: Why does gNewSense Evolution enable i686 (32-bit) applications and dpkg architectures by default on 64-bit ISOs?
**A:** To maximize software preservation and backwards compatibility. By natively enabling Debian Multiarch capabilities via `dpkg --add-architecture i386` during the live build staging process, our modern 64-bit (`amd64`) images can install and run legacy 32-bit applications, vintage gaming binaries, and older emulation toolchains out of the box without requiring manual user intervention.

### ❓ Q2: Why are some editions 64-Bit (amd64) only while others support native 32-Bit (i686) installation disks?
**A:** We respect upstream development boundaries. Heavy modern code frameworks (such as the Rust-native toolkits powering COSMIC) and cutting-edge digital forensics pipelines in `Base Kali` or `Base PureOS` have completely dropped 32-bit compilation targets. For these, we offer strict single-architecture `amd64` images. All other variants retain true separate, standalone 32-bit media files to accommodate retro computing rigs.

### ❓ Q3: How are so many desktop environments packed onto one image without cluttering the system?
**A:** Every single desktop layer and window manager configuration profile is safely sandboxed using isolated system skeleton directories (`/etc/skel/.config/`). Global paths are never altered directly, eliminating theme cross-pollution and session conflicts completely.

### ❓ Q4: What is the official role of incoming adult maintainers?
**A:** Because the project founder is under 18, incoming adult maintainers, server operators, and web developers carry the legal responsibility to purchase and manage our external network properties (`gnewsenserw.org` and `://gnewsenserw.com`) and handle automated command-line `rsync` pipelines to push compiled ISO assets to our SourceForge mirrors.

### ❓ Q5: What is the media broadcasting policy for this project?
**A:** To safeguard our development team's identity, all promotional media and updates are strictly voice-free and face-free:
*   **YouTube (@gnewsenselinux):** Silent, high-density screen-capture demonstrations with lo-fi background beats.
*   **Twitter & Mastodon:** Text-only update streams and short 5-second workspace loop animations (GIFs).
.
