#!/bin/bash
source /home/gazbit/Ubi3/bin/.scripts/utils.sh
source /home/gazbit/bin/.scripts/utils.sh
cd ~/Ubi3
sudo apt-get -qq update && sudo apt-get -qq dist-upgrade
sudo apt-get -y install xdg-user-dirs
xdg-user-dirs-update
sudo add-apt-repository ppa:rvm/smplayer
sudo add-apt-repository ppa:mc3man/mpv-tests
sudo add-apt-repository ppa:noobslab/apps
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get -y --allow-unauthenticated update
sudo apt-get -y --allow-unauthenticated install xcb-util-xrm \
xcb-util \
libxcb1-dev \
libxcb-keysyms1-dev \
libpango1.0-dev \
libxcb-util0-dev \
libxcb-icccm4-dev \
libyajl-dev \
libstartup-notification0-dev \
libxcb-randr0-dev \
libev-dev \
libxcb-cursor-dev \
libxcb-xinerama0-dev \
libxcb-xkb-dev \
libxkbcommon-dev \
libxkbcommon-x11-dev \
autoconf \
libxcb-xrm0 \
libxcb-xrm-dev \

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
sudo apt-get -y --allow-unauthenticated install tree lxappearance \
feh \
texlive-full \
nautilus \
compton \
rofi \
mpd \
ncmpcpp \
texstudio \
arandr \
leafpad \
fontforge \
rxvt-unicode \
libreoffice \
darktable \
smplayer \
smtube \
smplayer-themes \
smplayer-skins \
mpv \
openshot \
emacs \
python-pip \
sudo pip install rainbowstream glances ImageScraper howdoi
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
sudo add-apt-repository 'deb https://typora.io ./linux/'
sudo apt-get -y --allow-unauthenticated update
sudo apt-get -y --allow-unauthenticated install typora
cd ~/
git clone https://github.com/nojhan/liquidprompt.git
source liquidprompt/liquidprompt
cd ~/Ubi3
mv -f  .bashrc ~/.bashrc
mv -f  .bash_aliases ~/.bash_aliases
mv -f  .bash_functions ~/.bash_functions
mv -f  .Xresources ~/.Xresources
mv -f  .editorconfig ~/.editorconfig
mv -f  .gitconfig ~/.gitconfig
mv -f  .lesskey ~/.lesskey
mv -f  .profile ~/.profile
mv -f  .screenrc ~/.screenrc
mv -f  .xinitrc ~/.xinitrc
mv -f  wallpaper.jpg ~/wallpaper.jpg
mv -f  .config ~/.config
mv -f  bin ~/bin
mv -f  .gitignore ~/.gitignore
cd ~/bin
sudo chmod +x setup-nautilus.sh
./setup-nautilus.sh
