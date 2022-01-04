CHENTRY=$(echo -e "Power off\nReboot\nSuspend\nLog out\nCancel" | rofi -hover-select -config ~/.config/rofi/power_theme.rasi -dmenu)
#echo "$CHENTRY"

if [ "$CHENTRY" = "Power off" ]; then
	poweroff
elif [ "$CHENTRY" = "Reboot" ]; then
	reboot

elif [ "$CHENTRY" = "Suspend" ]; then
	systemctl suspend

elif [ "$CHENTRY" = "Log out"]; then
	i3-msg exit

elif [ "$CHENTRY" = "Cancel"]; then
	exit
fi
