all: build/cheat-sheet.pdf

build/cheat-sheet.pdf: cheat-sheet.tex
	mkdir -p build
	pdflatex -file-line-error -halt-on-error -output-directory ./build cheat-sheet.tex

clean:
	cd build
	rm -rf -- cheat-sheet.aux cheat-sheet.log cheat-sheet.out

distclean:
	rm -rf -- build

PHONY: all clean distclean
