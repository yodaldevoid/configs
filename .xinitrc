[ -f "~/.Xresources" ] && xrdb -merge -I$HOME ~/.Xresources
xrandr --output `xrandr -q | grep ' connected' | head -n 1 | cut -d ' ' -f1` --primary

exec tdm --xstart
