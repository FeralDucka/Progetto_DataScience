#!/bin/bash

rm -rf .ipynb_checkpoints

rm compiled.slides.html

jupyter nbconvert slides.ipynb \
    --to slides \
    --SlideExporter.reveal_number='c/t' \
    --SlideExporter.real_scroll=True \
    --output "compiled"\

sed -i '/<head>/a \<link rel="stylesheet" href="slides_style.css">' compiled.slides.html
