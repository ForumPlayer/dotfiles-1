# Setting up after base installation
## Installing the AUR helper yay:
```
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
cd
```

# Replace items in the dots with your appropriate variables
 - Change $HOME, $USERNAME, $ADDRESS in .zshrc
 - Change $HOME in dots/.config/flameshot/flameshot.ini
 - Change Resolution in dots/.config/i3/config and /etc/lightdm/lightdm.conf
 - Change or Remove mouse entry in dots/etc/lightdm/resolution.sh
 - Change $APIKEY in /home/kenielf/Documents/dotfiles/dots/.config/wedder/wedder.toml with the appropriate open weather map api key


## Install packages from both pacman-packages and yay-packages
## Enable lightdm
`sudo systemctl enable lightdm`
Configure it accordingly before rebooting, edit list of messages in `/usr/share/lightdm-webkit/themes/glorious/js/authenticate.js` to remove the jokey ones

## Copy all files from this repository to their original folders
And done! You should have a working system

## After installing all systems, install rEFInd
```
refind-install --usedefault /dev/sdXY
```
Configure it and theme accordingly
