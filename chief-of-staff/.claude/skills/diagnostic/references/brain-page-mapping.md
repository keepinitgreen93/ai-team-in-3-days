# Brain Page Mapping (Q → Page)

Each diagnostic answer becomes a Brain page (or a section of one). Write COMPLETE pages, not raw dumps.

| Question | Brain Page | Section |
|---|---|---|
| Q1 (business + what you do) | `brain/business/about.md` | Full page — what the business is, in their words + reasonable inferred context |
| Q2 (ideal customer) | `brain/customers/ica.md` | Full page — ICA profile (demographics, psychographics, pain points, what they want) |
| Q3 (biggest revenue source) | `brain/products/main-offer.md` | Full page — the main offer, price (if shared), what's included |
| Q4-Q6 (voice) | `brain/business/voice.md` | Full page — tone preferences, words to use/avoid, length preferences, examples |
| Q7-Q11 (diagnostic) | `brain/business/diagnostic.md` | Full page — time eaters, biggest bottlenecks, lost opportunities, what they'd delegate, biggest impact areas. This page also feeds the hire recommendations. |
| Q12 (boundaries) | `brain/business/boundaries.md` | Full page — non-negotiables, things to never do without asking. EVERY future Employee inherits these. |

## Frontmatter template (use for every page)

```markdown
---
title: [page title]
type: [business | customer | product | content | person | process]
created: 2026-MM-DD
last_updated: 2026-MM-DD
related:
  - "[[other-relevant-page]]"
tags:
  - tag1
---

# Page title
```

## Inferring context

Use the other answers to enrich each page. Example: If Q1 says "I run a yoga studio" and Q7 says "I'm losing 10 hours/week on social posts," then `brain/business/diagnostic.md` should note that social media is the #1 time eater AND `brain/products/main-offer.md` should reflect that yoga classes are the main offer.

DO NOT invent facts. Use only what the user said.
