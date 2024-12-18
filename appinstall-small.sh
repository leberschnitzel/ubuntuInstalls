#!/bin/bash

#Install Prereqs:
sudo apt update

# Update system package list
echo "Updating package list..."
sudo apt update

# Install common packages
echo "Installing common packages..."
sudo apt install -y firefox firefox-locale-de firefox-locale-fr firefox-locale-it firefox-locale-en \
thunderbird thunderbird-locale-fr thunderbird-locale-it thunderbird-locale-de thunderbird-locale-en \
libreoffice flameshot vlc gimp krita scribus inkscape manuskript rawtherapee keepassxc

# Final cleanup
echo "Cleaning up package cache..."
sudo apt autoremove -y
sudo apt clean

echo "Installation complete!"
