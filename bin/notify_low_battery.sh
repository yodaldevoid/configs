#!/usr/bin/env bash

# https://github.com/MitMaro/battery-notify

export DISPLAY="$(w -h $USER | awk '$3 ~ /:[0-9.]*/{print $3}')"
XAUTHORITY="$HOME/.Xauthority"

SOUND_COMMAND="${SOUND_COMMAND:-paplay}"
CRITICAL_LEVEL="${CRITICAL_LEVEL:-5}"
CRITICAL_ICON="${CRITICAL_ICON:-"battery-empty"}"
CRITICAL_SOUND="${CRITICAL_SOUND:-"/usr/share/sounds/purple/alert.wav"}"
LOW_LEVEL="${LOW_LEVEL:-10}"
LOW_ICON="${LOW_ICON:-"battery-caution"}"
LOW_SOUND="${LOW_SOUND:-""}"

if [[ -r "$HOME/.dbus/Xdbus" ]]; then
    source "$HOME/.dbus/Xdbus"
fi

battery_level="$(acpi -b | grep -v "Charging" | grep -P -o '([0-9][0-9]:[0-9][0-9]:[0-9][0-9])')"
# [[ $(date +%s -d $(acpi -b | grep -P -o '([0-9][0-9]:[0-9][0-9]:[0-9][0-9])')) -le $(date +%s -d "00:30") ]]

if [[ -z "$battery_level" ]]; then
    exit 0
fi

current="$(date +%s -d "$battery_level")"
low="$(date +%s -d "00:$LOW_LEVEL")"
critical="$(date +%s -d "00:$CRITICAL_LEVEL")"

if [[ "$current" -le "$critical" ]]; then
    notify-send -i "$CRITICAL_ICON" -t 15000 -u critical "Battery Critical" "Battery charge allows for ${battery_level}"
    if [[ ! -z "$CRITICAL_SOUND" ]]; then
        $SOUND_COMMAND "$CRITICAL_SOUND"
    fi
    exit 0
fi

if [[ "$current" -le "$low" ]]; then
    notify-send -i "$LOW_ICON" -t 15000 -u normal "Battery Low" "Battery charge allows for ${battery_level}"
    if [[ ! -z "$LOW_SOUND" ]]; then
        $SOUND_COMMAND "$LOW_SOUND"
    fi
    exit 0
fi
