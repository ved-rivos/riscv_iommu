HEADER_SOURCE := header.adoc
PDF_RESULT := riscv-iommu.pdf

all: build

build:

	@echo "Building asciidoc"
	asciidoctor-pdf \
    --attribute=mathematical-format=svg \
    --attribute=pdf-fontsdir=docs-resources/fonts \
    --attribute=pdf-style=docs-resources/themes/riscv-pdf.yml \
    --failure-level=ERROR \
    --require=asciidoctor-bibtex \
    --require=asciidoctor-diagram \
    --out-file=$(PDF_RESULT) \
    $(HEADER_SOURCE)

clean:
	rm -rf $(PDF_RESULT)
	rm -rf images/diag-*.png
	rm -rf .asciidoctor/
	rm -rf images/diagram-classes.svg
	rm -rf images/example-3.svg
	rm -rf images/graphviz/
	rm -rf images/image-example.svg
	rm -rf images/wavedrom/

