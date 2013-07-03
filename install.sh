#!/bin/bash

THEME_FILE="iOS 7.dvtcolortheme"
XCODE_THEME_PATH="$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes"

if [ -z "$1" ]; then
   echo "Installing to $XCODE_THEME_PATH"
   mkdir -p $XCODE_THEME_PATH
   cp "$THEME_FILE" $XCODE_THEME_PATH
else
   echo "Backing up from $XCODE_THEME_PATH"
   cp "$XCODE_THEME_PATH/$THEME_FILE" ./
fi
