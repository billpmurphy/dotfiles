# make sure .Xresources gets loaded
xrdb -merge ~/.Xresources

# if we have dwm, start it
DWMSTATUS=$(dpkg-query -l dwm | wc -l)
if [ $DWMSTATUS -gt 0 ]; then
    exec dwm
fi
