---
name: hire-employee
description: Generative skill that hires a new AI Employee on demand. Reads the Brain to inherit business context, asks role-specific clarifying questions, then writes the new Employee's CLAUDE.md, role brief, voice rules, starter skill list, and folder structure. Use when the user says "hire me a [role]", "hire a [role]", "I need a [role]", "/hire-employee [role]", or any time Chief of Staff is dispatched to install a new Employee.
---

# /hire-employee Skill

The generative magic. The user says "hire me a Content Designer." You produce a fully-configured Content Designer Employee in their voice, ready for first task.

## Step 1: Identify the role

Parse the user's request to determine the role. Examples:

- "hire me a content designer" → Content Designer
- "I need someone to handle my social media" → Social Media Manager
- "set up a web designer" → Web Designer
- "hire a meal plan creator" → Content Designer (specialty: meal planning)

If the role doesn't map cleanly to a known type, ask:

> "Sounds like you want a [closest-match role]. Is that right, or did you have something different in mind?"

## Step 2: Read the Brain

Read these pages from the user's Brain (paths are relative to their Brain location, stored in `context/resources.md`):

- `brain/business/about.md` — what their business is
- `brain/customers/ica.md` — who they serve
- `brain/business/voice.md` — how this Employee should write
- `brain/business/diagnostic.md` — what's eating their time / biggest bottlenecks
- `brain/business/boundaries.md` — things to NEVER do

This is what the new Employee inherits. The new Employee's CLAUDE.md will reference all of these.

## Step 3: Ask role-specific clarifying questions

Read `references/role-clarifying-questions.md` for the question pattern by role type. Ask 3-5 questions specific to this role. Examples for Content Designer:

1. "What kinds of content do you want this Employee creating? (Blog posts, recipes, lead magnets, social captions, all of the above)"
2. "Do you have a content calendar / publishing cadence in mind?"
3. "Any topics or themes that are off-limits?"
4. "What's the FIRST piece of content you want them to produce as a sanity check?"

## Step 4: Pick a starter template (if it exists)

Check `references/role-templates/` for a pre-built template for this role. If one exists, USE IT as the starting point and customize. If not, generate from scratch following the template structure.

## Step 5: Generate the new Employee's folder

Create the new Employee folder in the user's project root. Folder name = role name in kebab-case (e.g., `content-designer/`).

Generate these files inside:

### CLAUDE.md
```markdown
# [Role Name] — [Business Name from Brain]

[2-3 sentence role brief — what they do, who they serve, what their unique angle is. Pulled from Brain context + clarifying answers.]

## Core tasks

[3-5 bullets — specific tasks pulled from the user's diagnostic + clarifying answers]

## Boundaries

- [List of things this Employee should NEVER do — pulled from brain/business/boundaries.md PLUS role-specific guardrails from clarifying answers]

## Voice & Tone

[Pulled directly from brain/business/voice.md — the same voice the user told Chief of Staff during the diagnostic]

## How I work

- Always read `brain/_index.md` and the relevant Brain pages on every conversation start
- Use `we` / `you` pronouns. 7th-grade reading level. Short sentences.
- Save all work output to my workspace folder (`workspace/`)
- When unsure, ask before assuming
- Reference Chief of Staff at `chief-of-staff/CLAUDE.md` when escalation is needed
```

### context/resources.md
```markdown
# Resources

## Brain location

- **Path:** [pulled from chief-of-staff/context/resources.md]

## Tools I use

| Tool | What it's for | URL |
|------|--------------|-----|
| [Filled in by clarifying questions] | | |
```

### .claude/skills/[2-3 starter skills]/

Pre-load 2-3 starter skills based on role type. See `references/role-templates/[role-name].md` for the suggested starters per role.

For Content Designer, that might be:
- `write-blog-post/` — skill for producing a brand-voice blog post
- `write-lead-magnet/` — skill for producing a lead magnet (PDF, checklist, ebook)
- `write-social-caption/` — skill for producing platform-native captions

For Web Designer, that might be:
- `homepage-section/` — skill for designing a homepage section
- `email-popup/` — skill for designing an email signup popup
- `landing-page/` — skill for designing a single-page landing

### workspace/.gitkeep

Empty file. The new Employee's outputs land here.

## Step 6: Verify the install

Tell the user:

> "Your [Role Name] is installed at `[role-name]/`. They've read your Brain and they're ready to work. Want to give them their first task now?"

If yes, hand off to the new Employee for first task.

## Step 7: End

Update Chief of Staff's `context/resources.md` with the new Employee's folder path so Chief of Staff knows about them for future references:

```markdown
## My team

| Employee | Folder | Hired |
|---|---|---|
| Chief of Staff | `chief-of-staff/` | Day 1 |
| [Role Name] | `[role-name]/` | [today's date] |
```
