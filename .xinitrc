xrdb -merge ~/.Xresources
DWMSTATUS=$(dpkg-query -l dwm | wc -l)
if [ $DWMSTATUS -gt 0 ]; then
    exec dwm
fi
