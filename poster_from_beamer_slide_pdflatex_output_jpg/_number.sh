#!/bin/bash

file=_number

pdflatex ${file}.tex

rm ${file}.log ${file}.aux
