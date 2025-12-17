# P1: Civic Accountable Entities (CAE) Paper Contract (PAPER_01.md)

NOTE: This document is an internal scope and design contract.
It is NOT part of any paper submission.

> Status: Draft for arXiv  
> Target venue (future): Applied Ontology (IOS Press)  
> Companion papers: P2 (CEP), P3 (CEE)  
> Implementation: civic-interconnect repository

## PURPOSE

Define the six entity kinds that participate in civic accountability relationships.
Establish the ontological foundation upon which CEP and CEE are built.
This paper answers: **What kinds of things exist in civic accountability systems?**

## SCOPE.REQUIRED

CAE MUST:

- [ ] Define six entity kinds: Actors (A), Sites/Assets (S), Instruments (I), Events (E), Jurisdictions (J), Observations (O)
- [ ] Establish disjointness: each entity has exactly one kind, kinds do not overlap
- [ ] Provide identity criteria for each kind: what makes an Actor an Actor, etc.
- [ ] State the inclusion criterion: accountability-driven, not exhaustive enumeration
- [ ] Explain why roles/sectors/functions are relations, not kinds
- [ ] Position against foundational ontologies: BFO, DOLCE, OntoClean, PROV-O
- [ ] Declare explicit non-goals and boundaries
- [ ] Provide worked examples showing entities classified by kind
- [ ] Stand alone: readable and evaluable without P2 or P3

## SCOPE.FORBIDDEN

CAE MUST NOT:

- ❌ Define or explain category theory concepts (objects, morphisms, functors, natural transformations)
- ❌ Define or explain exchange semantics, composition of exchanges, or admissibility rules
- ❌ Define or explain 2-morphisms, bicategories, or explanation structures
- ❌ Provide implementation details (code, schemas, API specifications)
- ❌ Make causal claims about civic outcomes
- ❌ Evaluate policies or assert normative positions
- ❌ Promise specific future work ("P2 will show...", "subsequent papers demonstrate...")
- ❌ Depend on P2/P3 for this paper's claims to make sense
- ❌ Define terms that belong to P2 or P3

## REFERENCES TO COMPANION PAPERS

### CEP (P2) Allowed

```
CAE provides the ontological foundation for the Civic Exchange Protocol (CEP),
which models how entities exchange value and authority.
```

- ONE sentence stating CEP exists and what it does (high level)
- May cite as forthcoming or arXiv link
- No detail on categorical semantics, morphisms, functors

### CEE (P3) — Allowed

```
CAE also supports Contextual Evidence and Explanations (CEE),
which attaches structured explanations to civic decisions.
```

- ONE sentence stating CEE exists and what it does (high level)
- May cite as forthcoming or arXiv link
- No detail on 2-morphisms, vertical domains, bicategories

### Forbidden Patterns

