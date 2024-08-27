#!/bin/sh

vol="$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | tr -dc '0-9' | sed 's/^0\{1,2\}//')"
bri="$(brightnessctl -m | awk -F, '{print substr($4, 0, length($4)-1)}')"

vol_notification() {
	dunstify -h int:value:"$vol" -u low "Volume Changed : $vol%" -t 1900 -r 9994
}

bri_notification() {
	dunstify -h int:value:"$bri" -u low "Bright Changed : $bri%" -t 1900 -r 9994
}

[ "$1" == "vol" ] && vol_notification && exit
[ "$1" == "bright" ] && bri_notification && exit
