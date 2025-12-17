# P2: Civic Exchange Protocol (CEP) Paper Contract (PAPER_02.md)

NOTE: This document is an internal scope and design contract.
It is NOT part of any paper submission.

> Status: Draft (staging)
> Target venue: TBD (theory / KR / semantics)
> Companion papers: P1 (CAE), P3 (CEE)
> Implementation: civic-interconnect repository

## PURPOSE

Define the semantics of civic exchanges over Civic Accountable Entities (CAE).
This paper answers:
**How do obligations, authority, and value move between entities?**

CEP introduces formal semantics for exchange patterns grounded in CAE kinds.

## DEPENDENCIES

CEP DEPENDS ON:

- P1 (CAE) entity kinds and disjointness

CEP MUST NOT:

- Redefine entity kinds
- Modify CAE identity criteria

## SCOPE.REQUIRED

CEP MUST:

- [ ] Define exchange as a constrained subgraph pattern over CAE entities
- [ ] Define admissibility conditions for exchange patterns
- [ ] Specify how obligations, transfers, authorizations, and delegations are represented
- [ ] Introduce categorical semantics for exchange structure
- [ ] Define composition of exchanges
- [ ] Define canonicalization and normalization rules
- [ ] Remain domain-agnostic

## SCOPE.FORBIDDEN

CEP MUST NOT:

- ❌ Redefine CAE entity kinds or identity criteria
- ❌ Introduce evidence/explanation semantics (CEE territory)
- ❌ Make causal claims about outcomes
- ❌ Depend on CEE to make CEP claims coherent
- ❌ Introduce domain-specific metrics or sectoral taxonomies as requirements

## TERMINOLOGY (PRELIMINARY)

| Term                | Definition                                         |
| ------------------- | -------------------------------------------------- |
| Exchange            | A constrained subgraph pattern over CAE entities   |
| Admissible exchange | A pattern satisfying CEP structural rules          |
| Canonical form      | A normalized representation of an exchange pattern |

## ANTI-DRIFT RULES

- CEP MUST NOT redefine CAE kinds
- CEP MAY reference CAE kinds symbolically (A, I, E, etc.)
- CEP OWNS composition, canonicalization, and morphisms
- CEP MUST remain interpretable independently of CEE

## SECTION CONTRACTS

### S1 Introduction and Motivation

```
SCOPE:
    Why civic accountability requires a formal exchange semantics.
    Limits of record-centric and schema-centric models.
    Gap between ontologies of entities (CAE) and analyzable flows of value and authority.

MUST:
    State the problem CEP solves.
    Position CEP as semantic, not ontological.
    State contributions:
        - exchange as constrained subgraph pattern
        - admissibility conditions
        - compositional structure of exchanges

MUST.NOT:
    Redefine CAE entity kinds.
    Introduce evidence or explanation semantics (CEE).
    Make causal claims about outcomes.

LENGTH:
    1.5–2 pages

DEPENDS.ON:
    P1 entity kinds and disjointness (assumed, not redefined)

REQUIRED.BY:
    All subsequent sections
```

### S2 Related Work

```
SCOPE:
    Prior work on transactions, provenance, workflows, and value flow:
        - PROV-O
        - OCDS / Popolo
        - Financial transaction models
        - Graph-based KR approaches
        - Category-theoretic data semantics (lightly)

MUST:
    Identify the absence of:
        - explicit obligation grounding
        - admissibility constraints
        - compositional semantics over civic exchanges
    Position CEP as orthogonal to domain schemas.

MUST.NOT:
    Re-litigate ontology design (CAE territory).
    Introduce bicategories or explanation structures (CEE territory).

LENGTH:
    2–3 pages

DEPENDS.ON:
    S1

REQUIRED.BY:
    S3 (design principles respond to gaps)

```

### S3 Design Principles and Scope

```
SCOPE:
    Explicit design commitments of CEP.

MUST:
    State principles including:
        - exchange is not an entity
        - semantics over CAE subgraphs
        - admissibility as a formal constraint
        - domain neutrality
        - compositionality
        - identity preservation under transformation

MUST.NOT:
    Define CAE kinds.
    Introduce evidence or interpretation semantics.

LENGTH:
    ~2 pages

DEPENDS.ON:
    S2

REQUIRED.BY:
    S4

```

### S4 Exchange as a Constrained Subgraph Pattern

```
SCOPE:
    Formal definition of an exchange.

MUST:
    Define:
        - minimal exchange pattern
        - required CAE kinds (A, I, E)
        - optional participation of S, J, O
    State explicitly:
        - exchanges are patterns, not entities
        - exchanges are recognized as matching patterns in data, not introduced as new entity kinds

MUST.NOT:
    Introduce composition or functors yet.
    Introduce evidence, explanations, or claims.

LENGTH:
    3–4 pages

DEPENDS.ON:
    P1 kinds
    S3 principles

REQUIRED.BY:
    S5, S6

```

### S5 Admissibility Conditions

