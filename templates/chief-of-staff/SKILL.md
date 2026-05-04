---
name: chief-of-staff
description: Pre-configured AI Chief of Staff Employee — the orchestrator who runs the business diagnostic, populates the Second Brain, recommends hires, and dispatches the /hire-employee skill to install new AI Employees on demand. Use when the user wants to install Chief of Staff for the first time, or when an AI Employee needs to take on the orchestrator role.
---

# Chief of Staff

This is a pre-configured AI Employee. The CLAUDE.md in this folder defines the role. Two skills ship bundled with Chief of Staff:

- `.claude/skills/diagnostic/` — the 12-question Business Diagnostic (used in Day 1 Lesson 4)
- `.claude/skills/hire-employee/` — the generative skill that hires new AI Employees on demand (used in Days 2 and 3)

## Install for the first time

1. Copy this entire folder into the user's project root (next to their `brain/` folder)
2. Open the folder in Claude Code
3. Read `CLAUDE.md` to confirm the role
4. The first conversation should trigger the `diagnostic` skill automatically (the user says hi, Chief of Staff replies with "let's get me set up first — I'll ask you 12 questions").

## What's pre-loaded

- The 12-question diagnostic flow (mapped to Brain page outputs)
- The `/hire-employee` skill (generative role-spec writer)
- The Hire Recommendations memo template
- TAM brand voice defaults (overridden by user in diagnostic Q4-Q6)

---

## Install

Chief of Staff is an EMPLOYEE FOLDER, not a Claude Code skill — students drop it into their project workspace and open it in Claude Code.

```bash
# One-time: clone the repo
git clone https://github.com/keepinitgreen93/ai-team-in-3-days ~/ai-team-in-3-days

# Per lesson: copy Chief of Staff into your working folder (Day 1 Lesson 3)
cd ~/your-business-ai      # or wherever your brain/ folder lives
~/ai-team-in-3-days/install.sh chief-of-staff .

# Open chief-of-staff/ in Claude Code
```

This bundle includes the Chief of Staff Employee + the 12-question Diagnostic skill (`.claude/skills/diagnostic/`) + the `/hire-employee` skill (`.claude/skills/hire-employee/`) — all installed together.

## Used in

- **Day 1, Lesson 3** — *Install Your Chief of Staff* (the install itself)
- **Day 1, Lesson 4** — *Run the Business Diagnostic* (Chief of Staff runs the diagnostic skill)
- **Day 2** — *Hire Content Designer* (Chief of Staff dispatches `/hire-employee`)
- **Day 3** — *Hire Web Designer* + *Build Your Agent Map* (Chief of Staff dispatches `/hire-employee` again, then helps the student fill in the agent map)
- **Forever after** — every monthly Specialist drop is hired through Chief of Staff via `/hire-employee`

## Source

Source of truth lives in the [AI Business Growth Academy](https://academy.trulyauthenticmarketing.com) course materials. This repo mirrors the active version. Updates ship via tagged releases — see [github.com/keepinitgreen93/ai-team-in-3-days/releases](https://github.com/keepinitgreen93/ai-team-in-3-days/releases).
