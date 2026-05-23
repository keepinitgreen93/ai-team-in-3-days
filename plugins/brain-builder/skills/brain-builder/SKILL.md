---
name: brain-builder
description: Adaptive Company Brain Builder. Walks a business owner through setting up an AI-ready Company Brain in Obsidian, a local folder, or a headless/server environment. Use when the user is starting Day 1 Lesson 2 of AI Team in 3 Days, says "set up my brain", "build my company brain", "build my second brain", "install obsidian", "scaffold my knowledge base", "make this work with Hermes/OpenClaw/Claude Code/Codex/Cursor", or when a new AI Employee needs a shared knowledge base to reference.
---

# Adaptive Company Brain Builder Skill

You are guiding the business owner through setting up their **Company Brain** — a markdown wiki every AI Employee can reference forever.

This is based on Andrej Karpathy's LLM wiki pattern: the business creates durable markdown knowledge once, then agents read and maintain it instead of making the owner re-explain the business every session.

The Brain must be:

- **Adaptive** — the folder structure changes based on the user's business model.
- **Agent-agnostic** — works with Hermes, OpenClaw, Claude Code, Codex, Anti-Gravity, Cursor, and similar agent tools.
- **Obsidian-friendly** — easy for humans to browse on desktop/mobile.
- **Headless-ready** — usable from Railway, servers, containers, and CLI-only agent runtimes.
- **Business-owner simple** — no jargon before the owner understands the outcome.

## Your job

1. Identify the user's computer/runtime setup.
2. Identify which AI agent/runtime they plan to use.
3. Identify their business model and active projects.
4. Pick a local + optional headless storage pattern.
5. Scaffold the base Company Brain plus adaptive business-specific folders.
6. Scaffold project folders based on their current business priorities.
7. Copy `_index.md` and `_schema.md`, then customize them for the business.
8. Teach wiki-link basics.
9. Save the Brain path, agent runtime, sync method, and project folder path in `context/resources.md`.
10. Confirm everything works before they move to Chief of Staff and the diagnostic.

DO NOT run the 12-question business diagnostic here. Brain Builder creates the adaptive structure. The Chief of Staff `diagnostic` skill populates the Brain with business-specific content after this foundation exists.

## Step 1: Explain the promise

Say something like:

> "Before your AI employee can sound like you, organize your work, or remember your business, it needs a Company Brain. We'll set up the folder system your AI will read from. It works in Obsidian for you, and it also works in headless tools like Railway because it is just markdown files."

Then continue.

## Step 2: Runtime and device discovery

Ask one question at a time unless the user asks for a fast setup.

### 2A. Ask what computer/editor they use

Ask:

> "What are you setting this up on first — Mac, Windows, Linux, or phone/tablet only?"

Branch based on answer:

- **Mac** → Read `references/obsidian-install-mac.md`, walk through it.
- **Windows** → Read `references/obsidian-install-windows.md`, walk through it.
- **Linux** → Use the Mac/Linux shell commands and mention Obsidian AppImage/Snap if they want the GUI.
- **Mobile-only** → Read `references/obsidian-mobile-fallback.md`. Explain that any text editor works, but desktop setup is smoother for the first build.

### 2B. Ask which AI agent/runtime they use

Ask:

> "Which AI agent are you planning to use with this Brain first? Hermes, OpenClaw, Claude Code, Codex, Anti-Gravity, Cursor, or something else?"

Notes:

- If they say **Clot Code**, treat it as **Claude Code** unless they correct you.
- If they say **Hermes**, default to a persistent workspace path and a `Company Brain/` folder that the Hermes profile can read.
- If they say **OpenClaw**, default to a project repo/workspace folder that OpenClaw can mount/read.
- If they say **Claude Code**, default to a local project folder with `CLAUDE.md`, `.claude/skills/`, and `Company Brain/` or `brain/` nearby.
- If they say **Codex**, **Cursor**, or **Anti-Gravity**, keep it simple: local repo/folder + markdown brain + instructions file the tool can read.
- If they are unsure, default to **Obsidian + local project folder now**, with optional Git sync later.

### 2C. Ask if they need headless/server use

Ask:

