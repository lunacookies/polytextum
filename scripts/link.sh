#!/usr/bin/env bash

cd "${XDG_DATA_HOME:-$HOME/.local/share}/polytextum"

texmfhome=$(kpsewhich -var-value=TEXMFHOME)

if [ -e "$texmfhome/tex/latex/polytextum" ]; then
  rm -r "$texmfhome/tex/latex/polytextum"
fi
mkdir -pv "$texmfhome/tex/latex/polytextum"

for file in latex/*; do
  ln -s "$PWD/$file" "$texmfhome/tex/latex/polytextum/"$(basename $file)
done
