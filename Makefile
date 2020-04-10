
BASENAME=draft-spaghetti-sidrops-rpki-vrp-yang
EXT=.xml
VERSION=00
SOURCENAME=${BASENAME}${EXT}
DRAFTNAME=${BASENAME}-${VERSION}

all:	text	html

text:
	xml2rfc ${SOURCENAME} --raw -o ${DRAFTNAME}.txt

html:
	xml2rfc ${SOURCENAME} --html -o ${DRAFTNAME}.html

clean:
	rm ${DRAFTNAME}.*
