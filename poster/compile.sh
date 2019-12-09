#!/bin/bash

#platex poster.tex
#bibtex poster
#platex poster.tex
#platex poster.tex

#platex poster.tex
#platex poster.tex

latex poster.tex
latex poster.tex

dvips poster.dvi -o poster.ps
dvips -Ppdf poster.dvi -o poster.ps

#gs -q -sDEVICE=pswrite -dNOPAUSE -dSAFER -dBATCH \
#-dNOCACHE \
#-sOUTPUTFILE=tmp.ps poster.ps
#mv tmp.ps poster.ps

#ps2pdf poster.ps poster.pdf
#ps2pdf poster.ps poster_.pdf
#./replacecjkfonts.pl poster_.pdf poster.pdf

## https://www.karlrupp.net/2016/01/embed-all-fonts-in-pdfs-latex-pdflatex/
## embed helvetica and symbol fonts
ps2pdf -dPDFSETTINGS=/prepress -dEmbedAllFonts=true poster.ps poster.pdf

rm -f poster.aux poster.log poster.b* poster.dvi poster.ps poster.out
rm -f poster_.pdf
