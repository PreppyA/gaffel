#!/bin/sh
# Bygger appen: app.src.html + billeddata (imgdata.js) -> index.html i roden af projektet.
# index.html er den fil, GitHub Pages viser på https://preppya.github.io/seated/
cd "$(dirname "$0")"
awk '/\/\*__IMG__\*\//{system("cat imgdata.js");next}{print}' app.src.html > ../index.html
echo "Bygget: ../index.html"
