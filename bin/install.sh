#!/bin/bash

# run as sudo

cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.bak
cp ./config/rules/evdev.xml /usr/share/X11/xkb/rules/
cp ./config/symbols/ru-dev /usr/share/X11/xkb/symbols/
cp ./config/symbols/us-dev /usr/share/X11/xkb/symbols/
udevadm trigger --subsystem-match=input --action=change