#!/bin/bash

sudo xbps-install lightdm lightdm-gtk-greeter-settings

sudo ln -sf /etc/sv/dbus /var/service/
sudo ln -sf /etc/sv/lightdm /var/service/
sudo rm /var/service/lxdm
