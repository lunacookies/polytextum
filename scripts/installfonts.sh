#!/usr/bin/env bash

tkfontdir="$HOME/Library/Application Support/Adobe/CoreSync/plugins/livetype/.r"
cd "$tkfontdir"

targetdir="${XDG_DATA_HOME:-$HOME/.local/share}/polytextum/fonts"

if [ -e $targetdir ]; then
  rm -r $targetdir
fi
mkdir -p $targetdir

for file in .*.otf ; do
  name=$(otfinfo -p $file)
  cp "$tkfontdir/$file" "$targetdir/$name.otf"
done
