# Identify what is the name of the *.tex file to compile
# NOTE: There must be a single *.tex file in the current directory
FILE_TEX=$(wildcard *.tex)
TARGET=$(FILE_TEX:.tex=)

################################

################################

# Rule that runs whether the make is called or the *.dvi file is outdated. It compiles the fist prereq. ($<): the *.tex encountered
#open $(TARGET).pdf
FORCE: $(FILE_TEX)
	pdflatex --shell-escape $<

# Rule for cleaning: It removes all the files with TARGET name except the file with *.tex extension
.PHONY: clean
clean: 
	rm -f $(filter-out $(TARGET).tex, $(wildcard $(TARGET).*))

.PHONY: cleanall
cleanall:
	rm -f $(filter-out $(wildcard tikz/*.tex), $(wildcard tikz/*.*))

# Rule with echo for testing
.PHONY: echo
echo:
	echo $(FILE_TEX)

# Rule to create a bibtex file
.PHONY: bib
bib:
	biber $(TARGET).bcf
