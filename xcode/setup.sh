#!/bin/sh

# 1. Copy themes
THEMES_DIR=${PWD}/xcode/themes/*
XCODE_USER_THEMES_DIR=~/Library/Developer/Xcode/UserData/FontAndColorThemes

mkdir -p $XCODE_USER_THEMES_DIR
cp -R $THEMES_DIR $XCODE_USER_THEMES_DIR

# 2. Copy templates
TEMPLATES_DIR=${PWD}/xcode/templates/*
XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates

mkdir -p "$XCODE_USER_TEMPLATES_DIR"
cp -R $TEMPLATES_DIR "$XCODE_USER_TEMPLATES_DIR"

echo "Custom Xcode themes and templates have been installed"

exit 0