#!/usr/bin/env bash

set -oue pipefail

systemctl set-default graphical.target
systemctl enable gdm.service

echo "NoDisplay=true" >> /usr/share/applications/org.gnome.MalcontentControl.desktop
chmod 000 /usr/bin/malcontent-control || true
