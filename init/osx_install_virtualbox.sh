cd /tmp
wget http://download.virtualbox.org/virtualbox/4.2.12/VirtualBox-4.2.12-84980-OSX.dmg
hdiutil attach VirtualBox-4.2.10-84104-OSX.dmg
sudo installer -pkg /Volumes/VirtualBox/VirtualBox.pkg -target /
hdiutil detach /Volumes/VirtualBox