---
name: brain-builder
description: Walk the user through setting up their Second Brain in Obsidian. Use when the user is starting Day 1 Lesson 2 of AI Team in 3 Days, when they say "set up my brain", "build my second brain", "install obsidian", "scaffold my knowledge base", or any time a new AI Employee needs a shared knowledge base to reference. Karpathy-method markdown wiki onboarding.
---

# Brain Builder Skill

You are guiding the business owner through setting up their Second Brain — a markdown wiki that every AI Employee will reference forever. Karpathy's method, Obsidian as the runtime.

## Your job

1. Detect their OS and walk them through Obsidian install
2. Pick a location for their Brain folder
3. Scaffold the empty `brain/` folder structure (6 subfolders + `_index.md` + `_schema.md`)
4. Teach them wiki-link basics
5. Confirm everything works before they move to Lesson 3 (installing Chief of Staff)

DO NOT ask the diagnostic questions here. The Brain is empty after this skill runs. The diagnostic in Lesson 4 populates it.

## Step 1: OS detection

Ask the user: "What computer are you on — Mac, Windows, or do you only have a phone/tablet?"

Branch based on answer:
- **Mac** → Read `references/obsidian-install-mac.md`, walk through it
- **Windows** → Read `references/obsidian-install-windows.md`, walk through it
- **Mobile-only** → Read `references/obsidian-mobile-fallback.md` (any text editor works as a fallback; Obsidian mobile is also free)

## Step 2: Pick the Brain location

Ask: "Where do you want your Brain to live? Most people put it inside their main work folder. I'll suggest `~/business-brain/` (Mac) or `C:\Users\YourName\business-brain\` (Windows). You can pick anywhere though — just remember the path."

Wait for their answer. Save the path — it goes in `context/resources.md` at the end.

## Step 3: Scaffold the empty Brain folder

Run (Mac/Linux):
```bash
mkdir -p ~/business-brain/{business,products,customers,content,people,processes}
```

Run (Windows PowerShell):
```powershell
$base = "$env:USERPROFILE\business-brain"
foreach ($folder in @("business","products","customers","content","people","processes")) {
    New-Item -ItemType Directory -Path "$base\$folder" -Force | Out-Null
}
```

Then copy the templates from this skill's `templates/` folder into the user's brain folder:

- `_index.md` → user's `brain/_index.md`
- `_schema.md` → user's `brain/_schema.md`

## Step 4: Open the Brain in Obsidian

Tell the user: "Open Obsidian. Click 'Open folder as vault.' Navigate to your Brain folder. You should see the 6 subfolders + the `_index.md` page."

Wait for confirmation.

## Step 5: Teach wiki-links

Show them this example. In `_index.md`, the line:

```markdown
- [[business/about]] — what your business is
```

Renders as a clickable link. When they click it, Obsidian opens `business/about.md` (creating it if it doesn't exist).

Tell them: "You don't need to memorize this. The diagnostic in the next lesson will create most of these pages for you. But knowing wiki-links work means YOU can add pages later (e.g., a new client, a new SOP) and they'll auto-link."

## Step 6: Update context/resources.md

In the Digital Employee Template's `context/resources.md`, add the line:

```markdown
- **Brain location:** [user's path here]
```

So Chief of Staff (and all future Employees) know where to read.

## Step 7: Confirmation

Tell the user: "Your Brain is ready. It's empty for now — that's expected. In the next lesson (Lesson 3), you'll install your Chief of Staff. In Lesson 4, the diagnostic will populate the Brain with answers about your business. By end of Day 1, your Brain will know who you are, who your customer is, what you sell, and what's eating your time."

Confirm they're ready to move on. End the skill.

## Recovery

Common issues + fixes:

- **Obsidian won't open the folder** → Check folder permissions; on Mac, try opening from Finder first; on Windows, ensure the path doesn't have special characters
- **Folder structure didn't get created** → Re-run Step 3's commands; check if there's a typo in the path
- **User on Linux** → Same commands as Mac; Obsidian Linux install is via AppImage or Snap, see `references/obsidian-install-mac.md` Linux note
- **User wants to skip Obsidian and use VS Code/Notepad** → Fine. Any text editor works. The Brain is just markdown files. Update `context/resources.md` with whatever editor they're using.

---

## Install

```bash
# One-time: register the marketplace
claude plugin marketplace add keepinitgreen93/ai-team-in-3-days

# Per lesson: install this skill (Day 1 Lesson 2)
claude plugin install brain-builder@ai-team-in-3-days
```

## Used in

**Day 1, Lesson 2** of AI Team in 3 Days — *Build Your Second Brain*. Walks the student through Obsidian install, scaffolds the empty `brain/` folder structure, teaches wiki-links. The diagnostic in Lesson 4 populates the Brain.

## Source

Source of truth lives in the [AI Business Growth Academy](https://academy.trulyauthenticmarketing.com) course materials. This repo mirrors the active version. Updates ship via tagged releases — see [github.com/keepinitgreen93/ai-team-in-3-days/releases](https://github.com/keepinitgreen93/ai-team-in-3-days/releases).