- ❌ "CEP defines morphisms as..." (that's P2 content)
- ❌ "CEE uses bicategorical structure to..." (that's P3 content)
- ❌ "As we show in P2..." (dependency)
- ❌ "The categorical semantics of exchanges..." (P2 territory)

## TERMINOLOGY

### Terms DEFINED in this paper (authoritative)

| Term                                | Section | Short Definition                                                     |
| ----------------------------------- | ------- | -------------------------------------------------------------------- |
| Actor (A)                           | S4.1    | Entity capable of bearing rights, obligations, or responsibilities   |
| Site/Asset (S)                      | S4.2    | Physical or operational entity acted upon; does not bear obligations |
| Instrument (I)                      | S4.3    | Enduring construct that creates, modifies, or constrains obligations |
| Event (E)                           | S4.4    | Time-indexed occurrence asserted under authority of an Instrument    |
| Jurisdiction (J)                    | S4.5    | Entity that scopes authority, applicability, and governance          |
| Observation (O)                     | S4.6    | Measurement or indicator describing state, performance, or outcome   |
| Entity kind                         | S4      | One of the six disjoint categories; invariant over time              |
| Accountability-bearing relationship | S3.1    | Relationship involving obligations, authority, or accountability     |
| Disjointness                        | S3.2    | Property that entity kinds do not overlap                            |
| Exchange-driven inclusion           | S3.1    | Criterion: entities included only via accountability participation   |

### Terms IMPORTED into this paper

| Term                      | Source    | Usage in this paper                       |
| ------------------------- | --------- | ----------------------------------------- |
| Continuant/Occurrent      | BFO       | Referenced in Related Work for comparison |
| Rigid/Anti-rigid property | OntoClean | Referenced in Related Work and S3.3       |
| Activity/Entity           | PROV-O    | Referenced in Related Work for comparison |

### Terms EXPORTED from this paper

| Term                    | Exported To | How Used                                          |
| ----------------------- | ----------- | ------------------------------------------------- |
| All six entity kinds    | P2          | As the sort signature for typed objects           |
| Disjointness constraint | P2          | Morphisms respect kind boundaries                 |
| Identity criteria       | P2, P3      | Determines when two references denote same entity |

### Terms FORBIDDEN in this paper

| Term                            | Belongs To | Why Forbidden                       |
| ------------------------------- | ---------- | ----------------------------------- |
| Morphism                        | P2         | Category theory; exchange semantics |
| Functor                         | P2         | Category theory                     |
| Natural transformation          | P2         | Category theory                     |
| Composition (of exchanges)      | P2         | Exchange semantics                  |
| Admissibility                   | P2         | Exchange semantics                  |
| 2-morphism                      | P3         | Bicategorical structure             |
| Vertical domain                 | P3         | CEE architecture                    |
| Explanation (as technical term) | P3         | CEE semantics                       |
| Spine                           | P3         | CEE architecture                    |

## ANTI-DRIFT RULES

1. **One definition per term**: If defining a term, grep P2/P3 and remove any redundant definitions there.
2. **One sentence rule**: If writing more than one sentence about CEP or CEE content, STOP. You're in the wrong paper.
3. **No forward promises**: Replace "P2 will show X" with "CEP models X" (factual, not promissory).
4. **Independence test**: Could a reviewer reject this paper without reading P2/P3? If no, this paper has illegal dependencies.
5. **Terminology quarantine**: Before using a term, check the FORBIDDEN list. If there, find different word or realize you're writing P2/P3 content.
6. **Category theory test**: If about to write "morphism," "functor," "composition," or "natural transformation", STOP. That's P2.

## SECTION CONTRACTS

### S1 Introduction and Motivation

```
SCOPE: Problem statement. Why civic accountability needs formal ontology.
       Fragmentation of civic data. Gap in existing approaches.
MUST: Motivate the problem. State contribution (six-kind ontology).
      Brief mention of CEP/CEE as downstream uses (one sentence each).
MUST.NOT: Explain CEP/CEE in detail. Promise category semantics.
LENGTH: 1.5-2 pages
DEPENDS.ON: Nothing
REQUIRED.BY: All subsequent sections
```

### S2 Related Work

```
SCOPE: Position CAE against BFO, DOLCE, OntoClean, PROV-O, LKIF, FIBO, IAO.
       Identify the gap CAE fills.
MUST: Engage seriously with foundational ontology literature.
      Show what existing work does and doesn't cover.
      End with clear gap statement motivating CAE.
MUST.NOT: Oversell CAE. Claim novelty where there is none.
          Dismiss existing work without justification.
LENGTH: 2-3 pages
DEPENDS.ON: S1 (problem stated)
REQUIRED.BY: S3 (principles respond to gap)
```

### S3 Design Principles and Scope

```
SCOPE: Explicit design choices. Why CAE is structured as it is.
MUST: State each principle clearly. Connect to ontological methodology.
      Accountability-driven inclusion, disjointness, roles-as-relationships,
      selective modeling, neutrality, temporal stability.
MUST.NOT: Reference CEP admissibility rules. Define exchange patterns.
LENGTH: 2 pages
DEPENDS.ON: S2 (principles respond to landscape)
REQUIRED.BY: S4 (kinds embody principles)
```

### S4 Ontological Partition of Accountable Entities

```
SCOPE: Define the six entity kinds. This is the core contribution.
MUST: Define each kind with identity criteria.
      Provide clear examples for each.
      Explain what distinguishes each kind from others.
      Address edge cases and boundary conditions.
MUST.NOT: Define exchanges or composition. Use category theory terminology.
LENGTH: 4-5 pages (largest section)
DEPENDS.ON: S3 (principles established)
REQUIRED.BY: S5, S6, S7 (all reference the kinds)
```

### S5 Relationships and Structural Constraints

```
SCOPE: How entities of different kinds relate. Constraints on relationships.
MUST: Define allowed relationship types (e.g., Actors party to Instruments).
      State structural constraints (e.g., Events require authorizing Instrument).
MUST.NOT: Define exchange semantics. Use morphism language.
LENGTH: 2-3 pages
DEPENDS.ON: S4 (kinds defined)
REQUIRED.BY: S6 (chains use relationships)
```

### S6 Laws, Regulations, and Accountability Chains

```
SCOPE: How Instruments work. Delegation, authorization, nesting.
       How accountability traces through chains.
MUST: Explain Instruments in detail—types, examples, how they ground Events.
      Show how chains form without using categorical composition language.
MUST.NOT: Define categorical composition. Reference functors.
LENGTH: 2-3 pages
DEPENDS.ON: S4, S5
REQUIRED.BY: S7 (outcomes link back to chains)
```

### S7 Outcomes, Observations, and Public Value

```
SCOPE: How Observations work. Relationship to outcomes and accountability.
MUST: Explain Observations as measurements/indicators.
      Distinguish from Events. Show how outcomes connect to rest of ontology.
MUST.NOT: Define evidence semantics (CEE territory). Make causal claims.
LENGTH: 1.5-2 pages
DEPENDS.ON: S4, S5, S6
REQUIRED.BY: S8 (fit section)
```

### S8 Relationship to CEP and CEE

```
SCOPE: Brief statement of how CAE connects to CEP and CEE.
MUST: State what CEP does (one paragraph). State what CEE does (one paragraph).
      Explain separation of concerns: CAE = what exists, CEP = how moves, CEE = how explained.
MUST.NOT: Explain CEP/CEE internals. Define their terminology. Promise details.
LENGTH: 1 page maximum
DEPENDS.ON: All prior sections
REQUIRED.BY: Conclusion
```

### S9 Conclusion

```
SCOPE: Summary. Limitations. Future work (brief, non-promissory).
MUST: Summarize contribution. Acknowledge limitations honestly.
      State that validation comes through implementation/adapters.
MUST.NOT: Overclaim. Promise specific future papers.
LENGTH: 1 page
DEPENDS.ON: All prior sections
REQUIRED.BY: Nothing
```

### Appendix A: Worked Examples

```
SCOPE: Concrete examples showing CAE applied to real civic data.
MUST: Show at least one example each: grant, permit, inspection, payment, outcome.
      Classify entities by kind. Show relationships.
MUST.NOT: Use category theory notation. Define exchange patterns.
LENGTH: 2-3 pages
```

### Appendix B: Diagrammatic Intuition

```
SCOPE: Visual representation of the six kinds and their relationships.
MUST: Provide clear diagrams. Label with CAE terminology only.
MUST.NOT: Use commutative diagrams or categorical notation (that's P2).
LENGTH: 1-2 pages
```

### Appendix C: Glossary

```
SCOPE: Quick reference for CAE terms.
MUST: Define all CAE terms concisely. Reference defining section.
MUST.NOT: Include P2/P3 terms.
LENGTH: 1 page
```

## VALIDATION CRITERIA

This paper will be considered validated when:

1. **Competency Questions**: The following can be answered using CAE structure:

   - Which Actors hold obligations under Instrument X?
   - What Events occurred at Site Y during period T?
   - Which Instruments govern activity in Jurisdiction Z?
   - What Observations measure outcomes attributable to Actor A?

2. **Coverage**: Real data maps cleanly to CAE:

   - [ ] USAspending.gov federal spending data
   - [ ] EU public procurement data
   - [ ] Environmental permits/inspections (EPA or equivalent)
   - [ ] Health outcome indicators

3. **Interoperability**: Same query runs against different sources once mapped to CAE

4. **Discrimination**: CAE distinguishes cases that should be distinguished:
   - An Actor vs. a Site operated by that Actor
   - An Instrument vs. an Event under that Instrument
   - An Event vs. an Observation about that Event

## KNOWN ISSUES TO FIX

### Must Fix

### Should Address

### Consider

## CHECKLIST BEFORE SUBMISSION

- [ ] All SCOPE.REQUIRED items checked
- [ ] All SCOPE.FORBIDDEN items verified absent
- [ ] All KNOWN ISSUES fixed
- [ ] Each section reviewed against its contract
- [ ] Grep forbidden terms: morphism, functor, composition, 2-morphism, bicategory, fibered, vertical, spine, ctag
- [ ] CEP/CEE mentioned max twice, one sentence each
- [ ] Bibliography complete (BFO, DOLCE, OntoClean, PROV-O, etc.)
- [ ] Examples use real civic data patterns
- [ ] Abstract matches paper content (no category theory language)
- [ ] Keywords appropriate for Applied Ontology venue
