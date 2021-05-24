#!/bin/bash

name=slide

latexmk -lualatex ${name}.tex

#platex ${name}.tex ; platex ${name}.tex ; dvipdfmx ${name}.dvi
#latex ${name}.tex ; latex ${name}.tex ; dvipdfm ${name}.dvi
#pdflatex ${name}.tex ; pdflatex ${name}.tex

#rm -f *.aux *.dvi *.log *.nav *.out *.snm *.toc
rm -f *.aux *.dvi *.log *.nav *.out *.snm *.toc *.fdb_latexmk *.fls
