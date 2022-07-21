#!/bin/bash

name=_slide

#platex ${name}.tex ; platex ${name}.tex ; dvipdfmx ${name}.dvi
latex ${name}.tex ; latex ${name}.tex ; dvipdfm ${name}.dvi
#pdflatex ${name}.tex ; pdflatex ${name}.tex

rm -f *.aux *.dvi *.log *.nav *.out *.snm *.toc
