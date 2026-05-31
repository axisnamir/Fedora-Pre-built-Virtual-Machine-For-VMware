---
Name: 🛠️ Pull Request Template
About: Guidelines for submitting code fixes, custom desktop profiles, or kernel hooks.
---

## 👑 The King's Review Checklist
Before opening this Pull Request, ensure your patch sets comply with our repository governance models:

*   [ ] **Title Case Alignment:** All display names and labels match our strict Title Case rules (e.g., `gNewSense Personal Desktop`).
*   [ ] **Strict Session Sandboxing:** No modifications are applied to global targets directly. Everything is nested inside `/etc/skel/.config/`.
*   [ ] **Architecture Guardrails:** No 32-bit builds are introduced for `FreeOnly`, `Base Kali`, `Base Parrot`, `Base PureOS`, or `Base Pop!_OS`.

## 📝 Description of Changes
Provide a detailed breakdown of the terminal wrapper scripts, package adjustments, or interface additions included in this PR:

## ⚙️ Staging Test Logs
Please attach your terminal diagnostics showing a successful compile run via the **Penguin's Eggs** engine:

```text
[Paste your successful 'sudo eggs produce --clone' output log data here]
```
