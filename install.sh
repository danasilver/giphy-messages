#!/bin/sh

LISTENER="Giphy.applescript"
TARGET="$HOME/Library/Application Scripts/com.apple.iChat/"

cp "../Resources/$LISTENER" "$TARGET"
chmod 644 "$TARGET$LISTENER"