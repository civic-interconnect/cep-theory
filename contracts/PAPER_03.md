# P3: Contextual Evidence and Explanations (CEE) Paper Contract (PAPER_03.md)

NOTE: This document is an internal scope and design contract.
It is NOT part of any paper submission.

> Status: Draft (staging)
> Target venue: TBD (KR / provenance / transparency / explainability / civic tech)
> Companion papers: P1 (CAE), P2 (CEP)
> Implementation: civic-interconnect repository

## PURPOSE

Define Contextual Evidence and Explanations (CEE): a formal layer for attaching
evidence, provenance, and explanation structure to civic accountability artifacts
grounded in CAE and interpreted through CEP.

This paper answers:
**How are civic claims supported, attributed, and compared across competing interpretations,
without changing the underlying data or exchange semantics?**

CEE introduces formal structures for:

- evidence attachment to Events and Observations,
- provenance and attribution of claims,
- explanation objects as first-class artifacts,
- comparability of explanations across actors, models, and time.

CEE does not assert causal truth, policy validity, or normative correctness; it provides structured representations of explanatory claims and their provenance.

## DEPENDENCIES

CEE DEPENDS ON:

- P1 (CAE) entity kinds, disjointness, and relationship constraints
- P2 (CEP) exchange patterns, admissibility, and canonicalization (as assumed substrate)

CEE MUST NOT:

- Redefine CAE entity kinds or identity criteria
- Modify CEP exchange semantics, admissibility, or composition rules

## SCOPE.REQUIRED

CEE MUST:

- [ ] Define what a claim is in this framework (as an object that can be supported or contested)
- [ ] Define evidence objects and how they attach to CAE entities, Events, and Observations
- [ ] Define provenance and attribution requirements for claims and evidence
- [ ] Define explanation structure for why a claim is asserted (human, institutional, or model-generated)
- [ ] Enable comparison of different explanations over the same underlying CAE/CEP substrate
- [ ] Remain neutral: represent justification structure without endorsing a conclusion
- [ ] Provide worked examples in at least two vertical domains

## SCOPE.FORBIDDEN

CEE MUST NOT:

- ❌ Redefine CAE kinds, disjointness, or identity criteria
- ❌ Redefine CEP exchange definitions, admissibility, canonicalization, or composition
- ❌ Introduce new obligations or normative evaluation criteria as requirements
- ❌ Make causal claims about outcomes
- ❌ Require a specific ML model family or interpretability method
- ❌ Collapse “evidence” into “truth”: CEE represents support and attribution, not correctness

## TERMINOLOGY (PRELIMINARY)

| Term        | Definition (contract-level)                                                    |
| ----------- | ------------------------------------------------------------------------------ |
| Claim       | An asserted statement about CAE/CEP-grounded entities, events, or observations |
| Evidence    | An artifact offered in support of a claim, with provenance and scope           |
| Provenance  | Information about origin, time, method, and custodianship of evidence/claims   |
| Attribution | Identification of the actor/system responsible for producing a claim           |
| Explanation | Structured account linking a claim to evidence under a declared method/context |
| Context tag | An attached interpretive annotation that does not alter canonical identity     |

## ANTI-DRIFT RULES

- CEE MUST NOT redefine CAE kinds or CEP exchange semantics
- CEE MAY reference CAE kinds symbolically (A, S, I, E, J, O)
- CEE MAY reference CEP exchanges as the base substrate for interpretation
- CEE OWNS claims, evidence attachment, attribution, provenance, explanation objects, and comparison rules
- If a paragraph defines an exchange rule, STOP: that belongs to P2
- If a paragraph defines identity criteria for entities, STOP: that belongs to P1

## SECTION CONTRACTS

### S1 Introduction and Motivation

```
SCOPE:
Why civic accountability requires explicit evidence and explanation layers.
Limits of "open data" without justification, provenance, and attribution.
Why competing interpretations must be comparable without altering the base record.

MUST:
State problem: civic decisions are explained inconsistently, often opaquely.
State contribution: CEE formalizes evidence + explanation as attachable, comparable artifacts.
Position CEE as interpretation-layer, not ontology or exchange semantics.

MUST.NOT:
Redefine CAE kinds or CEP exchange rules.
Make causal claims about outcomes.
Argue that explanations are necessarily correct.

LENGTH:
1.5–2 pages

DEPENDS.ON:
Assumes CAE (P1) and CEP (P2) exist; does not restate them.

REQUIRED.BY:
All subsequent sections
```

### S2 Related Work

```
SCOPE:
Prior work on provenance, evidence modeling, and explainability:
- PROV-O and provenance literature
- argumentation and justification frameworks (as relevant)
- explainable AI / model cards / datasheets (as relevant)
- transparency in public administration / accountability systems (as relevant)

MUST:
Identify gaps:
- lack of structured linkage from civic claims to exchange-grounded artifacts
- poor comparability across competing interpretations
- inadequate separation between identity (CAE), exchange semantics (CEP), and explanations (CEE)

MUST.NOT:
Re-litigate ontology design (P1 territory).
Re-define exchange semantics or canonicalization (P2 territory).

LENGTH:
2–3 pages

DEPENDS.ON:
S1

REQUIRED.BY:
S3
```

### S3 Design Principles and Scope

```
SCOPE:
Explicit design commitments of CEE.

MUST:
State principles including:
- neutrality (structure without endorsement)
- attribution (who/what asserted the claim)
- provenance completeness (how/when derived)
- scope (what the claim applies to)
- comparability (multiple explanations over same substrate)
- non-interference (does not change canonical identity)

MUST.NOT:
Define CEP admissibility/composition.
Define CAE identity criteria.

LENGTH:
~2 pages

DEPENDS.ON:
S2

REQUIRED.BY:
S4
```

