#!/bin/bash

ln -srbT .profile ~/.profile
ln -srbT .bashrc ~/.bashrc
ln -srbT .Xdefaults ~/.Xdefaults
ln -srbT .xinitrc ~/.xinitrc
ln -srT bin ~/.bin
mkdir -p ~/.local/share/bash-completion
ln -srT bash_completions ~/.local/share/bash-completion/completions

ln -srT autostart ~/.config/autostart
ln -srT dunst ~/.config/dunst
ln -srT i3 ~/.config/i3
ln -srT i3status ~/.config/i3status
ln -srT systemd ~/.config/systemd
ln -srT urxvt ~/.urxvt
ln -srbT gtk-3.0-settings.ini ~/.config/gtk-3.0/settings.ini
ln -srbT gtk-4.0-settings.ini ~/.config/gtk-4.0/settings.ini
ln -srT git ~/.config/git

ln -srT icons ~/.local/share/icons
ln -srT backgrounds ~/.local/share/backgrounds
