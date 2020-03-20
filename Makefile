LATEX=pdflatex

SRCS!=ls *.tex
OBJS=$(SRCS:.tex=.pdf)
OBJDIR=.

.PHONY: all clean

all: $(OBJS)
	echo $(SRCS) $(OBJS)

%.pdf: %.tex
	$(LATEX) -interaction nonstopmode $<

clean:
	rm -rf *.log *.aux *.out *.pdf
