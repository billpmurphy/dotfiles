sudo apt-get update && sudo apt-get dist-upgrade

sudo apt-get install tree vim git p7zip-full unrar-free \
rxvt-unicode-256color ttf-dejavu xfonts-terminus

XSTATUS=$(dpkg-query -l x-window-system-core | wc -l)
if [ $XSTATUS -eq 0 ]; then
    sudo apt-get install x-window-system-core
fi

git clone https://github.com/billpmurphy/dotfiles.git ~/dotfiles && \
./dotfiles/boostrap.sh

sudo apt-get install dwm suckless-tools libx11-dev libxinerama-dev && \
sudo apt-get source dwm && \
sudo cp ~/dotfiles/dwm/config.h ~/dwm-6.0/ && \
sudo make clean install -C ~/dwm-6.0/ && \
sudo mv ~/dwm-6.0/ /etc/dwm-6.0/

### Extras ###

#sudo apt-get install mpd mpc ncmpcpp && \
#mkdir -p ~/.mpd/playlists && \
#touch ~/.mpd/{mpd.db,mpd.log,mpd.pid,mpdstate} && \
#cp ~/dotfiles/mpd/mpd.conf ~/.mpd/ && \
#mkdir ~/.ncmpcpp && \
#cp ~/dotfiles/ncmpcpp/config ~/.ncmpcpp && \
#mpd && \
#mpc update

# remove iceweasel, get firefox
#sudo apt-get remove iceweasel && \
#echo -e "\ndeb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main" | tee -a /etc/apt/sources.list > /dev/null && \
#sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C1289A29 && \
#sudo apt-get update && \
#sudo apt-get install firefox-mozilla-build && \

# get infinality
#echo -e "\ndeb http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu raring main" | sudo tee /etc/apt/sources.list.d/infinality.list > /dev/null
#echo -e "\ndeb-src http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu raring main" | sudo tee -a /etc/apt/sources.list.d/infinality.list > /dev/null
#sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com E985B27B
#sudo apt-get update
#sudo apt-get install fontconfig-infinality
#sudo bash /etc/fonts/infinality/infctl.sh setstyle
#echo "Remember to change the USE_STYLE parameter on infinality to Linux. Run:\n"
#echo "sudo -H gedit /etc/profile.d/infinality-settings.sh\n"
