#!/bin/bash

platex title.tex
platex title.tex
dvipdfm title.dvi

pdfcrop title.pdf
mv title-crop.pdf title.pdf
pdftops -eps title.pdf

rm -f title.aux title.dvi title.log
