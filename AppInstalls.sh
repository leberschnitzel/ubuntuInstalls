#!/bin/bash

#Install Prereqs:
sudo apt update
sudo apt install -y wget apt-transport-https ca-certificates

# Update system package list
echo "Updating package list..."
sudo wget -O /etc/apt/trusted.gpg.d/openproject.asc https://dl.packager.io/srv/opf/openproject/key
sudo wget -O /etc/apt/sources.list.d/openproject.list \
  https://dl.packager.io/srv/opf/openproject/stable/15/installer/ubuntu/22.04.repo
sudo wget -O /usr/share/keyrings/element-io-archive-keyring.gpg https://packages.element.io/debian/element-io-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/element-io-archive-keyring.gpg] https://packages.element.io/debian/ default main" | sudo tee /etc/apt/sources.list.d/element-io.list  
sudo apt update

# Install common packages
echo "Installing common packages..."
sudo apt install -y firefox firefox-locale-de firefox-locale-fr firefox-locale-it firefox-locale-en \
thunderbird thunderbird-locale-fr thunderbird-locale-it thunderbird-locale-de thunderbird-locale-en \
libreoffice flameshot vlc gimp krita scribus inkscape manuskript rawtherapee keepassxc gnome-menus \
element-desktop openproject npm nextcloud-desktop

# Install Joplin (Desktop App)
echo "Installing Joplin..."
sudo npm install -g joplin
# Optionally, you can also use the appimage or deb installer from the Joplin website, if npm version isn't preferred

# Final cleanup
echo "Cleaning up package cache..."
sudo apt autoremove -y
sudo apt clean

echo "Installation complete!"
