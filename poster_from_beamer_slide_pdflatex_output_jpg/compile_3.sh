#!/bin/bash

## https://stackoverflow.com/questions/43085889/how-to-convert-a-pdf-into-jpg-with-command-line-in-linux

#pdftoppm -jpeg -r 300 outline.pdf output
pdftoppm -jpeg -jpegopt quality=100 -r 300 outline.pdf output
mv output-1.jpg final_poster.jpg
