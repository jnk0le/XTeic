HEADER_SOURCE := riscv-total-embedded.adoc
PDF_RESULT := riscv-total-embedded.pdf

SOURCES := $(HEADER_SOURCE)

all: $(PDF_RESULT)

.PHONY: $(PDF_RESULT)
$(PDF_RESULT): $(SOURCES)
	asciidoctor-pdf \
	-a compress \
	--failure-level=WARN \
	--require=asciidoctor-diagram \
	--out-file=$@ \
	$(HEADER_SOURCE)