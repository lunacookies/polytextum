#!/usr/bin/env bash

texmfhome=$(kpsewhich -var-value=TEXMFHOME)

if [ -e "$texmfhome/tex/latex/polytextum" ]; then
  rm -r "$texmfhome/tex/latex/polytextum"
fi
