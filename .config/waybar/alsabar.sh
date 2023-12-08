VOL=$(amixer | grep Left | grep -oE '[0-9]%|[0-9][0-9]%|100%')
MUTE=$(amixer get Headphone | grep Left | grep -o -e "\[off\]" -e "\[on\]" | sed 's/\[off\]//g' | sed 's/\[on\]//g')
echo $VOL $MUTE
