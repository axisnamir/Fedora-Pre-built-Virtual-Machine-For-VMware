---
name: 🖥️ Desktop / Theme Feature Request
about: Propose a new desktop environment layout, window manager profile, or theme variant.
title: '[REQUEST] '
labels: enhancement, feature-request
assignees: ''
---

## 💡 Proposed Environment or Theme Variant
Provide a clear, brief summary of the desktop environment, window manager, or custom visual layout theme styling you want to see integrated into the project.

## 📦 Targeted Project Section
Where does this request fit best within our existing distribution roadmap? (Please mark with an `X`):

*   [ ] **Core Flagship Editions** (Workstation, Personal Desktop, KDE Theme, FreeOnly, Devuan)
*   [ ] **Specialized Spins** (gNewSense Spin, Polina Spin, Window Manager Tiling, Window Manager Stacking)
*   [ ] **Base Spins** (Upstream-aligned GUI-only setups: Kali, Parrot, MXLinux, Q4OS, antiX, PureOS, Kubuntu, LinuxMCE, Pop!_OS, BackBox)

## 🛠️ Architecture & Package Dependencies
To prevent configuration conflicts or compilation errors, provide the underlying system metrics for this layout:

*   **Supported Architectures:** [ ] 64-Bit (amd64) Only | [ ] Dual 64-Bit & 32-Bit (i686) Compatible
*   **Upstream Package Origin:** [e.g., Native Debian Forky main tree, Unofficial repository mirror, AUR/Staging compilation rule]
*   **Required Core Toolkit/Libraries:** [e.g., GTK4, Qt6, Rust/Iced, XCB, EFL]
*   **Recommended Display Manager:** [ ] GDM | [ ] SDDM | [ ] LightDM

## 🎨 Visual Layout & Configuration Design
*   **The Workflow Metaphor:** Describe how the layout handles active applications (e.g., Dynamic Tiling, Floating Stacking, Retro Unix, Windows/macOS clone).
*   **Isolated Configuration Target:** List the folder path keys that need to be dropped into the system skeleton layer (`/etc/skel/.config/`) to isolate this workspace configuration.
*   **Default Shell Executable Name:** What launcher trigger command or shell initialization engine runs this environment? (e.g., `startpolina`, `i3`, `openbox`).

## 📈 Value to the gNewSense Project
Explain how adding this layout enhances the project. Will it improve speeds on old legacy 32-bit rigs, introduce next-generation Wayland compositing, or give users a unique desktop customization experience?

## 🔗 Reference Materials & Links
Provide URLs to upstream source code, documentation, or screenshot samples showing how the proposed interface layout looks and behaves:
*   Link to source/upstream project: 
*   Link to image/mockup sample:
