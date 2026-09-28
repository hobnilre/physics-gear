ARTICLE  := frames-returns-and-port-power.md
PREAMBLE := preamble.tex
FIG_SRC  := $(filter-out figures/figure-style.tex,$(wildcard figures/*.tex))
FIGURES  := $(FIG_SRC:.tex=.pdf)
PDF      := frames-returns-and-port-power.pdf

.PHONY: pdf figures clean

pdf: $(PDF)

figures: $(FIGURES)

$(PDF): $(ARTICLE) $(PREAMBLE) $(FIGURES) Makefile
	mkdir -p build
	printf '\\newcommand{\\pdfbuildtimestamp}{%s}\n' "$$(date -u '+%Y-%m-%d %H:%M:%S UTC')" > build/pdf-build-time.tex
	TMPDIR="$(CURDIR)/build" pandoc $(ARTICLE) --from markdown+tex_math_dollars \
		--pdf-engine=xelatex --include-in-header=$(PREAMBLE) --include-in-header=build/pdf-build-time.tex -o $@

figures/%.pdf: figures/%.tex figures/figure-style.tex
	mkdir -p build
	cd figures && xelatex -interaction=nonstopmode -halt-on-error \
		-output-directory=../build $*.tex > /dev/null
	cp build/$*.pdf $@

clean:
	rm -rf build
