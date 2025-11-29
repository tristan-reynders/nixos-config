<h1 align="center">
   <img src=".github/assets/logo/nixos.png" width="100px" /> 
   <br>
      Tristan's NixOS Configuration
   <br>
      <img src=".github/assets/palette/pallete-0.png" width="600px" /> <br>

   <div align="center">
      <p></p>
      <div align="center">
         <a href="https://github.com/tristan-reynders/nixos-config/stargazers">
            <img src="https://img.shields.io/github/stars/tristan-reynders/nixos-config?color=FABD2F&labelColor=282828&style=for-the-badge&logo=starship&logoColor=FABD2F">
         </a>
         <a href="https://github.com/tristan-reynders/nixos-config/">
            <img src="https://img.shields.io/github/repo-size/tristan-reynders/nixos-config?color=B16286&labelColor=282828&style=for-the-badge&logo=github&logoColor=B16286">
         </a>
         <a = href="https://nixos.org">
            <img src="https://img.shields.io/badge/NixOS-unstable-blue.svg?style=for-the-badge&labelColor=282828&logo=NixOS&logoColor=458588&color=458588">
         </a>
         <a href="https://github.com/tristan-reynders/nixos-config/blob/main/LICENSE">
            <img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&colorA=282828&colorB=98971A&logo=unlicense&logoColor=98971A&"/>
         </a>
      </div>
      <br>
   </div>
</h1>

## 📸 Screenshots

``` 
W.I.P. 
```

## ❄️ Overview

### 📋 Structure
- ❄️ [flake.nix](flake.nix) Base of the configuration
- [hosts/](hosts/) Per-host configuration that contain machine specific configurations
    - 🖥️ [desktop/](hosts/desktop/) Desktop specific configuration
    - 💻 [zenbook/](hosts/zenbook/) Laptop specific configuration
- 🧰 [modules/](modules/)  Modularized core NixOS configuration
- 🏠 [home/tristan/](home/tristan/) My [Home-Manager](https://github.com/nix-community/home-manager) configuration
- 🔧 [lib/](lib/)  Contains utility functions to modularize and simplify NixOS configuration
- 🖼️ [wallpapers/](wallpapers/) Wallpaper collection

### 🧩 Main Components
|                             | NixOS + Niri                                                                                     |
| --------------------------- | :------------------------------------------------------------------------------------------------:
| **Window Manager**          | [Niri](#) |
| **Desktop Shell**           | [Noctalia Shell](#) |
| **Terminal Emulator**       | [Alacritty](#) |
| **Shell**                   | [zsh](#) + [starship](#) |
| **Text Editor**             | [VS Code](#) + [Neovim](#) |
| **File Manager**            | [Nautilus](#) + [yazi](#) |
| **Fonts**                   | [JetBrainsMono NF](#) |
| **Color Scheme**            | [Gruvbox Dark](#) |
| **Music Player**            | [Spicetify](#) |
| **Theming**                 | [stylix](#) |

### ⌨️ Keybinds
<details>
<summary>
Niri </h4> 
</summary>

| Action                      | Bind                                                                                           |
| --------------------------- | :----------------------------------------------------------------------------------------------:
| **Open a terminal**          | `Super` + `T` |
| **Open application launcher** | `Super` + `M` |
| **Open session menu** | `Super` + `P` |
| **Close application** | `Super` + `Q` |
| **Toggle overview** | `Super` + `O` |
| **Focus column left** | `Super` + `H` / `Left` |
| **Focus column right** | `Super` + `L` / `Right` |
| **Focus window down** | `Super` + `J` / `Down` |
| **Focus window up** | `Super` + `K` / `Up` |
| **Move to workspace** | `Super` + `1-9` |
| **Move column left** | `Super` + `CTRL` + `H` / `Left` |
| **Move column right** | `Super` + `CTRL` + `L` / `Right` |
| **Move column down** | `Super` + `CTRL` + `J` / `Down` |
| **Move column up** | `Super` + `CTRL` + `K` / `Up` |
| **Focus monitor left** | `Super` + `Shift` + `H` + `Left` |
| **Focus monitor right** | `Super` + `Shift` + `L` + `Right` |
| **Move column to monitor left** | `Super` + `Shift` + `CTRL` + `J` / `Left` |
| **Move column to monitor right** | `Super` + `Shift` + `CTRL` + `L` / `Right` |
| **Switch preset column width** | `Super` + `R` |
| **Maximize column** | `Super` + `F` |
| **Increase/Decrease column width** | `Super` + `-` / `+` |
| **Increase/Decrease window height** | `Super` + `Shift` + `-` + `+` |
| **Power off monitors** | `Super` + `Shift` + `P` |

</details>