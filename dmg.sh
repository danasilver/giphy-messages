#!/bin/sh

test -f "Giphy Messages.dmg" && rm "Giphy Messages.dmg"

../yoursway-create-dmg/create-dmg \
--volname "Giphy Messages" \
--volicon "assets/Giphy Messages.icns" \
--background "assets/dmg-background.tiff" \
--window-pos 200 120 \
--window-size 640 480 \
--icon-size 84 \
--text-size 12 \
--icon "Giphy Messages.app" 189 355 \
--hide-extension "Giphy Messages.app" \
--app-drop-link 451 353 \
"Giphy Messages.dmg" \
"Giphy Messages.app"