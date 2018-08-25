#!/bin/bash

ln -srbT .profile ~/.profile
ln -srbT .bashrc ~/.bashrc
ln -srbT .Xdefaults ~/.Xdefaults
ln -srbT .xinitrc ~/.xinitrc
ln -srT bin ~/.bin

ln -srT autostart ~/.config/autostart
ln -srT dunst ~/.config/dunst
ln -srT i3 ~/.config/i3
ln -srT i3status ~/.config/i3status
ln -srT systemd ~/.config/systemd
ln -srT urxvt ~/.urxvt

ln -srT icons ~/.local/share/icons
