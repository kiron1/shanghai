
HTML:=$(patsubst %.md,%.html,$(wildcard *.md))

all: $(HTML)

clean:
	-rm -f -- $(HTML)

%.html: %.md
	pandoc --from markdown_github+yaml_metadata_block --to html5 --standalone --lua-filter=html-link.lua -o $@ $<

.PHONY: all clean
