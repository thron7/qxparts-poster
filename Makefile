document = qx_parts_poster

# this works without an explicit target to 'make'
$(document).pdf: $(document).tex
	pdflatex $(document).tex

# the next needs an explicit 'make' target to work
%.pdf: %.tex
	texi2pdf $<


latex: 
	latex $(document)
	bibtex $(document)
	latex $(document)
	latex $(document)
