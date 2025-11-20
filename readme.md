# Lua-Matic-Dots | MY CONFIG Awesomewm

Personalized **NixOS** dotfiles using **AwesomeWM**, optimized for a keyboard-centric workflow and aesthetic consistency.

![Preview](./awesome/images/background.jpg)

## 🛠 System Components

* **OS**: NixOS (Unstable / 25.05)
* **Window Manager**: AwesomeWM (Modular Lua config)
* **Terminal**: Alacritty
* **Editor**: Neovim (Lazy.nvim)
* **Shell**: Bash
* **Compositor**: Picom (Blur & Transparency)
* **Input Method**: Fcitx5 (Unikey/Vietnamese)
* **Browser**: Firefox, Brave, Google Chrome
* **Tools**: Docker, MySQL (MariaDB), Hacking tools (nmap, aircrack-ng, nikto)

## ✨ Key Features

* **Consistent Interface**: unified **JetBrainsMono Nerd Font** and **Pastelnight** color theme across Neovim and Alacritty.
* **Modular AwesomeWM Config**: The configuration is split into manageable modules (`keys`, `layout`, `ui`, `widgets`) rather than a single monolithic `rc.lua`.
* **Graphics Performance**: Pre-configured for Hybrid Laptop GPUs (Intel/Nvidia) using Prime Sync and Nvidia Proprietary Drivers.
* **NixOS Config**: Fully declarative system management via `configuration.nix`, handling services, packages, and hardware settings.

## 🚀 Installation

### 1. Clone the repository
Download the source code to your machine:
```bash
git clone https://github.com/khaquachtrong74/lua-matic-dots.git
cd lua-matic-dots
```
2. Allow authentication user run this bash script
```bash
chmod +x ./setup.bash
```
3. And then run this 
```bash
./setup.bash
```
# WARNING:
- You should install neovim and packages related to lazy-nvim
- Install picom with pacman/apt install picom
