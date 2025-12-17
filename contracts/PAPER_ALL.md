# PAPER_ALL.md

NOTE: This document is an internal scope and design contract.
It is NOT part of any paper submission.

## Dependency Direction

(Direction: arrows point from dependency to dependent)

P1 (CAE) <- P2 (CEP) <- P3 (CEE)

ALL 3 <- civic-interconnect implementation

## What Each Paper Owns

| Concept                                         | Owner | May Reference | Must Not Define      |
| ----------------------------------------------- | ----- | ------------- | -------------------- |
| Entity kinds (A,S,I,E,J,O)                      | P1    | —             | —                    |
| Disjointness, identity                          | P1    | —             | —                    |
| Exchange pattern                                | P2    | P1 kinds      | P1 kind definitions  |
| Morphisms, composition                          | P2    | P1 kinds      | P1 or P3 definitions |
| Functors (exchange semantics), canonicalization | P2    | —             | —                    |
| Vertical domains                                | P3    | P2 morphisms  | P2 composition rules |
| 2-morphisms, explanations                       | P3    | P2            | —                    |
| Adapters, queries                               | impl  | P1, P2, P3    | any paper content    |

## Glossary (Authoritative Definitions)

| Term        | Defined In | Definition                                                                                      |
| ----------- | ---------- | ----------------------------------------------------------------------------------------------- |
| Actor       | P1 S4.1    | Entity capable of bearing rights, obligations, or responsibilities                              |
| Instrument  | P1 S4.3    | Enduring construct that creates, modifies, or constrains obligations                            |
| Exchange    | P2 SX      | Constrained subgraph pattern (not an entity) with I, E, A minimum                               |
| Explanation | P3 SX      | 2-morphism relating interpretations (structured interpretive relation over claims and evidence) |

## Anti-Drift Rules

1. If you define a term, grep other papers, remove redundant definitions.
2. If you reference another paper's concept, use ONE sentence max.
3. If you're writing more than one sentence about another paper's content, STOP, you're in the wrong paper.
4. Each paper must be rejectable independently (no "but see P2 for why this matters").
5. If moving text between papers, move it verbatim first, then refactor in the destination paper.

## Implementation Non-Authority Clause

The civic-interconnect implementation is a consumer and realization
of the formal specifications defined in P1 (CAE), P2 (CEP), and P3 (CEE),
but it is not an authoritative source of semantic definition.
No implementation artifact, including code, schemas, adapters, validation rules, queries, examples, or documentation,
may introduce, redefine, refine, or reinterpret
ontological categories, exchange semantics, admissibility conditions,
canonicalization rules, or explanation structures owned by the papers.
Where implementation choices appear to imply semantics,
those implications are considered provisional
and subordinate to the corresponding paper.
Any semantic change required by implementation experience must be proposed
as a revision to the appropriate paper,
not introduced implicitly through code or tooling.
