#!/usr/bin/bash

# Script to give locking options with keybind(similar to i3's default

chosen=$(echo -e "Lock\nSuspend\nLog Out\nShutdown\nReboot" | dmenu -i)
case "$chosen" in
	Lock) blurlock ;;
	Suspend) systemctl suspend ;;
	"Log Out") exit	;;
	Shutdown) sh /home/peterm/.scripts/prompt.sh "Are you sure you want to shut down now?" "shutdown now" ;;
	Reboot) sh /home/peterm/.scripts/prompt.sh "Are you sure you want to reboot now?" "shutdown -r now" ;;
esac
