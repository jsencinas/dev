# Dot files and configs
IMAGE

# Table of contents
- [Overview](#Overview)
- [Quick setup](#Quick-setup)
- [Network config](#Network-config)
- [General software](#General-software)
    - [nvim](#nvim)
    - 

# Overview

# Quick setup

# Network config

# General software

### git

### nvim

### firefox

### brave
*Installation:*
Run the following command:
```
curl -fsS https://dl.brave.com/install.sh | sh
```

*Troubleshooting*
By simply installing brave, the application will look pixeled.
To solve it, follow the next steps:

1. Open the following file with sudo:
    ```
    /usr/share/applications/brave-browser.desktop
    ```
2. Replace the current "Exec=brave %U" with the following:
    ```
    Exec=brave --enable-features=UseOzonePlatform --ozone-platform=wayland %U
    ```

# SDDM Theme
Github lik: https://github.com/Keyitdev/sddm-astronaut-theme
1. Run the following command:
    ```
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/keyitdev/sddm-astronaut-theme/master/setup.sh)"
    ```
2. To intall my custom gigachad theme (with little to no change), copy the following .conf file
    ```
    ~/dev/non-stow-files/sddm_gigachad_theme/Themes/black_hole_gigachad.conf
    ```
    to folowing directory:
    ```
    /usr/share/sddm/themes/sddm-astronaut-theme/Themes
    ```

3. To apply the config replace the following .desktop file
    ```
    ~/dev/non-stow-files/sddm_gigachad_theme/metadata.desktop
    ```
    in the following directory:
    ```
    /usr/share/sddm/themes/sddm-astronaut-theme
    ```
