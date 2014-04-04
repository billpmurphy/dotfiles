# make sure .Xresources gets loaded
xrdb -merge ~/.Xresources

# turn off that pesky automatic X screensaver
xset -dpms

# if we have dwm, start it
DWMSTATUS=$(dpkg-query -l dwm | wc -l)
if [ $DWMSTATUS -gt 0 ]; then
    exec dwm
    xsetroot -name "$(hostname)"
fi
