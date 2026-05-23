# Company Brain Schema

This schema keeps the Company Brain useful for both humans and AI agents.

The Brain is plain markdown. Obsidian is the recommended human interface, but Hermes, OpenClaw, Claude Code, Codex, Anti-Gravity, Cursor, and other agents can read the same files from a local folder, Git checkout, Railway volume, VPS, or container.

## Core rule

The Brain should make the business easier to understand and operate.

If a page helps the AI remember the business, write in the right voice, organize a project, avoid a mistake, or make a better recommendation, it belongs here.

## Frontmatter

Every page should start with frontmatter:

```markdown
---
title: [Page title]
type: business | offer | customer | voice | content | process | person | tool | decision | source | project | industry
created: YYYY-MM-DD
last_updated: YYYY-MM-DD
status: draft | active | archived
related:
  - "[[other-page-1]]"
  - "[[other-page-2]]"
tags:
  - tag1
  - tag2
---

# Page title

Page content goes here.
```

## Base folder conventions

- `business/` — company overview, goals, boundaries, strategy, positioning
- `offers/` — products, services, packages, pricing, deliverables, proof notes
- `customers/` — ideal customer, customer segments, objections, success stories
- `voice/` — brand voice, founder voice, writing examples, words to avoid
- `content/` — posts, emails, video scripts, ideas, hooks, swipe notes
- `processes/` — SOPs, repeated workflows, checklists, handoffs
- `people/` — founder, team, contractors, partners, key relationships
- `tools/` — software, logins reference notes, automations, integration context
- `decisions/` — confirmed decisions and why they were made
- `sources/` — source inbox for links, uploads, transcripts, notes, and references

## Adaptive folder conventions

Brain Builder may add folders based on the business model. Use lowercase kebab-case.

Examples:

- Local service: `service-areas/`, `jobs/`, `estimates/`, `reviews/`, `photos/`, `lead-follow-up/`
- Coach/consultant: `audience/`, `clients/`, `curriculum/`, `sales/`, `testimonials/`, `workshops/`
- Agency: `clients/`, `case-studies/`, `proposals/`, `deliverables/`, `campaigns/`, `reporting/`
- Creator/education: `curriculum/`, `lessons/`, `community/`, `content-series/`, `lead-magnets/`, `launches/`
- Ecommerce/product brand: `products/`, `collections/`, `inventory/`, `reviews/`, `creative/`, `campaigns/`
- SaaS/software: `product/`, `features/`, `users/`, `roadmap/`, `support/`, `docs/`
- Healthcare/wellness: `services/`, `patients-or-clients/`, `compliance/`, `education/`, `referrals/`, `scheduling/`
- Nonprofit/community: `mission/`, `programs/`, `donors/`, `volunteers/`, `events/`, `grants/`

If a business does not fit one category, create folders that match how the owner naturally organizes the business.

## Starter pages

Every Company Brain should start with:

- `business/about.md`
- `business/goals.md`
- `business/boundaries.md`
- `voice/brand-voice.md`
- `offers/main-offer.md`
- `customers/ideal-customer.md`
- `processes/repeatable-workflows.md`
- `tools/tool-stack.md`
- `decisions/decision-log.md`
- `sources/source-inbox.md`

These pages can start as prompts. Do not invent facts. Bracket unknowns like `[add this later]`.

## Project folders

Active work should live outside the Brain, next to it, in `projects/`:

```text
projects/[project-slug]/
  brief.md
  tasks.md
  assets/
  notes/
  outputs/
```

`brief.md` should explain:

- Goal
- Why it matters
- Inputs
- Outputs
- Approval rules
- Related Brain pages

`tasks.md` should track:

- Backlog
- In progress
- Waiting on owner
- Complete

## Wiki-links

Use wiki-links for related Brain pages:

- `[[business/about]]`
- `[[customers/ideal-customer]]`
- `[[offers/main-offer]]`
- `[[voice/brand-voice]]`

Use relative markdown links for project files when needed:

```markdown
[Website refresh brief](../projects/website-refresh/brief.md)
```

## Agent runtime notes

### Hermes / Railway

- The agent reads the markdown files from a persistent workspace path.
- Railway does not need Obsidian installed.
- Sync local Obsidian edits to Railway through Git, a private repo, or an explicit copy/upload process.

### OpenClaw

- Put `Company Brain/`, `projects/`, and `AGENTS.md` in the project workspace OpenClaw can read.
- Keep client/company work separated by folder or repo.

### Claude Code

- Put `Company Brain/` near the project root.
- Use `CLAUDE.md` to instruct Claude Code to read `_index.md` and relevant pages before working.

### Codex / Anti-Gravity / Cursor

- Use `AGENTS.md` as the default project instruction file.
- Cursor can also use `.cursor/rules/company-brain.md`.

## AI behavior rules

Agents using this Brain should:

1. Read `_index.md` first.
2. Read relevant pages before answering.
3. Read project briefs before doing project work.
4. Ask one focused question when key context is missing.
5. Never fabricate proof, testimonials, metrics, prices, customer details, policies, or legal claims.
6. Label assumptions clearly.
7. Save confirmed durable decisions to `decisions/decision-log.md`.
8. Keep raw/source notes in `sources/` until processed.

## Page quality rules

- One idea per section.
- Plain language.
- Short paragraphs.
- Dates and specifics over vague claims.
- Link related pages.
- Update `last_updated` when editing.
- Split pages when they become hard to scan.

## When in doubt

Create a clear page with prompts and link it from `_index.md`. The Chief of Staff can refine and organize it later.
