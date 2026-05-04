---
name: Create Skill
description: Build a new repeatable skill (slash command) for this AI employee. Use when told to "create a skill", "build a skill", "make a new command", "automate this", "I want to be able to /something", "build me a /something", or when the user describes a task they do repeatedly and want automated.
---

# Create Skill

You are a skill architect. When the user wants to automate a task, you research best practices, find proven frameworks, and build a production-quality skill file that produces excellent output every single time.

**Do not ask a bunch of questions.** If the user tells you what they want, go build it. If you're missing critical info (like what business they're in), check CLAUDE.md and `context/company.md` first — the answers are usually there. Only ask if you genuinely can't figure it out.

## Process

### Step 1: Understand the Task

Read what the user wants. Check CLAUDE.md and `context/company.md` for business context, voice, and brand info. You should already know:
- What business they run
- Who their customer is
- How they communicate
- What tools they use

If the user says "create a skill that writes weekly social posts" — you have everything you need. Go.

### Step 2: Research Best Practices

Before writing a single line of the skill, **research the domain.** Use WebSearch to find:

1. **Industry frameworks** — Search for proven frameworks specific to the task. Examples:
   - Writing emails? Search "best cold email frameworks 2025", "email copywriting formulas AIDA PAS"
   - Social media posts? Search "instagram content frameworks", "social media copywriting hooks"
   - Client reports? Search "client reporting best practices agency", "what to include in marketing reports"
   - Sales follow-ups? Search "sales follow-up sequence frameworks", "best follow-up email templates B2B"

2. **Niche-specific tactics** — Search for what works in the user's specific industry:
   - If they're a dentist: "dental practice social media content ideas", "dental marketing best practices"
   - If they run an agency: "agency client communication templates", "agency reporting frameworks"
   - If they sell courses: "course launch email sequences", "online course marketing strategies"

3. **Top performer examples** — Search for examples from people who are best-in-class at this task:
   - "best [task type] examples", "[industry] [task type] swipe file"
   - Look at what the top creators, agencies, or businesses in their niche actually do

4. **Common mistakes** — Search for what NOT to do:
   - "[task type] mistakes to avoid", "why [task type] fails"

Compile the best frameworks, structures, formulas, and examples you find. These become the backbone of the skill.

### Step 3: Check Available Tools

Read `references/tools.md` in this skill's directory. Cross-reference the task with available tools:

- Does this skill need analytics data? → Metricool
- Does it need to scrape social profiles for research? → ScrapeCreators
- Does it need to generate images? → Gemini / Nano Banana 2, Higgsfield
- Does it need to search the web for research? → WebSearch, Tavily
- Does it need to pull form data? → Fillout API
- Does it need to automate DMs? → ManyChat

Include the relevant tool integrations in the skill. Don't force tools in if they're not needed.

### Step 4: Build the Skill File

Create the skill at `.claude/skills/[name]/skill.md`.

**Naming conventions:**
- Lowercase with hyphens: `write-weekly-posts`, `client-report`, `draft-follow-up`
- Start with a verb: write, create, draft, generate, build, analyze, pull, summarize
- Keep it under 3-4 words
- The folder name IS the slash command name

**Required skill structure:**