> "Will this Brain only live on your computer, or do you also want an AI agent to read it from a headless environment like Railway, a VPS, or a container?"

Explain:

- Obsidian is the human browser/editor.
- Railway/headless agents do not need Obsidian installed.
- The shared source is the markdown folder.
- Best pattern: local Obsidian vault + Git/private repo sync + headless checkout/mount.
- Alternative pattern: local folder + zipped upload/manual copy for simple users.

## Step 3: Business model discovery

Ask:

> "What kind of business is this for? Pick the closest: local service, coach/consultant, agency, creator/education, ecommerce/product brand, SaaS/software, healthcare/wellness, nonprofit/community, or other."

Then ask:

> "What are 1-3 active projects you already know this Brain should organize? Examples: website refresh, content calendar, lead follow-up, client onboarding, product launch, course build, review generation."

Use these answers to adapt the folder structure. Do not overcomplicate it. The owner should recognize their business in the folders immediately.

## Step 4: Pick the Brain and project locations

Suggest defaults based on environment.

### Local-first default

Mac/Linux:

```bash
~/company-brain
~/company-projects
```

Windows:

```powershell
$env:USERPROFILE\company-brain
$env:USERPROFILE\company-projects
```

### Repo/project default

If they are using Claude Code, Cursor, Codex, OpenClaw, or a project repo, suggest:

```text
[project-root]/Company Brain/
[project-root]/projects/
```

### Hermes/Railway default

If they are using Hermes or Railway, explain:

```text
Local human editing:
  ~/company-brain or an Obsidian vault

Headless agent access:
  /data/workspace/[business-slug]/Company Brain
  /data/workspace/[business-slug]/projects
```

The local and headless copies should be synced through Git, a private repo, Drive/Dropbox, or the user's deployment workflow. Railway does not need Obsidian. It just needs the markdown files.

Wait for the user to choose or accept your default.

## Step 5: Scaffold the base Company Brain

Create these base folders for every business:

```text
Company Brain/
  business/
  offers/
  customers/
  voice/
  content/
  processes/
  people/
  tools/
  decisions/
  sources/
projects/
```

Mac/Linux command:

```bash
mkdir -p "Company Brain"/{business,offers,customers,voice,content,processes,people,tools,decisions,sources} projects
```

Windows PowerShell command:

```powershell
$brain = "Company Brain"
$projects = "projects"
foreach ($folder in @("business","offers","customers","voice","content","processes","people","tools","decisions","sources")) {
    New-Item -ItemType Directory -Path "$brain\$folder" -Force | Out-Null
}
New-Item -ItemType Directory -Path $projects -Force | Out-Null
```

Then copy this skill's templates into the Brain root:

- `templates/_index.md` → `Company Brain/_index.md`
- `templates/_schema.md` → `Company Brain/_schema.md`

Customize `_index.md` after creating adaptive folders so it lists the final structure.

If the user wants a faster CLI scaffold, use the packaged script:

```bash
./scripts/adaptive-company-brain.sh \
  --root ./my-workspace \
  --business-type local-service \
  --runtime hermes \
  --projects "website refresh,lead follow-up"
```

Supported `--business-type` values include `local-service`, `coach`, `agency`, `creator`, `ecommerce`, `saas`, `healthcare`, `nonprofit`, and `other`. Supported `--runtime` values are free-form, but common values are `hermes`, `openclaw`, `claude-code`, `codex`, `anti-gravity`, and `cursor`.

## Step 6: Add adaptive business folders

Use the business model answer to add folders. Keep the base folders too.

### Local service business

Add:

```text
service-areas/
jobs/
estimates/
reviews/
photos/
lead-follow-up/
seasonal-campaigns/
```

Common projects:

```text
projects/website-refresh
projects/google-business-profile
projects/review-generation
projects/lead-follow-up-system
projects/seasonal-campaign
```

### Coach / consultant

Add:

```text
audience/
clients/
curriculum/
sales/
testimonials/
workshops/
community/
```

Common projects:

```text
projects/lead-magnet
projects/workshop
projects/email-sequence
projects/sales-page
projects/community-launch
```

### Agency

Add:

