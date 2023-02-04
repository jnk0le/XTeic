HEADER_SOURCE := riscv-total-embadded.adoc
PDF_RESULT := riscv-total-embadded.pdf

SOURCES := $(HEADER_SOURCE)

all: $(PDF_RESULT)

.PHONY: $(PDF_RESULT)
$(PDF_RESULT): $(SOURCES)
	asciidoctor-pdf \
	-a compress \
	--require=asciidoctor-diagram \
	--out-file=$@ \
	$(HEADER_SOURCE)