# Contributing to gNewSense Evolution

Thank you for your interest in contributing to **gNewSense Evolution (v5.0 / v5.0.1)**! This project relies on developers and enthusiasts to help test, maintain, and optimize our 5 Flagship Editions, 4 Specialized Spins, and 10 Base Spins built on **Debian 14 (Forky)**.

Following these guidelines ensures that your configuration fixes, custom session scripts, and package profiles remain clean, organized, and functional across both 64-Bit (`amd64`) and legacy 32-Bit (`i686`) deployment environments.

---

## 🛑 Critical Rules for Contributions

### 1. Maintain Title Case Naming Structure
To protect project branding consistency, ensure all display strings use exact Title Case format inside documentation files, configuration blocks, and system layouts. 
*   **Correct:** `gNewSense Workstation`, `Personal Desktop`, `gNewSense Spin`, `Kubuntu`
*   **Incorrect:** `GNEWSENSE WORKSTATION`, `PERSONAL DESKTOP`, `kubuntu`

### 2. Strict Session File Isolation (Sandboxing)
Because our editions contain up to 34 desktop environments or window managers on a single image, **never modify global configuration targets directly.** All application themes, taskbar panel shortcuts, and user preferences must be isolated cleanly using system skeleton directory profiles:
*   Save user template properties inside `/etc/skel/.config/` or `/etc/skel/.local/share/` within your localized build template directories.

### 3. Architecture Boundary Adherence
Do not force 32-bit compilation pull-requests on packages or editions where the upstream architecture branch has dropped support.
*   **64-Bit Only Target Profiles:** `gNewSense FreeOnly`, `Base Kali`, `Base Parrot`, `Base PureOS`, and `Base Pop!_OS` must remain strictly single-architecture `amd64` builds to preserve modern framework requirements.

---

## 🛠️ Setting Up a Local Testing Machine

To safely build or modify our live deployment filesystem environments, set up a dedicated test machine running a clean **Debian Forky** baseline structure.

1. Synchronize your local package databases with the Debian 14 project mirrors:
   ```bash
   sudo apt update && sudo apt upgrade -y
   ```
2. Deploy the core graphical installer framework dependencies and display layer packages:
   ```bash
   sudo apt install -y build-essential git calamares eggs lightdm sddm gdm3
   ```

---

## 🏗️ Development Lifecycle Pipeline

### Step 1: Fork and Clone the Repository
Fork this main repository to your local GitHub layout account, then clone the source assets directly to your sandbox testing environment:
```bash
git clone https://github.com
cd gnewsense-evolution
```

### Step 2: Make Local Adjustments
Navigate into the specific template folders matching your project goals (e.g., `build-templates/specialized-spins/polina-spin/`) and update your execution scripts or packages.

### Step 3: Compile and Verify with Penguin's Eggs
Before committing code, trigger a local diagnostic build to guarantee the `Calamares` installer maps the dependencies smoothly and the output ISO image functions flawlessly:
```bash
# Clean downstream package archives to shrink the filesystem footprint size
sudo apt clean

# Generate your bootable live installer system image tracking your current architecture
sudo eggs produce --clone
```

### Step 4: Submit Your Code
Push your validated branch layout updates to your GitHub fork account and open a **Pull Request (PR)** tracking our `main` repository tree. Ensure your PR description includes:
*   The specific **Flagship Edition, Spin, or Base Spin** modified.
*   The **Target Architecture** verified (64-Bit and/or 32-Bit configurations).
*   A clear list of the packages or desktop environment variables adjusted.

---

## 🐛 Submitting Quality Bug Reports

If you encounter system session crashes, theme pollution, or missing tools during deployment tests, please file an issue using our repository tracker layout.

**Please include the following metadata in your report:**
*   **Project ISO Variant:** (e.g., `gNewSense Personal Desktop`, `Window Manager Tiling Spin`, `Base antiX`)
*   **Processor Architecture:** (`amd64` or `i686`)
*   **Environment Slot Involved:** State the exact desktop environment selection number that experienced the error.
*   **Steps to Reproduce:** Provide terminal errors or system log summaries from `/var/log/syslog` or `/var/log/calamares.log` if the deployment engine fails.
