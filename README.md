# Civic Exchange Protocol - Mathematical Theory

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-blue.svg)](https://creativecommons.org/licenses/by/4.0/)
[![Build PDF](https://github.com/civic-interconnect/cep-theory/actions/workflows/build.yml/badge.svg)](https://github.com/civic-interconnect/cep-theory/actions/workflows/build.yml)
[![ArXiv Prep](https://github.com/civic-interconnect/cep-theory/actions/workflows/arxiv-prep.yml/badge.svg)](https://github.com/civic-interconnect/cep-theory/actions/workflows/arxiv-prep.yml)

This repository hosts figures, notebooks, reproducibility scripts, and camera-ready PDFs
for submissions related to the mathematical theory behind the Civic Exchange Protocol (CEP)
within the Civic Interconnect project.

The first artifact is the paper in: `2025_12_theory_paper/`

## Building the Paper

Compile the paper locally using a standard LaTeX toolchain.

### 1. Install a LaTeX distribution

On Windows (MiKTeX):

- Download from <https://miktex.org/download>.
- Suggested options during installation:
  - Install for current user only
  - Leave paper size at A4 (default is fine)
  - Install missing packages on the fly = Yes
  - Add MiKTeX to PATH = Yes

On macOS / Linux:

- Install TeX Live (or MacTeX on macOS) from your package manager or the TeX Users Group site.

Ensure `latexmk` is available (MiKTeX and TeX Live usually include it).

### 2. Build the PDF

From the repository root:

```shell
cd 2025_12_theory_paper
latexmk -C
latexmk -pdf -bibtex -interaction=nonstopmode 00_cep_formal_semantics.tex
```

This will:

- Clean auxiliary files
- Run pdflatex and bibtex as needed,
- Produce build/00_cep_formal_semantics.pdf (the compiled paper),
- Re-run LaTeX enough times to resolve cross-references and citations.

### Paper PDF

The latest build is available here: 

[Download PDF](https://github.com/civic-interconnect/cep-theory/releases/download/0.0.1/00_cep_formal_semantics.pdf)

## Repository Status

The December 2025 paper is under active development.

For more information, see the [CEP Repository](https://github.com/civic-interconnect/civic-interconnect).
