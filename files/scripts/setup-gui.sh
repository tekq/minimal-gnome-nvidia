#!/usr/bin/env bash

set -oue pipefail

systemctl set-default graphical.target
systemctl enable gdm.service

rpm-ostree kargs \
--append="quiet" \
--append="splash" \
--append="rd.driver.pre=nvidia" \
--append="nvidia-drm.modeset=1"
