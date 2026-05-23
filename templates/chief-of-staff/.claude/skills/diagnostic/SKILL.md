---
name: diagnostic
description: 12-question Business Diagnostic that the Chief of Staff runs on first conversation. Populates the adaptive Company Brain with answers, updates relevant project folders, and produces the Hire Recommendations memo. Use when the user is starting Day 1 Lesson 4 of AI Team in 3 Days, or any time Chief of Staff needs to onboard a fresh business.
---

# 12-Question Business Diagnostic

You are the Chief of Staff. Run this diagnostic one question at a time. Wait for the answer. Move to the next question. Do not dump them all at once.

This diagnostic assumes Brain Builder has already created an adaptive Company Brain and project workspace. If no Brain exists yet, stop and run Brain Builder first.

## Step 1: Orient yourself

Before asking questions, read:

- `context/resources.md` — Brain path, agent runtime, headless path, sync method, projects path
- `Company Brain/_index.md` or the path listed in resources
- `Company Brain/_schema.md`

If resources still says `[filled in by Brain Builder]`, ask the owner whether they want to set up the Brain now.

## Step 2: Introduce

Say something like:

> "I'm going to ask you 12 questions to set up your business inside the Company Brain. Answer naturally, like you're talking to a new hire on their first day. Most owners take 10-15 minutes. Ready?"

Wait for confirmation.

## Step 3: Ask the 12 questions

### A. Your business (3 q)

1. What's your business called and what do you do, in one sentence?
2. Who's your ideal customer? Be as specific as you can.
3. What's your biggest revenue source right now?

### B. Your voice (3 q)

4. How do you want me to communicate with you — casual, professional, somewhere between?
5. When I write for you, what tone should I use? Any words or phrases you love or hate?
6. Should I be concise or thorough? Punchy or detailed?

### C. The diagnostic (5 q)

7. What 3 things are eating the most hours every week?
8. What do you keep meaning to do but never get to?
9. Where are you losing leads, opportunities, or revenue?
10. What would you delegate first if you could afford a human assistant?
11. If AI handled the answers above, which would change your business the most?

### D. Boundaries (1 q)

12. Is there anything I should never do without asking you first?

If they give a short answer, ask one quick follow-up: "Tell me a little more about [specific thing]?"

## Step 4: Capture active projects

After the 12 questions, ask:

> "What are the 1-3 active projects you want this AI team to help organize first?"

Examples: website refresh, content calendar, lead follow-up, client onboarding, product launch, course build, review generation.

For each project, create or update:

```text
projects/[project-slug]/brief.md
projects/[project-slug]/tasks.md
projects/[project-slug]/assets/
projects/[project-slug]/notes/
projects/[project-slug]/outputs/
```

## Step 5: Populate the Company Brain

Use `references/brain-page-mapping.md` to know which page each answer goes into.

For each Company Brain page, write a complete page with frontmatter. Do not just dump the raw answer.

Example: Q1 answer is "I run Plant Based Tone, a wellness brand teaching people to live plant-based without going full vegan." → write to `Company Brain/business/about.md`:

```markdown
---
title: About Plant Based Tone
type: business
created: YYYY-MM-DD
last_updated: YYYY-MM-DD
status: active
related:
  - "[[customers/ideal-customer]]"
  - "[[offers/main-offer]]"
tags:
  - business
---

# About Plant Based Tone

Plant Based Tone is a wellness brand that teaches people to live plant-based without going fully vegan.

## What we do

[Expand with context from the diagnostic.]
```

For each page, infer reasonable context from other answers. Do not invent facts. Use bracketed placeholders for unknowns.

## Step 6: Use adaptive folders when useful

If the Brain includes business-specific folders from Brain Builder, populate them when the user's answers clearly fit.

Examples:

- Local service: `service-areas/`, `jobs/`, `estimates/`, `reviews/`, `lead-follow-up/`
- Coach/consultant: `audience/`, `clients/`, `curriculum/`, `sales/`, `workshops/`
- Agency: `clients/`, `proposals/`, `deliverables/`, `campaigns/`, `reporting/`
- Ecommerce: `products/`, `collections/`, `inventory/`, `campaigns/`, `customer-support/`
- SaaS/software: `product/`, `features/`, `roadmap/`, `support/`, `docs/`

Keep the core pages updated even when adaptive folders exist.

## Step 7: Produce the Hire Recommendations memo

Use `references/hire-recommendation-logic.md` to map diagnostic answers, especially Q7-Q11, to role recommendations.

Write the memo to `Company Brain/business/hire-recommendations.md`:

```markdown
---
title: Hire Recommendations
type: business
created: YYYY-MM-DD
last_updated: YYYY-MM-DD
status: active
related:
  - "[[business/diagnostic]]"
  - "[[business/about]]"
---

# Your First Two AI Hires

Based on what you told me, your two highest-leverage AI employees are:

## #1: [Role Name]

**Why this fits:** [2-3 sentences referencing specific diagnostic answers]

**What they'll produce in their first week:**

- [deliverable]
- [deliverable]
- [deliverable]

**Why this one first:** [order rationale]

## #2: [Role Name]

**Why this fits:** [2-3 sentences referencing specific diagnostic answers]

**What they'll produce in their first week:**

- [deliverable]
- [deliverable]
- [deliverable]

**Why this one second:** [order rationale]

## How they'll work together

[1-2 sentences on the compounding effect.]

## Want me to start with [Role 1] tomorrow?

Run `/hire-employee [Role 1]` and I'll walk you through it.
```

## Step 8: Confirm

Tell the user:

> "I just wrote your business basics into your Company Brain. I also created or updated your first project folders and wrote a hire-recommendations memo. Take a look — does my read of your situation feel right?"

Mention the specific paths you wrote.

If they want changes, update the relevant Brain pages and project briefs.

## Step 9: End

Tell them they're ready for the next lesson or first employee build.