```text
clients/
case-studies/
proposals/
deliverables/
campaigns/
reporting/
fulfillment/
```

Common projects:

```text
projects/client-onboarding
projects/proposal-system
projects/content-engine
projects/reporting-system
```

### Creator / education business

Add:

```text
audience/
curriculum/
lessons/
community/
content-series/
lead-magnets/
launches/
```

Common projects:

```text
projects/course-build
projects/content-calendar
projects/community-launch
projects/workshop-launch
```

### Ecommerce / product brand

Add:

```text
products/
collections/
reviews/
inventory/
competitors/
creative/
campaigns/
customer-support/
```

Common projects:

```text
projects/product-launch
projects/abandoned-cart-flow
projects/ugc-campaign
projects/holiday-promo
```

### SaaS / software

Add:

```text
product/
features/
users/
roadmap/
support/
changelog/
competitors/
docs/
```

Common projects:

```text
projects/onboarding-flow
projects/docs-refresh
projects/feature-launch
projects/support-system
```

### Healthcare / wellness

Add:

```text
services/
patients-or-clients/
compliance/
education/
referrals/
reviews/
scheduling/
```

Common projects:

```text
projects/patient-onboarding
projects/referral-system
projects/education-content
projects/review-generation
```

### Nonprofit / community

Add:

```text
mission/
programs/
donors/
volunteers/
events/
stories/
grants/
partners/
```

Common projects:

```text
projects/donor-campaign
projects/grant-pipeline
projects/volunteer-onboarding
projects/event-promo
```

### Other / hybrid

Ask:

> "What are the 5-8 categories you naturally organize this business around?"

Create folders from their answer using lowercase kebab-case.

## Step 7: Create starter pages

Create starter markdown pages that match their business type. At minimum:

```text
Company Brain/business/about.md
Company Brain/business/goals.md
Company Brain/business/boundaries.md
Company Brain/voice/brand-voice.md
Company Brain/offers/main-offer.md
Company Brain/customers/ideal-customer.md
Company Brain/processes/repeatable-workflows.md
Company Brain/tools/tool-stack.md
Company Brain/decisions/decision-log.md
Company Brain/sources/source-inbox.md
```

Each page should have frontmatter and short prompts, not fake facts.

Example starter page content:

```markdown
---
title: About the Business
type: business
created: YYYY-MM-DD
last_updated: YYYY-MM-DD
status: draft
related:
  - "[[customers/ideal-customer]]"
  - "[[offers/main-offer]]"
tags:
  - business
---

# About the Business

## What we do

[Write the plain-language version here.]

## Who we help

[Describe the customer.]

## Why it matters

[Describe the result the customer wants.]
```

Do not invent business details. If the owner has not answered yet, leave prompts in brackets.

## Step 8: Create project folders

For each active project the user named, create:

```text
projects/[project-slug]/
  brief.md
  tasks.md
  assets/
  notes/
  outputs/
```

`brief.md` should include:

```markdown
---
title: [Project Name] Brief
status: draft
created: YYYY-MM-DD
related:
  - "../Company Brain/business/about.md"
---

# [Project Name] Brief

## Goal
[What this project should accomplish.]

## Why it matters
[Business outcome.]

## Inputs
[Links, assets, notes, or sources.]

## Outputs
[What should be produced.]

## Approval rules
[What the AI can do on its own vs what needs approval.]
```

## Step 9: Agent-specific instruction file

Create or update the instruction file appropriate to their runtime.

- **Hermes**: create `AGENTS.md` or a Shadow/Hermes project note that points to `Company Brain/_index.md` and says to read relevant pages before work.
- **OpenClaw**: create `AGENTS.md` in the project root with the same Brain-read rule.
- **Claude Code**: create or update `CLAUDE.md` in the project root.
- **Codex**: create or update `AGENTS.md`.
- **Cursor**: create or update `.cursor/rules/company-brain.md` or `AGENTS.md`.
- **Anti-Gravity**: create `AGENTS.md` unless the user provides a specific convention.
- **Unknown**: create `AGENTS.md`.

Default instruction block:

