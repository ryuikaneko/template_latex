#!/bin/bash

#platex poster.tex ; platex poster.tex ; dvipdfmx poster.dvi
#latex poster.tex ; latex poster.tex ; dvipdfm poster.dvi
pdflatex poster.tex ; pdflatex poster.tex
rm -f *.aux *.dvi *.log *.nav *.out *.snm *.toc

gs -q -sDEVICE=eps2write -sOutputFile=outline.eps -dNOPAUSE -dBATCH -r20016 poster.pdf
#ps2pdf -dPDFSETTINGS=/prepress -dEmbedAllFonts=true -dEPSCrop outline.eps
ps2pdf -dPDFSETTINGS=/prepress -dEmbedAllFonts=true -sPAPERSIZE=a0 outline.eps
rm outline.eps
