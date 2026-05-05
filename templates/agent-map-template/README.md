# Agent Map Template

Pre-built `.excalidraw` agent map for the AI Team in 3 Days course (Day 3 Lesson 3 — *Build Your Agent Map*). Open it on excalidraw.com (free web app, no install) and fill in your team.

## What's in this folder

| File | What it is |
|---|---|
| `agent-map.excalidraw` | The template source — TAM-branded structure with empty placeholders for your name, your two Specialists, and a "Future hire" slot. **This is the primary editable deliverable.** |
| `agent-map.png` | Rendered preview (1220×727, 79 KB) — view at-a-glance or use as a reference graphic |
| `agent-map.svg` | Vector preview — embed in slides, scale to any size without quality loss |

## How to use it

You don't need to install Excalidraw. Three options:

### Option 1: Edit on excalidraw.com (recommended)

1. Open `agent-map.excalidraw` in any text editor — it's just JSON
2. Copy the entire content
3. Go to https://excalidraw.com (free web app, no account needed)
4. From the menu (☰ top-left): **Open** → paste the JSON, OR drag-drop the file into the canvas
5. Fill in your Employees:
   - Top box: Replace *"[Your name + business]"* with your name + business
   - Specialist #1 + #2 boxes: Replace *"[Role]"* with the role Chief of Staff hired (e.g., *Content Designer*, *Web Designer*) and *"[First task]"* with the first deliverable they produced (e.g., *5 vegan recipes + 1 workshop outline*)
   - Future hire box: Optionally add the Specialist you plan to hire next month (e.g., *Email Specialist*, *Social Media Manager*)
6. Save / Export — use **Menu → Export** for PNG or SVG. Export as `.excalidraw` to keep it editable.

### Option 2: Print and fill by hand

Open `agent-map.excalidraw` on excalidraw.com (Option 1, steps 1-4), then **File → Export → PDF** or screenshot. Print and fill in with a pen. Stick it on your wall as a reminder of who's on your team.

### Option 3: View as reference only

Open on excalidraw.com just to see the structure. Don't fill in. Use it as a visual aid while you're hiring.

## What the map shows

```
                    Commander in Chief (You)
                              |
                       Chief of Staff
                       /     |      \
              Specialist #1  S #2   [Future hire]
```

- **Tier 1 — Commander in Chief:** You, the business owner. Solid TAM Indigo border, white fill.
- **Tier 2 — Chief of Staff:** Your Day 1 hire. The orchestrator that diagnoses your business and hires every other Employee. Solid TAM Indigo border, lavender fill.
- **Tier 3 — Specialists:** The 2 Employees Chief of Staff hired for you on Days 2 and 3, plus a placeholder for future hires (monthly Library drops). Solid Soft Indigo borders for active hires, dashed for future.

## Brand colors used

| Role | Hex |
|---|---|
| Primary border (Commander, Chief of Staff, Tier 1-2 connectors) | TAM Indigo `#6366F1` |
| Secondary border (Specialists, future-hire dashed line) | TAM Soft Indigo `#818CF8` |
| Chief of Staff fill | TAM Lavender `#C7D2FE` |
| Background | TAM Ghost White `#F8FAFC` |
| Text | TAM Charcoal `#1E1B4B` |

## Render pipeline

The PNG + SVG were rendered from the `.excalidraw` source via the local `mcp_excalidraw` canvas server using a headless Chromium client (puppeteer). The render script is reproducible — re-running produces identical output. To regenerate:

```bash
# Start the canvas server (one-time per session)
cd ~/dev/mcp_excalidraw && PORT=3000 npm run canvas

# In a new terminal, run the render script
cd ~/dev/agent-map-render && node render.mjs
```

This pipeline is internal-only — students never need to run it. The committed PNG + SVG in this folder are the canonical previews.
