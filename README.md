# Civic Exchange Protocol - Mathematical Theory

<!--
WHY: Provides mathematical foundations for civic accountability tracking
OBS: Contains 3 formal papers (CAE ontology, CEP semantics, CEE verticals)
REQ: Requires a LaTeX distribution to build PDFs
-->

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-blue.svg)](https://creativecommons.org/licenses/by/4.0/)
[![Build PDF](https://github.com/civic-interconnect/cep-theory/actions/workflows/build.yml/badge.svg)](https://github.com/civic-interconnect/cep-theory/actions/workflows/build.yml)
[![ArXiv Prep](https://github.com/civic-interconnect/cep-theory/actions/workflows/arxiv-prep.yml/badge.svg)](https://github.com/civic-interconnect/cep-theory/actions/workflows/arxiv-prep.yml)

This repository hosts figures, notebooks, reproducibility scripts,
and PDFs for submissions related to the mathematical theory
behind the Civic Interconnect project.

## Installation

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

## Build

Build all three papers:

```pwsh
.\build.ps1
```

Or build just one paper:

```pwsh
cd paper02

latexmk -pdf -bibtex -interaction=nonstopmode -auxdir=build -outdir=build 00P2_cep_semantics.tex

cd ..
```

**VS Code users:** Press `Ctrl+Shift+B` (or `Cmd+Shift+B` on Mac) for quick build.

See draft papers at:

- [00P1_cae_ontology.pdf](./00P1_cae_ontology.pdf).
- [00P2_cep_semantics.pdf](./00P2_cep_semantics.pdf).
- [00P3_cee_verticals.pdf](./00P3_cee_verticals.pdf).

## Papers

1. CAE - civic accountable entities (what exists)
2. CEP - entity, relationship, exchange, envelope (how things move)
3. CEE - vertical stacks and spines; how claims are supported and explained (evidence)

| Layer    | Name | Role                                     |
| -------- | ---- | ---------------------------------------- |
| Ontology | CAE  | Accountable entities and kinds           |
| Exchange | CEP  | Entity, relationship, exchange, envelope |
| Evidence | CEE  | Observations, provenance, explanations   |

### Civic Accountable Entities (CAE)

Each accountable entity is assigned exactly one kind.

- Actors (A) - capable of bearing rights and obligations.
- Sites/Assets (S) - physical or operational entities acted upon
- Instruments (I) - enduring constructs that create or constrain obligations.
- Events/Records (E) - time-indexed assertions that something occurred.
- Jurisdictions (J) - scope authority and applicability.
- Observations (O) - measurements and indicators describing state, outcomes, or performance over time.

### Civic Exchange Protocol

An exchange is not an entity; it is a constrained subgraph **pattern**.
A record or dataset is admissible to CEP if and only if it contains,
or can be mapped to, a subgraph that includes:

- At least one Instrument (I) that creates, modifies, or constrains obligations
- At least one Event (E) that occurs under that Instrument
- At least one Actor (A) that is party to the Instrument or involved in the Event

Every exchange event that conveys value must carry a Value Expression,
either monetary or in-kind, with explicit units and provenance.

### Contextual Evidence & Explanations (CEE)

CEE adds transparency to civic decisions by requiring
structured explanations for why entities are highlighted, selected, or prioritized.
Rather than treating decisions as black boxes, CEE attaches
observations (what was measured), evidence (what data supports the claim), and
attributions (which model or actor made the decision) to specific entities and relationships.
This enables comparing how different models reach different conclusions from the same data,
tracking decision provenance over time, and surfacing the reasoning behind civic processes,
from loan approvals, to procurement awards, to resource allocation.
CEE does not make value judgments;
it surfaces information so stakeholders can make informed decisions.

## Non-goals

This repository does not attempt to prescribe policy outcomes,
evaluate the desirability of specific decisions,
assert causal claims between civic actions and outcomes,
or provide a complete implementation of civic data systems.
It does not define sector-specific metrics,
mandate particular analytical models, or
privilege any single explanatory framework.
The mathematical structures developed here are intended to make
accountability, exchange, and evidence representable and comparable,
not to determine what conclusions should be drawn from them.
Normative judgment, policy choice, and domain-specific evaluation are
deliberately left to downstream actors, institutions, and analytic layers
built on the CAE/CEP/CEE framework.

## Annotations

This repository uses [Civic Interconnect ANNOTATIONS.md](https://github.com/civic-interconnect/civic-interconnect/blob/main/ANNOTATIONS.md)
to document decisions inline, demonstrating CEE principles in practice.

## Civic Interconnect

Civic Interconnect implements the CAE/CEP/CEE framework for civic accountability tracking.

For implementation, adapters, and examples, see the [Civic Interconnect Repository](https://github.com/civic-interconnect/civic-interconnect).

## Repository Status

This work is under active development.

## License

Licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).

## Citation

See [CITATION.cff](./CITATION.cff) for citation details.
