#!/bin/bash

#gs -q -sDEVICE=eps2write -sOutputFile=outline.eps -dNOPAUSE -dBATCH -r20016 poster.pdf
##ps2pdf -dPDFSETTINGS=/prepress -dEmbedAllFonts=true -dEPSCrop outline.eps
#ps2pdf -dPDFSETTINGS=/prepress -dEmbedAllFonts=true -sPAPERSIZE=a0 outline.eps
#rm outline.eps

## https://tex.stackexchange.com/questions/27327/how-to-convert-text-in-a-pdf-file-from-fonts-text-to-outlines

gs -dNoOutputFonts -sDEVICE=pdfwrite -o poster_vectorized.pdf poster.pdf
