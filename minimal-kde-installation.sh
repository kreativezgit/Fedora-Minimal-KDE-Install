#!/bin/bash
################################################################################
# This script install the minimal PLASMA Desktop with NO extra package.        #
# Please refer to this repo:                                                   #
#     https://github.com/kreativezgit/Fedora-Minimal-KDE-Install               #
#                                                                              #
# Author: kreativezgit                                                         #
# Licence: Do what you want with this script!                                  #
#          I may be interessted on your enhancements/suggestions.              #
# Date: 24/05/2022                                                             #
################################################################################

# Check if the current user is root
if [[ $EUID -ne 0 ]]
then
	echo "This script must be run as root."
	exit 1
fi

# Update your OS
dnf upgrade -y

# Install Plasma Desktop
dnf install -y \
  @"base-x" \
  @"Common NetworkManager Submodules" \
  @"Fonts" \
  @"Hardware Support" \
  ark \
  bluedevil \
  breeze-gtk \
  breeze-icon-theme \
  cagibi \
  colord-kde \
  cups-pk-helper \
  dolphin \
  glibc-all-langpacks \
  gnome-keyring-pam \
  kcm_systemd \
  kde-gtk-config \
  kde-partitionmanager \
  kde-print-manager \
  kde-settings-pulseaudio \
  kde-style-breeze \
  kdegraphics-thumbnailers \
  kdeplasma-addons \
  kdialog \
  kdnssd \
  kf5-akonadi-server \
  kf5-akonadi-server-mysql \
  kf5-baloo-file \
  kf5-kipi-plugins \
  khotkeys \
  kmenuedit \
  konsole5 \
  kscreen \
  kscreenlocker \
  ksshaskpass \
  ksysguard \
  kwalletmanager5 \
  kwebkitpart \
  kwin \
  libglvnd-gles \
  NetworkManager-config-connectivity-fedora \
  pam-kwallet \
  phonon-qt5-backend-gstreamer \
  pinentry-qt \
  plasma-breeze \
  plasma-desktop \
  plasma-desktop-doc \
  plasma-drkonqi \
  plasma-nm \
  plasma-nm-l2tp \
  plasma-nm-openconnect \
  plasma-nm-openswan \
  plasma-nm-openvpn \
  plasma-nm-pptp \
  plasma-nm-vpnc \
  plasma-pa \
  plasma-workspace \
  plasma-workspace-geolocation \
  polkit-kde \
  qt5-qtbase-gui \
  qt5-qtdeclarative \
  sddm \
  sddm-breeze \
  sddm-kcm \
  setroubleshoot \
  sni-qt \
  xorg-x11-drv-libinput

# Enable SDDM
systemctl enable sddm
systemctl set-default graphical.target

# Reboot
reboot
