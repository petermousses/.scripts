#!/usr/bin/bash

chosen=$(echo -e "Lock\nSuspend\nLog Out\nShutdown\nReboot" | dmenu -i)
case "$chosen" in
	Lock) blurlock ;;
	Suspend) systemctl suspend ;;
	"Log Out") exit	;;
	Shutdown) sh /home/peterm/.scripts/prompt "Are you sure you want to shut down now?" "shutdown now" ;;
	Reboot) sh /home/peterm/.scripts/prompt "Are you sure you want to reboot now?" "shutdown -r now" ;;
esac
