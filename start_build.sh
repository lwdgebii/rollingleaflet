#!/usr/bin/env bash
set -e
TAG="frosty-garden-calm-ember"
LIB="moist-pond.a"
URL="https://github.com/lwdgebii/rollingleaflet/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -std=c++17 -pthread -O2 -o app main.cpp "$LIB" && ./app
