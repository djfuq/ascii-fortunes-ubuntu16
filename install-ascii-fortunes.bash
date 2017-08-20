#!/bin/bash
 
#....
# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
# ...
apt-get install -y fortune fortune-mod fortunes fortunes-bofh-excuses fortunes-ubuntu-server fortunes-spam fortunes-off fortunes-min fortunes-mario fortunes-it-off fortunes-es-off fortunes-eo-ascii fortunes-de fortunes-debian-hints
rm -rfv /usr/share/games/fortunesnew.tgz /usr/share/games/fortunes.tgz 
tar czvf /usr/share/games/fortunes.tgz /usr/share/games/fortunes
ls -lah /usr/share/games/fortunes.tgz
file /usr/share/games/fortunes.tgz
gem install lolcat cowsay
cp -av /usr/games/fortune /usr/bin/fortune
apt-get install -y fortune fortune-mod fortunes-mod
cp -av /usr/share/games/fortunes  /usr/share/games/fortunes.bak
mv -fv /usr/share/games/fortunes/off /usr/share/games/fortunesoff
rm -rfv /usr/share/games/fortunes/* 
curl http://www.asciiartfarts.com/fortune.txt > asciifarts
strfile asciifarts asciifarts.dat
cp -av  asciifarts asciifarts.dat /usr/share/games/fortunes/
cp -av /usr/share/games/fortunes.bak /usr/share/games/fortunes/off
tar czvf /usr/share/games/fortunesnew.tgz /usr/share/games/fortunes

 fortune | cowsay ; fortune | lolcat ;   fortune | cowsay ; fortune | lolcat ; fortune | cowsay ; fortune | lolcat ;  fortune | cowsay ; fortune | lolcat ; fortune | cowsay ; fortune | lolcat ; fortune | cowsay ; fortune | lolcat ; fortune | cowsay ; fortune | lolcat ;

echo "installing xscreensaver config"

cp -av  .xscreensaver /home/*/
cp -av  .xscreensaver /root/
cp -av  /usr/lib/xscreensaver/phosphor  /usr/bin/phosphor 
/usr/lib/xscreensaver/phosphor -delay 0 -scale 2 -ticks 1 

