# Brain Schema — How to Add Pages

## Frontmatter

Every page should start with frontmatter (the `---` block at the top):

```markdown
---
title: [Page title]
type: [business | product | customer | content | person | process]
created: 2026-MM-DD
last_updated: 2026-MM-DD
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

## Folder conventions

| Folder | What goes here | Naming pattern |
|---|---|---|
| `business/` | Who you are, what you do, ICA, voice, boundaries, diagnostic | `about.md`, `voice.md`, `diagnostic.md`, `boundaries.md` |
| `products/` | Each offer or product gets its own page | `main-offer.md`, `[product-name].md` |
| `customers/` | Each real customer gets a page; ICA is its own page | `ica.md`, `[customer-first-name].md` |
| `content/` | Drafts, swipe file, recipes (one per file) | `recipes/[recipe-name].md`, `posts/[post-title].md` |
| `people/` | You, team members, key relationships | `[first-name].md` |
| `processes/` | SOPs, workflows, "how I do X" | `[process-name].md` |

## Wiki-links

- `[[business/about]]` → links to `business/about.md`
- `[[customers/ica]]` → links to `customers/ica.md`
- Always use lowercase, kebab-case (`main-offer.md` not `Main Offer.md`)

## When in doubt

Make a page. Wiki-link to it from `_index.md`. Your Chief of Staff will help you organize over time.
