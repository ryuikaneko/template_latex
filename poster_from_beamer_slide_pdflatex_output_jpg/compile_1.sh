#!/bin/bash

#platex title.tex
#platex title.tex
#latex title.tex
#latex title.tex
#dvipdfm title.dvi
pdflatex title.tex
pdflatex title.tex
pdflatex title.tex

pdfcrop title.pdf
mv title-crop.pdf title.pdf
#pdftops -eps title.pdf

rm -f title.aux title.dvi title.log
