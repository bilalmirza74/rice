#! /bin/bash
files=(~/.wallpapers/*)
randomfile=$(printf "%s\n" "${files[RANDOM % ${#files[@]}]}")
echo $randomfile  
swww img $randomfile


bind=$mainMod CONTROL, B, exec, systemctl is-active --user waybar && systemctl stop --user waybar || systemctl start --user waybar


