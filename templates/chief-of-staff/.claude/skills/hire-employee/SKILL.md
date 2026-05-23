---
name: hire-employee
description: Generative skill that hires a new AI Employee on demand. Reads the adaptive Company Brain to inherit business context, asks role-specific clarifying questions, then writes the new Employee's CLAUDE.md, role brief, voice rules, starter skill list, and folder structure. Use when the user says "hire me a [role]", "hire a [role]", "I need a [role]", "/hire-employee [role]", or any time Chief of Staff is dispatched to install a new Employee.
---

# /hire-employee Skill

The generative magic. The user says "hire me a Content Designer." You produce a fully configured Content Designer Employee in their voice, ready for a first task.

## Step 1: Identify the role

Parse the user's request to determine the role. Examples:

- "hire me a content designer" → Content Designer
- "I need someone to handle my social media" → Social Media Manager
- "set up a web designer" → Web Designer
- "hire a meal plan creator" → Content Designer (specialty: meal planning)

If the role doesn't map cleanly to a known type, ask:

> "Sounds like you want a [closest-match role]. Is that right, or did you have something different in mind?"

## Step 2: Read the Company Brain

Read `context/resources.md` first to find:

- Company Brain path
- agent runtime
- headless/server path if any
- sync method
- project workspace path
- active projects

Then read these pages from the user's Company Brain:

- `Company Brain/_index.md` — the map of the Brain
- `Company Brain/business/about.md` — what their business is
- `Company Brain/customers/ideal-customer.md` — who they serve
- `Company Brain/voice/brand-voice.md` — how this Employee should write
- `Company Brain/business/diagnostic.md` — what's eating their time and biggest bottlenecks
- `Company Brain/business/boundaries.md` — things to never do without approval
- Any adaptive folder that matches the role, such as `Company Brain/content/`, `Company Brain/service-areas/`, `Company Brain/curriculum/`, `Company Brain/products/`, `Company Brain/clients/`, or `Company Brain/roadmap/`

If working on a specific project, also read:

- `projects/[project]/brief.md`
- `projects/[project]/tasks.md`

This is what the new Employee inherits. The new Employee's CLAUDE.md should reference the Company Brain and relevant projects.

## Step 3: Ask role-specific clarifying questions

Read `references/role-clarifying-questions.md` for the question pattern by role type. Ask 3-5 questions specific to this role.

Examples for Content Designer:

1. "What kinds of content do you want this Employee creating? Blog posts, recipes, lead magnets, social captions, or all of the above?"
2. "Do you have a content calendar or publishing cadence in mind?"
3. "Any topics or themes that are off-limits?"
4. "What's the first piece of content you want them to produce as a sanity check?"

## Step 4: Pick a starter template if it exists

Check `references/role-templates/` for a prebuilt template for this role. If one exists, use it as the starting point and customize. If not, generate from scratch following the template structure.

## Step 5: Generate the new Employee's folder

Create the new Employee folder in the user's project root. Folder name = role name in kebab-case, e.g. `content-designer/`.

Generate these files inside:

### CLAUDE.md

```markdown
# [Role Name] — [Business Name from Company Brain]

[2-3 sentence role brief — what they do, who they serve, and what their unique angle is. Pull from Company Brain context + clarifying answers.]

## Core tasks

[3-5 bullets — specific tasks pulled from the diagnostic, project briefs, and clarifying answers]

## Boundaries

- [List things this Employee should never do without approval — pulled from Company Brain/business/boundaries.md plus role-specific guardrails]

## Voice & Tone

[Pulled directly from Company Brain/voice/brand-voice.md — the same voice the owner gave Chief of Staff during the diagnostic]

## How I work

- Always read `context/resources.md`, `Company Brain/_index.md`, and relevant Company Brain pages before important work.
- If working on a project, read the relevant `projects/[project]/brief.md` and `tasks.md`.
- Use `we` / `you` pronouns. 7th-grade reading level. Short sentences.
- Save all work output to my workspace folder (`workspace/`).
- When unsure, ask before assuming.
- Escalate to Chief of Staff at `chief-of-staff/CLAUDE.md` when priorities, approvals, or cross-role coordination are unclear.
```

### context/resources.md

```markdown
# Resources

## Company Brain

- **Human editing path:** [pulled from chief-of-staff/context/resources.md]
- **Agent runtime:** [Hermes / OpenClaw / Claude Code / Codex / Anti-Gravity / Cursor / Other, pulled from resources]
- **Headless path:** [Railway/server/container path if any]
- **Sync method:** [Git/private repo/manual copy/Drive/Dropbox/none yet]
- **Index:** [path to Company Brain/_index.md]

## Project workspace

- **Projects path:** [pulled from resources]
- **Active projects:** [pulled from resources]

## Tools I use

| Tool | What it's for | URL / Path |
|------|--------------|------------|
| [Filled in by clarifying questions] | | |
```

### .claude/skills/[2-3 starter skills]/

Pre-load 2-3 starter skills based on role type. See `references/role-templates/[role-name].md` for suggested starters per role.

For Content Designer, that might be:

- `write-blog-post/` — skill for producing a brand-voice blog post
- `write-lead-magnet/` — skill for producing a lead magnet, PDF, checklist, or ebook
- `write-social-caption/` — skill for producing platform-native captions

For Web Designer, that might be:

- `homepage-section/` — skill for designing a homepage section
- `email-popup/` — skill for designing an email signup popup
- `landing-page/` — skill for designing a single-page landing

### workspace/.gitkeep

Empty file. The new Employee's outputs land here.

## Step 6: Verify the install

Tell the user:

> "Your [Role Name] is installed at `[role-name]/`. They've read your Company Brain and they're ready to work. Want to give them their first task now?"

If yes, hand off to the new Employee for the first task.

## Step 7: End

Update Chief of Staff's `context/resources.md` with the new Employee's folder path so Chief of Staff knows about them for future references:

```markdown
## Team

| Employee | Folder | Hired |
|---|---|---|
| Chief of Staff | `chief-of-staff/` | Day 1 |
| [Role Name] | `[role-name]/` | [today's date] |
```