```
SCOPE:
    What makes an exchange pattern valid under CEP.

MUST:
    Define admissibility rules, including:
        - presence of grounding Instrument
        - at least one accountable Actor
        - Event authorization or violation under Instrument
        - value expression with units and provenance
    Explain why inadmissible patterns fail.

MUST.NOT:
    Define ontology changes.
    Introduce evidence evaluation or explanations.

LENGTH:
    2–3 pages

DEPENDS.ON:
    S4

REQUIRED.BY:
    S6

```

### S6 Composition of Exchanges

```
SCOPE:
    How exchanges compose over time and structure.

MUST:
    Define:
        - sequential composition
        - parallel composition
        - identity exchange (if applicable)
    Specify preservation properties:
        - entity identity
        - obligation grounding
        - value conservation (where applicable)

MUST.NOT:
    Introduce bicategories or explanation semantics.
    Redefine admissibility rules.

LENGTH:
    3–4 pages

DEPENDS.ON:
    S5

REQUIRED.BY:
    S7

```

### S7 Canonicalization and Normalization

```
SCOPE:
    Canonical representation of exchange patterns.

MUST:
    Define:
        - equivalence of exchange graphs
        - normalization rules
        - canonical forms
    Explain why canonicalization is required for:
        - interoperability
        - comparison
        - aggregation

MUST.NOT:
    Modify or reinterpret CAE entity kinds or identity criteria.
    Introduce explanation or evidence models.

LENGTH:
    2–3 pages

DEPENDS.ON:
    S6

REQUIRED.BY:
    S8

```

### S8 Relationship to CAE and CEE

```
SCOPE:
    Position CEP in the stack.

MUST:
    State clearly:
        - CEP depends on CAE kinds and constraints
        - CEP does not modify CAE
        - CEP provides the semantic substrate for CEE
    One paragraph on CAE, one on CEE.

MUST.NOT:
    Explain CAE ontology.
    Explain CEE explanation structures.

LENGTH:
    ≤1 page

DEPENDS.ON:
    All prior sections

REQUIRED.BY:
    Conclusion

```

### S9 Conclusion

```
SCOPE:
    Summary and implications.

MUST:
    Recap CEP contributions.
    Emphasize separation of ontology, exchange, and evidence.
    State limitations honestly.

MUST.NOT:
    Promise specific future work.
    Introduce new formalisms.

LENGTH:
    ~1 page

DEPENDS.ON:
    Entire paper

REQUIRED.BY:
    Nothing

```

### Appendix A: Worked Exchange Examples

```
SCOPE:
    Concrete civic exchanges:
        - grant disbursement
        - procurement payment
        - regulatory inspection
        - penalty or enforcement action

MUST:
    Show admissible vs inadmissible cases.
    Use CAE kinds explicitly.

MUST.NOT:
    Introduce explanation semantics.

LENGTH:
    2–3 pages

```

### Appendix B: Formal Notation Reference

```
SCOPE:
    Notation used in CEP.

MUST:
    Define symbols, graph notation, composition operators.

MUST.NOT:
    Explain ontology or evidence theory.

LENGTH:
    1–2 pages


```

## STAGED CONTENT (MOVED VERBATIM FROM P1)

NOTE: The following text is a seed for S4–S5 and will be integrated verbatim or near-verbatim.

### Exchange Patterns and Admissibility

Exchanges are subgraph patterns.
CEP operates only on admissible patterns.
CAE constrains but does not enumerate them.

These patterns minimally involve Actors, Instruments, and Events
and encode the transfer, delegation, or satisfaction of obligations
without introducing new ontological constructs.

(Origin: P1 Relationships section — removed to maintain ontological purity.)

## VALIDATION CRITERIA

This paper will be considered validated when:

1. A minimal exchange pattern can be detected in at least two real datasets after mapping to CAE.
2. Admissibility rules correctly classify at least one admissible and one inadmissible case per example class.
3. Canonicalization maps semantically equivalent exchange graphs to the same canonical form.
4. Composition preserves declared invariants (identity preservation, obligation grounding, value semantics where applicable).

## KNOWN ISSUES TO FIX

### Must Fix

### Should Address

### Consider

## CHECKLIST BEFORE SUBMISSION

- [ ] All SCOPE.REQUIRED items checked
- [ ] All SCOPE.FORBIDDEN items verified absent
- [ ] All KNOWN ISSUES fixed
- [ ] Each section reviewed against its contract
- [ ] Grep leakage terms: 2-morphism, bicategory, fibered, explanation, vertical, spine, CTag
- [ ] Grep ontology drift terms: redefine, subclass, kind, disjointness (as used outside citations to P1)
- [ ] CAE referenced without redefining kinds
- [ ] CEE referenced at most one paragraph (S8 only)
- [ ] Bibliography complete (BFO, DOLCE, OntoClean, PROV-O, etc.)
- [ ] Examples use real civic data patterns
- [ ] Abstract matches paper content (category-theory language used consistently)
- [ ] Keywords appropriate for CEP target venue (semantics / KR / theory)