```markdown
# Company Brain Rules

Before making business, marketing, content, sales, or operations recommendations:

1. Read `Company Brain/_index.md`.
2. Read 2-5 relevant pages from `Company Brain/`.
3. If the answer depends on current project work, read the relevant `projects/[project]/brief.md` and `tasks.md`.
4. Do not invent customer proof, metrics, testimonials, prices, policies, or facts.
5. If something is missing, ask one focused question or add a clearly marked placeholder.
6. Save durable decisions back to `Company Brain/decisions/decision-log.md` when the owner confirms them.
```

## Step 10: Obsidian setup

Tell the user:

> "Open Obsidian. Click 'Open folder as vault.' Choose your `Company Brain` folder. You should see `_index.md`, `_schema.md`, and the folders we created for your business."

Wait for confirmation if interactive.

Teach wiki-links:

```markdown
[[business/about]]
[[customers/ideal-customer]]
[[offers/main-offer]]
```

Explain:

> "You can browse the Brain in Obsidian, but your AI agent reads the same markdown files from the project folder or server. Obsidian is the human interface. Markdown is the source of truth."

## Step 11: Headless/Railway setup guidance

If the user needs Railway/headless access, recommend one of these patterns.

### Best pattern: private Git repo sync

1. Create a private repo for the business workspace.
2. Commit `Company Brain/`, `projects/`, and `AGENTS.md` or `CLAUDE.md`.
3. Clone the repo into the headless workspace.
4. Configure the agent to read from that path.
5. Pull latest changes before important agent work.
6. Push approved Brain updates back when appropriate.

### Simple pattern: manual upload/copy

Use this when the business owner is not technical yet:

1. Keep the Brain locally.
2. Zip it when needed.
3. Upload or copy it into the headless agent workspace.
4. Treat the local copy as the human source of truth until Git sync is set up.

Do not tell them Railway needs Obsidian. It does not.

## Step 12: Update context/resources.md

In the Digital Employee or Chief of Staff template's `context/resources.md`, record:

```markdown
## Company Brain

- **Human editing path:** [local/Obsidian path]
- **Agent runtime:** [Hermes/OpenClaw/Claude Code/Codex/Anti-Gravity/Cursor/Other]
- **Headless path:** [Railway/server path if any]
- **Sync method:** [Git/private repo/manual copy/Drive/Dropbox/none yet]
- **Index:** [path to Company Brain/_index.md]

## Project workspace

- **Projects path:** [path to projects/]
- **Active projects:** [comma-separated list]
```

## Step 13: Confirmation

Tell the user:

> "Your adaptive Company Brain is ready. It has the base structure every AI employee needs, plus folders and project spaces based on your business. Next, your Chief of Staff can run the diagnostic and start filling it with your real business context."

Then ask:

> "Do you want to install your Chief of Staff now, or do you want to review the Brain structure first?"

## Recovery

Common issues + fixes:

- **Obsidian won't open the folder** → Check folder permissions. On Mac, try opening from Finder first. On Windows, avoid special characters in the path.
- **Railway/headless cannot see the Brain** → Verify the Brain was committed, mounted, or copied into the server workspace. Obsidian is irrelevant in headless mode.
- **Agent sounds generic** → Check whether it is actually reading `Company Brain/_index.md` and relevant pages before answering.
- **Folder structure feels too generic** → Ask for business model and active projects again. Add 5-8 specific folders that match the business.
- **User uses a different agent runtime** → Use `AGENTS.md` as the safe fallback convention.
- **User wants one Brain for multiple brands** → Recommend one parent workspace with one `Company Brain/` per brand to avoid voice and customer contamination.

---

## Install

```bash
# One-time: register the marketplace
claude plugin marketplace add keepinitgreen93/ai-team-in-3-days

# Per lesson: install this skill (Day 1 Lesson 2)
claude plugin install brain-builder@ai-team-in-3-days
```

## Used in

**Day 1, Lesson 2** of AI Team in 3 Days — *Build Your Adaptive Company Brain*. Walks the student through Obsidian/local/headless setup, asks their agent runtime, scaffolds a business-specific Company Brain, creates project folders, and prepares the workspace for Chief of Staff.

## Source

Source of truth lives in the AI Business Growth Academy course materials. This repo mirrors the active version. Updates ship via tagged releases.
