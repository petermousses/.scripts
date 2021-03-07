#!/usr/bin/bash

# Change displays using dmenu (Ideally used with keybinding)

hdmion=$(xrandr | grep ' connected' | grep 'HDMI')
if [ "$hdmion" != "" ]; then
	chosen=$(echo -e "Laptop\nHDMI-Laptop\nLaptop-HDMI\nHDMI\nCustom" | dmenu -i)
	case "$chosen" in
		Laptop) xrandr --output HDMI1 --off ;;
		HDMI-Laptop) xrandr --output HDMI1 --auto --left-of eDP1 ;;
		Laptop-HDMI) xrandr --output HDMI1 --auto --right-of eDP1 ;;
		HDMI) xrandr --output HDMI1 --auto --right-of eDP1; xrandr --output eDP1 --off ;;
		Custom) arandr ;;
	esac
else
	xrandr --output eDP1 --auto; xrandr --output HDMI1 --off
fi
