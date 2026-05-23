# Brain Page Mapping (Q → Page)

Each diagnostic answer becomes a Company Brain page or a section of one. Write complete pages, not raw dumps.

The Brain Builder may have created adaptive folders based on the business. Use those when relevant, but always populate the core pages below.

| Question | Company Brain Page | Section |
|---|---|---|
| Q1 (business + what you do) | `Company Brain/business/about.md` | Full page — what the business is, in their words + reasonable context from other answers |
| Q2 (ideal customer) | `Company Brain/customers/ideal-customer.md` | Full page — ideal customer profile, pains, desires, objections, buying triggers |
| Q3 (biggest revenue source) | `Company Brain/offers/main-offer.md` | Full page — main offer, price if shared, deliverables, promise, proof needed |
| Q4-Q6 (voice) | `Company Brain/voice/brand-voice.md` | Full page — tone preferences, words to use/avoid, length preferences, examples |
| Q7-Q11 (diagnostic) | `Company Brain/business/diagnostic.md` | Full page — time eaters, bottlenecks, lost opportunities, delegation targets, biggest impact areas |
| Q12 (boundaries) | `Company Brain/business/boundaries.md` | Full page — non-negotiables, approval gates, things every future Employee inherits |
| Active projects mentioned during diagnostic | `projects/[project-slug]/brief.md` | Create or update project brief when the owner names an active project worth organizing |
| Confirmed durable decisions | `Company Brain/decisions/decision-log.md` | Append confirmed decisions with date and context |

## Frontmatter template (use for every Company Brain page)

```markdown
---
title: [page title]
type: business | offer | customer | voice | content | process | person | tool | decision | source | project | industry
created: YYYY-MM-DD
last_updated: YYYY-MM-DD
status: draft | active | archived
related:
  - "[[other-relevant-page]]"
tags:
  - tag1
---

# Page title
```

## Inferring context

Use the other answers to enrich each page.

Example: If Q1 says "I run a yoga studio" and Q7 says "I'm losing 10 hours/week on social posts," then `Company Brain/business/diagnostic.md` should note that social media is the top time eater, and `Company Brain/offers/main-offer.md` should reflect the yoga classes or memberships they identified as the main revenue source.

Do not invent facts. Use only what the owner said. If a useful field is unknown, write a bracketed placeholder such as `[price not shared yet]`.

## Adaptive folder rule

If the business model needs more specific pages, use the adaptive folders Brain Builder created.

Examples:

- Local service: write service area context to `Company Brain/service-areas/`, jobs to `Company Brain/jobs/`, reviews to `Company Brain/reviews/`.
- Coach/consultant: write curriculum notes to `Company Brain/curriculum/`, workshop notes to `Company Brain/workshops/`, sales notes to `Company Brain/sales/`.
- Agency: write client notes to `Company Brain/clients/`, proposal notes to `Company Brain/proposals/`, deliverables to `Company Brain/deliverables/`.
- Ecommerce: write product notes to `Company Brain/products/`, campaign notes to `Company Brain/campaigns/`, customer support notes to `Company Brain/customer-support/`.

Keep the core pages updated even when adaptive folders exist. The core pages are the starting point every AI Employee reads.