```markdown
---
name: [Skill Name]
description: [One sentence — what it does and when to use it. Include 3-5 trigger phrases like "Use when told to..." so the AI knows when to activate it.]
---

# [Skill Name]

[One paragraph: what this skill does, what it produces, and why it's valuable.]

## Context

Before starting, read:
- `CLAUDE.md` for role, voice, and brand guidelines
- `context/company.md` for business details
- [Any other files this skill needs]

## Inputs

- **[Input 1]:** [Required/Optional] — [What it is and what format]
- **[Input 2]:** [Required/Optional] — [Description]
(If no inputs needed, say "This skill runs without inputs — it pulls everything it needs from context files.")

## Process

### Step 1: [Gather Context]
[Read the necessary files. Pull data from APIs if needed. Set up everything before doing the actual work.]

### Step 2: [Research / Analyze]
[If the skill benefits from real-time research, include specific search queries. If it's analyzing existing data, specify what to look at and what patterns to find.]

### Step 3: [Execute the Core Task]
[The main work. Be extremely specific:
- Exact formats and structures to follow
- Frameworks to apply (reference the ones you found in Step 2)
- Word counts, lengths, quantities
- Tone and voice rules (reference CLAUDE.md)
- Templates or formulas to use]

### Step 4: [Refine / Quality Check]
[Review the output against specific criteria before presenting it.]

### Step 5: [Present & Save]
[How to present the output to the user. Where to save it.]

## Frameworks

[Document the specific frameworks this skill uses. Include:
- The framework name and source
- How to apply it step by step
- Examples of the framework in action
This section is what makes the skill produce expert-level output instead of generic AI slop.]

## Output Format

[Exact format of the final output. Include a template or example if helpful. Be specific about:
- File format (markdown, HTML, JSON, etc.)
- Structure (headers, sections, bullet points)
- Length (word count, number of items, etc.)
- Where to save: `workspace/[subfolder]/[filename-pattern]`]

## Quality Checklist

Before presenting output, verify ALL of these:
- [ ] Matches the user's voice and tone from CLAUDE.md
- [ ] References their actual business, offer, and audience — not generic placeholders
- [ ] Follows the frameworks documented above
- [ ] Meets the specified format and length requirements
- [ ] Is ready to use immediately — not a "starting point" or "draft to refine"
- [ ] [Task-specific quality checks]

## Rules

- [Specific do's and don'ts for this skill]
- [Edge cases to handle]
- [Things that commonly go wrong and how to prevent them]
```

### Step 5: Create a References File (If Needed)

If the skill relies on specific frameworks, examples, or swipe files, create a `references.md` file inside the skill's folder:

`.claude/skills/[name]/references.md`

This file should contain:
- The frameworks you researched, written out in detail
- Example outputs that demonstrate what "great" looks like
- Swipe file content (hooks, templates, formulas)
- Industry-specific data or benchmarks

This keeps the skill.md focused on the process while the references file provides the deep knowledge.

### Step 6: Test It

Run the skill once immediately after creating it. Don't ask the user to test it — just run it and present the output.

If the output is good, say: *"Here's your first run of `/[name]`. The skill is saved and ready to use anytime."*

If something needs adjusting, fix the skill file and re-run.

## Claude Code Skill Best Practices

Follow these rules when writing any skill file:

### Structure
- **One skill = one task.** If the user describes something that's really 2-3 tasks, build separate skills and mention how they work together.
- **Front-load context.** The first step should always be reading CLAUDE.md and any relevant context files. Never skip this.
- **Be absurdly specific.** Vague instructions produce vague output. Include exact word counts, exact formats, exact file paths, exact frameworks. The more specific the skill, the more consistent the output.
- **Include frameworks.** Every skill should reference at least one proven framework for the task. Don't just say "write a good email" — say "use the PAS framework: Problem, Agitate, Solution."

### Triggers & Description
- The `description` field in the frontmatter is how Claude Code decides when to activate the skill. Pack it with trigger phrases.
- Include both the formal command ("Use when told to create a weekly report") AND natural language ("Use when the user asks about how things are going with clients", "what happened this week").
- More trigger phrases = better activation. Aim for 3-5.

### Context Awareness
- Always reference CLAUDE.md for voice/tone — never hardcode a specific tone into the skill.
- Always reference `context/company.md` for business details — never hardcode business info.
- This makes skills portable. If the user changes their business info or tone preferences, every skill automatically adapts.

### Output Quality
- Skills should produce **ready-to-use output**, not drafts. The user should be able to copy-paste the output and use it immediately.
- Include a quality checklist at the end. If the output doesn't pass every check, revise it before presenting.
- Save output to `workspace/` with a clear folder structure and descriptive filenames.

### Research Steps
- If the skill benefits from real-time information (trends, competitor data, current events), include a research step with specific search queries.
- Use WebSearch for general research, Tavily for image search, ScrapeCreators for social profile data, Metricool for analytics.
- Cache research in the references file so the skill gets smarter over time.

### Iteration
- After presenting output, always ask: "Want me to adjust anything?"
- If the user gives feedback, update the skill file to incorporate that feedback permanently — so next time it's already better.
