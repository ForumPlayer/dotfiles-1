#!/bin/bash
# Copies all necessary files to the appropriate folders


# Copy all files from .config to dotfiles folder
cp -r ~/.config/alacritty ~/Documents/dotfiles/dots/.config
cp -r ~/.config/cava ~/Documents/dotfiles/dots/.config
cp -r ~/.config/dunst ~/Documents/dotfiles/dots/.config
cp -r ~/.config/eog ~/Documents/dotfiles/dots/.config
cp -r ~/.config/flameshot ~/Documents/dotfiles/dots/.config
cp -r ~/.config/i3 ~/Documents/dotfiles/dots/.config
cp -r ~/.config/libfm ~/Documents/dotfiles/dots/.config
cp -r ~/.config/mpd ~/Documents/dotfiles/dots/.config
cp -r ~/.config/ncmpcpp ~/Documents/dotfiles/dots/.config
cp -r ~/.config/pcmanfm ~/Documents/dotfiles/dots/.config
cp -r ~/.config/picom ~/Documents/dotfiles/dots/.config
cp -r ~/.config/polybar ~/Documents/dotfiles/dots/.config
cp -r ~/.config/pomotroid ~/Documents/dotfiles/dots/.config
cp -r ~/.config/ranger ~/Documents/dotfiles/dots/.config
cp -r ~/.config/rofi ~/Documents/dotfiles/dots/.config
cp -r ~/.config/Thunar ~/Documents/dotfiles/dots/.config
cp -r ~/.config/wedder ~/Documents/dotfiles/dots/.config
cp -r ~/.config/xfce4 ~/Documents/dotfiles/dots/.config
cp -r ~/.config/xpad ~/Documents/dotfiles/dots/.config
cp -r ~/.config/zathura ~/Documents/dotfiles/dots/.config


# Copy all files from .fonts and .icons
cp -r ~/.fonts ~/Documents/dotfiles/dots/.fonts
cp -r ~/.icons ~/Documents/dotfiles/dots/.icons

# Copy other files
cp ~/.stalonetrayrc ~/Documents/dotfiles/dots
cp ~/.xinitrc ~/Documents/dotfiles/dots
cp ~/.Xresources ~/Documents/dotfiles/dots
cp ~/.zshrc ~/Documents/dotfiles/dots

# Copy files from /etc/ and /usr
cp -r /etc/vimrc ~/Documents/dotfiles/dots/etc
cp -r /etc/lightdm ~/Documents/dotfiles/dots/etc
cp -r /usr/share/backgrounds ~/Documents/dotfiles/dots/usr/share
