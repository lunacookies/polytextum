#!/usr/bin/env bash

# Create necessary dir(s)
mkdir -pv $(kpsewhich -var-value=TEXMFHOME)/tex/latex/polytextum

# Link prose class
for file in latex/prose/*; do
  ln -s $PWD/$file $(kpsewhich -var-value=TEXMFHOME)/tex/latex/polytextum/$(basename $file)
done

# Link pres class
for file in latex/pres/*; do
  ln -s $PWD/$file $(kpsewhich -var-value=TEXMFHOME)/tex/latex/polytextum/$(basename $file)
done

