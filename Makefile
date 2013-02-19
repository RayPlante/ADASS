# reminders how to make the ADASS book, but without all the dependancies
#   (except somebody should edit this, since it's not how it's done)
#
# todo:   the index, how do you add the index?  makeindex?



p = main_volume
b = editor

all:	$(p).pdf 

$(p).pdf:  $(p).dvi
	dvipdf $(p)

$(p).dvi:  $(p).tex $(b).bib
	latex $(p)
	-bibtex $(p)
	latex $(p)
	makeindex < $(p).adx > $(p).and
	makeindex < $(p).odx > $(p).ond
	latex $(p)
	latex $(p)

index:
	# just a wild guess
	makeindex < $(p).adx > $(p).and
	makeindex < $(p).odx > $(p).ond

# for for ADASS books
test:
	pdflatex $(p)

clean:
	rm -f $(p).dvi $(p).bbl
	rm -f part*/*/*.aux



