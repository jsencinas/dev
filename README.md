# Dot files and configs
IMAGE

# Table of contents
- [Overview](#Overview)
- [Quick setup](#Quick-setup)
- [Network config](#Network-config)
- [General software](#General-software)
    - [git](#git)
    - [nvim](#nvim)
    - [firefox](#firefox)
    - [brave](#brave)

# Overview
A compilation of all my gigachad config files for the software I use (doesn't work in windows).
In addition, a series of .sh files are located in the repo. When runned, this .sh files install
all the dependencies necessary to work perfectly. For more info, take a look at the 
[quick setup](#Quick-setup) section.

# Quick setup
There are multiple sh files to automate some installation processes.\n
- To get a full desktop installation run the following file: 
- Modular sh files are located in the sh_files directory

# Network config
To initially connect to the network, I recomend using the 
[iwctl](https://wiki.archlinux.org/title/Iwd) command.
1. Run the following command to start the interactive prompt
    ```
    iwctl
    ```
2. Get the wireless device name
    ```
    device list
    ```
3. If the device is turned of, do the following:
    ```
    device name set-property Powered on
    ```
    ```
    adapter adapter set-property Powered on
    ```
4. Scan for networks
    ```
    station <device_name> scan
    ```
5. Print the founded networks
    ```
    station <device_name> get-networks
    ```
6. Connect to the desired network
    ```
    station <device_name> connect <SSID>

    ```
7. You will be asked to input your the network password


# General software

### git
**Manual installation**
1. Run the following command:
    ```
    sudo pacman -S git
    ```
**Configure**
Git needs some information like an identifies so that git can register **who**
made certain change.
1. Set username
    ```
    git config --get user.<name>
    ```
2. Set email
    ```
    git config --get user.<email>
    ```
3. Github determines the principal branch name as "main", you can force git to use that convention 
instead of "master" with the following command:
    ```
    git config --global init.defaultBranch main
    ```
4. Make git rebase pulls automatically
    ```
    git config --global pull.rebase true
    ```
**Set up ssh key**
1. Generate the key with the following command:
    ```
    ssh-keygen -t ed25519 -C "<your_email@example.com>"
    ```
2. Run this command and copy the output:
    ```
    cat ~/.ssh/id_ed25519.pub
    ```
3. Now on github, go to settings/SSH and GPG keys, click on "New SSH key" and paste your copied key.

### nvim

### firefox

### brave
**Manual installation:**
Run the following command:
```
curl -fsS https://dl.brave.com/install.sh | sh
```

**Troubleshooting**
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
