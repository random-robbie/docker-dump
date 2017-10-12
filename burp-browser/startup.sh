#!/bin/bash
export DISPLAY=:1
Xvfb :1 -screen 0 1600x900x16 &
sleep 5
openbox-session&
x11vnc -display :1 -now -listen localhost -xkb -ncache 10 -ncache_cr -forever &
ln -s /root/noVNC/vnc_auto.html /root/noVNC/index.html 
./utils/launch.sh --vnc localhost:5900
