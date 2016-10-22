ifeq ($(TEXI2PDF),)
  TEXI2PDF:=texi2dvi -p
endif

DOT_DIAGRAMS = 

## PDF_DIAGRAMS = $(...) transform name *.dot to *.pdf

.PHONY: all

all: clim-how-to.pdf

# %.eps: %.dot
#	dot -Tps -Gsize="5,5" -Gratio=compress -Gconcentrate=true $< > $@

# %.png: %.dot
#	dot -Tpng -Gsize="5,5" -Gratio=compress -Gconcentrate=true $< > $@

# %.pdf: %.dot
#	dot -Tpdf -Gsize="5,5" -Gratio=compress -Gconcentrate=true $< > $@

# %.txt: %.dot
#	# FIXME.
# 	dot -Tcanon $< > $@

# %.pdf: %.eps
# 	epstopdf $< > $@

clim-how-to.pdf: *.texi
	$(TEXI2PDF) -o $@ top-level.texi

clean: 
	rm -f *~ *.cp *.fn *.ky *.log *.pg *.toc \
		*.tp *.vr *.aux *.eps *.png *.dvi *.ps *.txt *.fns \
		clim-how-to.pdf
