# How I Write Design Documents

This file distills how I write and review design documents. When you help me on a design doc, follow these rules.

## Tone and voice

- Write in a natural, conversational tone, like explaining to a colleague.
- Active voice. Direct. Get to the point without preamble.
- Use contractions where appropriate.
- Vary sentence length; don't write everything at the same cadence.
- No corporate jargon, no buzzwords, no hype words ("seamless", "robust", "leverage", "utilize", "powerful", "best-in-class").
- Avoid the word "comprehensive". Prefer "detailed", "thorough", "complete", "full".
- Don't use filler phrases like "it's worth noting", "it's important to note", "in essence", "fundamentally", "at its core".
- Skip unnecessary qualifiers like "simply", "just", "easily", "clearly", "obviously".
- Don't over-explain obvious things.
- Don't write multi-paragraph executive-summary boilerplate. One short paragraph is fine.

## Structure

- Lead with the customer-facing question or outcome, not the implementation. Open with what the system is for and what it answers, then describe how.
- Surface the two or three load-bearing design choices in the first section so the rest of the doc reads against them.
- Glossary near the top. One-line entries. Cross-reference a Core Abstractions section for anything that needs more than a line.
- Use abstractions sections to define reusable concepts. Define each concept once and refer to it by name everywhere else.
- Architecture should describe data flow as numbered steps; one verb per step.
- Use appendices for query shapes, scope rationale, inventories, and reused infrastructure. Don't put regular explanatory paragraphs in appendices - those belong in the body.

## Avoid AI-style writing

These patterns read as AI-generated. Don't use them:

- Three-bullet enumerations of system properties.
- "X is not Y; it is Z." constructions used as rhetorical contrast.
- Sentences that say what something is not before saying what it is.
- Trailing summary sentences after a section that just restate it.
- Trailing kicker sentences that say a doc or component "owns that policy".
- Mirrored bullet pairs when one paragraph would do.
- Generic claims like "scalable", "flexible", "extensible" without the mechanism.
- "This means that..." linking clauses.

## Specifics over abstractions

- Use real numbers when you have them. If you can measure, measure. Cite the source.
- Use real names (services, tables, files) once you've grounded them.
- For storage, describe the shape of records and the access pattern, not just "a table".
- For pipelines, describe what each stage adds, not just the topology.
- When something is undecided, mark it as a decision the LLD will resolve. Don't pretend it's settled.

## Diagrams

- Architecture diagrams in DrawIO XML (`.drawio`), stored as separate files.
- Don't embed ASCII art for architecture in markdown.
- Reference the diagram by filename in the doc; one short caption.

## Iteration discipline

- Don't leave conversation residue. If a paragraph reads like a record of edits, rewrite it from scratch as if you'd always known the answer.
- Don't add summary sentences at the end of edits.
- When asked to rewrite a section, rewrite it; don't patch the old version with hedging language.
- Don't over-claim. If a property is desired but not yet measured, say "should" or "intended to" rather than asserting it as fact.

## Length

- Shorter is better. If a paragraph can be cut by half without losing information, cut it.
- One worked example beats three abstract bullet lists.
- Tables only when each row carries the same shape of information.

## Decision framing

- For unresolved decisions, list candidates with a one-line tradeoff each. Don't recommend unless asked.
- For resolved decisions, state the decision and one sentence of rationale.
- Don't write multi-paragraph evaluations of options when a single sentence carries the conclusion.

## Naming

- Pick names that describe the role, not the metaphor. Rename when a name stops carrying its weight.
- When introducing a new concept that distinguishes itself from an existing one, name it explicitly so prose can stop disambiguating it in every sentence.

## What to do when I push back

- If I say "remove this", remove it; don't soften, don't argue.
- If I say "shorter", cut by half before adding anything new.
- If I say "this is AI-style", look for the patterns above and rewrite from scratch.
- If I correct a fact, update every mention of it across the doc, not just the one I quoted.
