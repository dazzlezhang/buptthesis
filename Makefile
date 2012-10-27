JOBNAME=buptthesis

LATEX=pdflatex
MKIDX=makeindex

all:
	$(LATEX) $(JOBNAME).ins
	$(LATEX) $(JOBNAME).dtx
	$(MKIDX) -s gind.ist -o $(JOBNAME).ind $(JOBNAME).idx
	$(MKIDX) -s gglo.ist -o $(JOBNAME).gls $(JOBNAME).glo
	$(LATEX) $(JOBNAME).dtx
	$(LATEX) $(JOBNAME).dtx

.PHONY:
clean:
	$(RM) $(JOBNAME).cls
	$(RM) $(JOBNAME).cfg
	$(RM) $(JOBNAME).pdf
	$(RM) $(JOBNAME).aux
	$(RM) $(JOBNAME).glo
	$(RM) $(JOBNAME).gls
	$(RM) $(JOBNAME).idx
	$(RM) $(JOBNAME).ilg
	$(RM) $(JOBNAME).ind
	$(RM) $(JOBNAME).out
	$(RM) $(JOBNAME).toc
	$(RM) *.log
	$(RM) dtx-style.sty