### S4 Claims and Targets

```
SCOPE:
What a claim is and what it can be "about."

MUST:
Define claim targets, such as:
- CAE entities (A,S,I,E,J,O)
- CEP exchanges (recognized patterns)
- derived aggregates (explicitly declared as derived)
Specify required metadata:
- target reference(s)
- time scope
- jurisdictional scope (when applicable)

MUST.NOT:
Define truth conditions as required by CEE.
Redefine exchange patterns.

LENGTH:
2–3 pages

DEPENDS.ON:
P1 kinds, P2 exchange recognition
S3 principles

REQUIRED.BY:
S5, S6
```

### S5 Evidence Objects and Attachment

```
SCOPE:
Evidence as first-class artifact and how it attaches.

MUST:
Define evidence types at the structural level (not a closed typology), such as:
- records, documents, measurements, datasets, computed outputs
Require provenance fields:
- source, method, time, custody, transformation steps (as applicable)
Define attachment relations:
- evidence supports claim
- evidence derived-from evidence
- evidence pertains-to target

MUST.NOT:
Require domain-specific metrics.
Require specific storage formats or tooling.

LENGTH:
3–4 pages

DEPENDS.ON:
S4

REQUIRED.BY:
S6
```

### S6 Explanation Structure and Attribution

```
SCOPE:
What an explanation is and how it relates claim -> evidence under a declared method.

MUST:
Define:
- attribution: actor/system responsible
- method: model, rule set, procedure, human judgment (declared)
- rationale: structured link from evidence to claim
- uncertainty/limitations: declared where applicable
Specify minimal explanation schema fields (conceptual, not implementation-specific).

MUST.NOT:
Define CEP composition rules or categorical semantics.
Collapse explanation into policy evaluation.

LENGTH:
3–4 pages

DEPENDS.ON:
S5

REQUIRED.BY:
S7
```

### S7 Comparability of Explanations

```
SCOPE:
How different explanations over the same substrate can be compared without forcing agreement.

MUST:
Define comparability dimensions, such as:
- shared target alignment
- evidence overlap / divergence
- method differences
- attribution differences
- temporal drift (explanations changing over time)
Provide at least one formal criterion for equivalence or partial order of explanations.

MUST.NOT:
Require a single “correct” explanation.
Define exchange composition.

LENGTH:
2–3 pages

DEPENDS.ON:
S6

REQUIRED.BY:
S8
```

### S8 Vertical Stacks and Spines

```
SCOPE:
Domain-oriented packaging of CAE+CEP+CEE into repeatable explanation stacks.

MUST:
Define what a "vertical" is structurally (not a domain taxonomy).
Show at least two vertical examples (e.g., procurement, public health, environment, education).
Explain how a spine provides consistent claim/evidence/explanation interfaces across domains.

MUST.NOT:
Introduce new entity kinds.
Replace CEP exchange semantics with domain-specific semantics.

LENGTH:
2–3 pages

DEPENDS.ON:
S7

REQUIRED.BY:
Conclusion
```

### S9 Conclusion

```
SCOPE:
Summary and implications.

MUST:
Recap CEE contributions.
Emphasize separation: CAE = entities, CEP = exchange semantics, CEE = evidence/explanation comparability.
State limitations honestly.

MUST.NOT:
Promise specific future work.
Introduce new foundational formalisms.

LENGTH:
~1 page

DEPENDS.ON:
Entire paper
```

### Appendix A: Worked Explanation Examples

```
SCOPE:
End-to-end examples showing:
- claim
- target
- evidence attachments
- attribution/method
- explanation structure
- comparison of two competing explanations over same base artifacts

MUST:
Include at least two vertical domains.
Include at least one case with competing explanations.

MUST.NOT:
Require adjudication or correctness.

LENGTH:
3–4 pages
```

### Appendix B: Provenance and Attribution Field Reference

```
SCOPE:
Field glossary for provenance and attribution (conceptual).

MUST:
Define minimal recommended fields and definitions.

MUST.NOT:
Specify implementation (schemas, APIs).

LENGTH:
1–2 pages
```

## STAGED CONTENT

(Reserved for verbatim material moved out of P2, when needed.)

## VALIDATION CRITERIA

This paper will be considered validated when:

1. The same CAE/CEP-grounded artifact can carry at least two competing explanations without modification to canonical identity.
2. Evidence/provenance fields are sufficient to reproduce claim derivation at the level of declared method.
3. Explanations can be compared using declared comparability criteria (alignment, overlap, divergence, method).
4. At least two vertical stacks demonstrate reusability of the same explanation structure across domains.

## KNOWN ISSUES TO FIX

### Must Fix

### Should Address

### Consider

## CHECKLIST BEFORE SUBMISSION

- [ ] All SCOPE.REQUIRED items checked
- [ ] All SCOPE.FORBIDDEN items verified absent
- [ ] All KNOWN ISSUES fixed
- [ ] Each section reviewed against its contract
- [ ] Grep leakage terms: morphism, functor, composition, admissibility, canonicalization (CEP territory)
- [ ] Grep ontology drift terms: kind, disjointness, identity criteria (as definitions outside citations to P1)
- [ ] CAE referenced without redefining kinds
- [ ] CEP referenced without redefining exchange semantics
- [ ] Bibliography complete (provenance, argumentation, explainability, public accountability)
- [ ] Examples show competing explanations over same base substrate
- [ ] Abstract matches paper content (CEE terminology used consistently)
- [ ] Keywords appropriate for CEE target venue
