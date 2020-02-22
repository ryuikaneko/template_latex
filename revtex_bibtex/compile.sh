#!/bin/bash

filename=paper

pdflatex ${filename}.tex
bibtex ${filename}
pdflatex ${filename}.tex
pdflatex ${filename}.tex
pdflatex ${filename}.tex

rm -f ${filename}.log ${filename}.aux ${filename}.dvi ${filename}.ps \
${filename}.bbl ${filename}.blg ${filename}.out ${filename}Notes.bib \
${filename}.toc
