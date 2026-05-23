# AI Team in 3 Days

> *Hire your first 3 AI Employees in 3 days. Save 20+ hours every week and let your AI Team bring in your next client.*

This repo is both:
- **A Claude Code plugin marketplace** for the skills (Adaptive Company Brain Builder + future Specialist Library drops).
- **A template repo** for employee folders that students drop into their working project.

Companion to the **AI Team in 3 Days** course inside the [AI Business Growth Academy](https://academy.trulyauthenticmarketing.com). Members work through the 10-lesson course, install these assets just-in-time as the lessons walk you through it, and walk away with a working 3-Employee AI Team.

---

## Install — once

```bash
# Register the marketplace
claude plugin marketplace add keepinitgreen93/ai-team-in-3-days

# Clone the repo for the templates
git clone https://github.com/keepinitgreen93/ai-team-in-3-days ~/ai-team-in-3-days
```

## Install — per lesson

| Lesson | What to install | Command |
|---|---|---|
| Day 1 Lesson 2 | Adaptive Company Brain Builder Skill | `claude plugin install brain-builder@ai-team-in-3-days` |
| Day 1 Lesson 3 | Chief of Staff folder | `~/ai-team-in-3-days/install.sh chief-of-staff ~/your-project-folder` |
| Day 3 Lesson 3 | Agent Map Template | Open `~/ai-team-in-3-days/templates/agent-map-template/agent-map.excalidraw` at [excalidraw.com](https://excalidraw.com) |

The course lessons walk you through these one at a time, **just-in-time**. You don't need to install them all upfront — wait until the lesson tells you to.

---

## Repo structure

| Folder | What it is |
|---|---|
| `plugins/brain-builder/` | Adaptive Company Brain Builder Skill — install via marketplace |
| `plugins/meta-ads-coming-soon/` | Coming Soon stub plugin |
| `plugins/content-coming-soon/` | Coming Soon stub plugin |
| `templates/chief-of-staff/` | Chief of Staff Employee folder template — copy to your project workspace |
| `templates/digital-employee-template/` | Universal AI Employee starter — used internally by `/hire-employee` |
| `templates/agent-map-template/` | Pre-built `.excalidraw` template — open at excalidraw.com |
| `_docs/` | Supporting docs (examples-reference, etc.) |

### Why two install patterns?

- **Skills** (Brain Builder + future drops) are real Claude Code plugins. They install with the standard `claude plugin install` command — clean UX, version-managed by the marketplace.
- **Templates** (Chief of Staff, Digital Employee Template, Agent Map) are folders or files that get dropped into the user's project workspace. Chief of Staff has its own CLAUDE.md, its own context, and nested skills — students open the folder in Claude Code as a workspace. That's a different shape than a Claude Code skill, so it ships as a template you copy with `install.sh`.

---

## Course details

- **Course:** AI Team in 3 Days — 10 lessons across 3 days, ~3.5 hrs total
- **Inside:** [AI Business Growth Academy](https://academy.trulyauthenticmarketing.com) — $97/mo (also accessible to all program members)
- **Demo client:** [Plant Based Tone](https://plantbasedtone.com) — Toni's brand, used as the live demo throughout the course
- **Format:** Pre-recorded lessons + optional monthly live cohort kickoffs

### The 3-day arc

| | Lesson | Output |
|---|---|---|
| **Day 1** | 4 lessons (~80 min) | Chief of Staff installed + populated Second Brain + Hire Recommendations memo |
| **Day 2** | 3 lessons (~60 min) | Hire #2 installed (recommended dynamically) + first real task output (e.g. 5 brand-voice content pieces) |
| **Day 3** | 3 lessons (~70 min) | Hire #3 installed + first real task output (e.g. homepage refresh + landing page) + filled-in Agent Map + upgrade-path road ahead |

---

## Documentation

- [`_docs/examples-reference.md`](./_docs/examples-reference.md) — illustrative list of "what other businesses hired" (NOT a fixed kit)

---

## License

MIT — fork it, use the patterns, build your own AI team.

---

## About

Built by [Truly Authentic Marketing](https://trulyauthenticmarketing.com) for [Product Champ](https://productchamp.com) Academy members.

Questions? Email [chris@trulyauthenticmarketing.com](mailto:chris@trulyauthenticmarketing.com) or join the Academy.
