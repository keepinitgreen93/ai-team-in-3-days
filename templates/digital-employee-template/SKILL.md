---
name: digital-employee-template
description: Universal self-onboarding starter for any AI Employee. Use when the user wants to install a new AI Employee from scratch — Chief of Staff, a Specialist, or any role. Walks the new agent through 12 questions, then rewrites its own CLAUDE.md based on the answers. Triggers on "new AI employee", "onboard agent", "install employee".
---

# Digital Employee Template

When invoked, this skill points the agent at the existing onboarding flow in `CLAUDE.md` and runs it. The agent's first job is to onboard itself by asking the 12 questions, then rewrite its own CLAUDE.md with a permanent role description.

See `CLAUDE.md` for the full onboarding flow. See `context/company.md` and `context/resources.md` for shared knowledge templates.

## TAM brand defaults (override per-business in Step 2 of onboarding)

- 7th-grade reading level, contractions, "we" / "you" pronouns
- Approved vocab: AI employee, booked appointments, time freedom, done-with-you, partner, real results
- Banned vocab: bot, robot, synergy, leverage, cutting-edge, revolutionary, game-changing
- CTA verbs: Book, Grab, Watch, Try, Join — never "Click here" or "Learn more"
- Proof policy: Real proof only. Never fabricate testimonials or stats.

## Brain reference convention

The new AI Employee should reference the user's Second Brain at `brain/` (or wherever the user's Brain Builder Skill set it up — typically a `brain/` folder in their project root, or an Obsidian vault path stored in `context/resources.md`).

---

## Install

Digital Employee Template is a folder TEMPLATE that `/hire-employee` (running inside Chief of Staff) uses internally to bootstrap new AI Employees. Students don't usually install it directly — Chief of Staff handles it. If you want a copy for reference:

```bash
# One-time: clone the repo (skip if already done)
git clone https://github.com/keepinitgreen93/ai-team-in-3-days ~/ai-team-in-3-days

# Copy the template
~/ai-team-in-3-days/install.sh digital-employee-template ~/wherever
```

## Used in

- **Day 1, Lesson 3** — *Install Your Chief of Staff* (Chief of Staff is built FROM this template)
- **Day 2** — *Hire Content Designer* (the new Content Designer Employee inherits this template via `/hire-employee`)
- **Day 3** — *Hire Web Designer* (same — Web Designer inherits this template)
- **Forever after** — every future hire (every monthly Specialist drop, every custom role) is built from this same universal template

## Source

Source of truth lives in the [AI Business Growth Academy](https://academy.trulyauthenticmarketing.com) course materials. This repo mirrors the active version. Updates ship via tagged releases — see [github.com/keepinitgreen93/ai-team-in-3-days/releases](https://github.com/keepinitgreen93/ai-team-in-3-days/releases).
