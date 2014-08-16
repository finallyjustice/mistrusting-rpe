# ./cl
all:
	latex rpe.tex
	bibtex rpe
	latex rpe.tex
	latex rpe.tex
	dvips -t letter -f -Pcmz rpe.dvi -o rpe.ps 
	ps2pdf rpe.ps & 

open:
	gnome-open rpe.pdf

clean:
	rm -rf *~ *.dvi *.blg *.log .*~ *.aux *.ps *.pdf *.bbl

remove:
	rm -rf *~ *.dvi *.blg *.log .*~ *.aux *.ps  *.bbl
