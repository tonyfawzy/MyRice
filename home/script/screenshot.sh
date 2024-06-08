#!/bin/bash

file=~/screenshot/$(date +%Y-%m-%d-%H%s).png
filename=$(echo "$file" | awk -F'/' '{print $NF}')

maim -s -u | tee $file | xclip -selection clipboard -t image/png

if file "$file" | grep -q "empty"; then
	notify-send -u critical -i /mnt/pd/00Archive/2024/05/warningIcon.png -a "maim" "Error the caputre is empty"
	rm -rf "$file"
else
	action=$(notify-send --action="option_1" -a "maim" -i "$file" "You took a capture" "called $filename.")

	case "$action" in
		"0")
		 sxiv $file ;;
	esac
fi
