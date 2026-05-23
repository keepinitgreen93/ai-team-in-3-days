# Company Brain Index

Welcome to your Company Brain — the shared knowledge base your AI employees read before they make recommendations, create content, organize work, or take action.

This Brain works in two ways:

- **Human view:** Open this folder in Obsidian so you can browse, edit, and connect ideas.
- **Agent view:** Point Hermes, OpenClaw, Claude Code, Codex, Anti-Gravity, Cursor, or another agent at this folder so it can read the same markdown files.

## Start here

- [[business/about]] — what the business does and why it exists
- [[business/goals]] — current business goals and priorities
- [[business/boundaries]] — what AI should never do without approval
- [[voice/brand-voice]] — how the business sounds
- [[offers/main-offer]] — core offer, pricing, deliverables, and promise
- [[customers/ideal-customer]] — who the business serves
- [[processes/repeatable-workflows]] — repeated work that AI can help with
- [[tools/tool-stack]] — tools, accounts, and systems used by the business
- [[decisions/decision-log]] — confirmed decisions worth remembering
- [[sources/source-inbox]] — raw links, files, notes, and ideas to process later

## Base folders

- `business/` — identity, goals, boundaries, positioning, operating context
- `offers/` — products, services, pricing, deliverables, guarantees, packaging
- `customers/` — ideal customer, real customer notes, objections, testimonials, research
- `voice/` — brand voice, founder voice, words to use, words to avoid
- `content/` — posts, emails, scripts, content recipes, swipe notes
- `processes/` — SOPs, workflows, checklists, repeated business operations
- `people/` — founder, team, contractors, partners, important relationships
- `tools/` — software stack, automations, accounts, integration notes
- `decisions/` — approved strategy and business decisions
- `sources/` — inbox for source material that still needs to be processed

## Adaptive folders

Brain Builder may add more folders based on your business model, such as:

- Local service: `service-areas/`, `jobs/`, `estimates/`, `reviews/`, `photos/`
- Coach/consultant: `audience/`, `clients/`, `curriculum/`, `workshops/`, `sales/`
- Agency: `clients/`, `case-studies/`, `proposals/`, `deliverables/`, `reporting/`
- Creator/education: `curriculum/`, `lessons/`, `community/`, `launches/`
- Ecommerce: `products/`, `collections/`, `inventory/`, `creative/`, `campaigns/`
- SaaS/software: `product/`, `features/`, `users/`, `roadmap/`, `docs/`
- Healthcare/wellness: `services/`, `compliance/`, `referrals/`, `scheduling/`
- Nonprofit/community: `mission/`, `programs/`, `donors/`, `volunteers/`, `grants/`

## Project workspace

Your active work lives beside the Brain in `projects/`.

Each project should have:

```text
projects/[project-name]/
  brief.md
  tasks.md
  assets/
  notes/
  outputs/
```

Agents should read the relevant project brief before doing project work.

## How AI should use this Brain

Before giving business, marketing, sales, content, operations, or project advice, the AI should:

1. Read this `_index.md`.
2. Read 2-5 relevant Brain pages.
3. Read the relevant `projects/[project]/brief.md` if working on a project.
4. Ask a focused question if a key fact is missing.
5. Avoid inventing proof, pricing, claims, testimonials, metrics, policies, or customer facts.
6. Save confirmed durable decisions in `decisions/decision-log.md`.

## How you should use this Brain

Add pages naturally. Use wiki-links like:

```markdown
[[business/about]]
[[customers/ideal-customer]]
[[offers/main-offer]]
```

Obsidian makes those links clickable. AI agents can read the same files even when Obsidian is not installed.

See `_schema.md` for page conventions.
