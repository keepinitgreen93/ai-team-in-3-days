#!/usr/bin/env bash
set -euo pipefail

# Adaptive Company Brain scaffold
# Usage:
#   ./adaptive-company-brain.sh --root ./my-workspace --business-type local-service --runtime hermes --projects "website refresh,lead follow-up"

ROOT="$PWD"
BUSINESS_TYPE="other"
RUNTIME="unknown"
PROJECTS=""
BRAIN_NAME="Company Brain"

slugify() {
  printf '%s' "$1" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-+//; s/-+$//'
}

today() {
  date +%F
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --root) ROOT="$2"; shift 2 ;;
    --business-type) BUSINESS_TYPE="$(slugify "$2")"; shift 2 ;;
    --runtime) RUNTIME="$2"; shift 2 ;;
    --projects) PROJECTS="$2"; shift 2 ;;
    --brain-name) BRAIN_NAME="$2"; shift 2 ;;
    -h|--help)
      echo "Usage: $0 --root ./workspace --business-type local-service --runtime hermes --projects 'website refresh,lead follow-up'"
      exit 0
      ;;
    *) echo "Unknown argument: $1" >&2; exit 1 ;;
  esac
done

BRAIN="$ROOT/$BRAIN_NAME"
PROJECT_ROOT="$ROOT/projects"
DATE="$(today)"

mkdir -p "$BRAIN" "$PROJECT_ROOT"

base_folders=(business offers customers voice content processes people tools decisions sources)
for folder in "${base_folders[@]}"; do
  mkdir -p "$BRAIN/$folder"
done

case "$BUSINESS_TYPE" in
  local-service)
    adaptive=(service-areas jobs estimates reviews photos lead-follow-up seasonal-campaigns)
    defaults=(website-refresh google-business-profile review-generation lead-follow-up-system seasonal-campaign)
    ;;
  coach|consultant|coach-consultant)
    adaptive=(audience clients curriculum sales testimonials workshops community)
    defaults=(lead-magnet workshop email-sequence sales-page community-launch)
    ;;
  agency)
    adaptive=(clients case-studies proposals deliverables campaigns reporting fulfillment)
    defaults=(client-onboarding proposal-system content-engine reporting-system)
    ;;
  creator|education|creator-education)
    adaptive=(audience curriculum lessons community content-series lead-magnets launches)
    defaults=(course-build content-calendar community-launch workshop-launch)
    ;;
  ecommerce|product-brand|ecommerce-product-brand)
    adaptive=(products collections reviews inventory competitors creative campaigns customer-support)
    defaults=(product-launch abandoned-cart-flow ugc-campaign holiday-promo)
    ;;
  saas|software|saas-software)
    adaptive=(product features users roadmap support changelog competitors docs)
    defaults=(onboarding-flow docs-refresh feature-launch support-system)
    ;;
  healthcare|wellness|healthcare-wellness)
    adaptive=(services patients-or-clients compliance education referrals reviews scheduling)
    defaults=(patient-onboarding referral-system education-content review-generation)
    ;;
  nonprofit|community|nonprofit-community)
    adaptive=(mission programs donors volunteers events stories grants partners)
    defaults=(donor-campaign grant-pipeline volunteer-onboarding event-promo)
    ;;
  *)
    adaptive=()
    defaults=()
    ;;
esac

for folder in "${adaptive[@]}"; do
  mkdir -p "$BRAIN/$folder"
done

starter_page() {
  local path="$1"
  local title="$2"
  local type="$3"
  local body="$4"
  if [[ ! -f "$path" ]]; then
    cat > "$path" <<EOF
---
title: $title
type: $type
created: $DATE
last_updated: $DATE
status: draft
related: []
tags:
  - $(slugify "$type")
---

# $title

$body
EOF
  fi
}

starter_page "$BRAIN/business/about.md" "About the Business" "business" "## What we do\n\n[Write the plain-language version here.]\n\n## Who we help\n\n[Describe the customer.]\n\n## Why it matters\n\n[Describe the result the customer wants.]"
starter_page "$BRAIN/business/goals.md" "Business Goals" "business" "## Current goals\n\n[List the most important goals.]\n\n## Current constraints\n\n[List budget, time, team, or operational constraints.]"
starter_page "$BRAIN/business/boundaries.md" "AI Boundaries" "business" "## Approval required\n\n[List what AI must never do without approval.]\n\n## Hard nos\n\n[List claims, offers, topics, or actions to avoid.]"
starter_page "$BRAIN/voice/brand-voice.md" "Brand Voice" "voice" "## Voice\n\n[Describe how the business should sound.]\n\n## Use these words\n\n- [word]\n\n## Avoid these words\n\n- [word]"
starter_page "$BRAIN/offers/main-offer.md" "Main Offer" "offer" "## Promise\n\n[What result does this offer help create?]\n\n## Deliverables\n\n- [deliverable]\n\n## Price\n\n[Add pricing or mark unknown.]"
starter_page "$BRAIN/customers/ideal-customer.md" "Ideal Customer" "customer" "## Who they are\n\n[Describe the ideal customer.]\n\n## Pain points\n\n- [pain]\n\n## Buying triggers\n\n- [trigger]"
starter_page "$BRAIN/processes/repeatable-workflows.md" "Repeatable Workflows" "process" "## Workflows AI can help with\n\n- [workflow]\n\n## Current manual steps\n\n[Describe current process.]"
starter_page "$BRAIN/tools/tool-stack.md" "Tool Stack" "tool" "## Current tools\n\n- [tool]: [what it does]\n\n## Missing or planned tools\n\n- [tool]"
starter_page "$BRAIN/decisions/decision-log.md" "Decision Log" "decision" "## $DATE\n\n- Company Brain scaffold created."
starter_page "$BRAIN/sources/source-inbox.md" "Source Inbox" "source" "## Unprocessed sources\n\nAdd links, notes, uploads, transcripts, or raw ideas here before the Chief of Staff processes them."

cat > "$BRAIN/_index.md" <<EOF
# Company Brain Index

Business type: $BUSINESS_TYPE  
Agent runtime: $RUNTIME  
Created: $DATE

## Start here

- [[business/about]] — what the business does and why it exists
- [[business/goals]] — current goals and priorities
- [[business/boundaries]] — approval rules and hard nos
- [[voice/brand-voice]] — how the business sounds
- [[offers/main-offer]] — core offer and deliverables
- [[customers/ideal-customer]] — who the business serves
- [[processes/repeatable-workflows]] — repeatable work AI can help with
- [[tools/tool-stack]] — software and systems
- [[decisions/decision-log]] — confirmed decisions
- [[sources/source-inbox]] — unprocessed source material

## Base folders

$(printf -- '- %s/\n' "${base_folders[@]}")

## Adaptive folders

$(if [[ ${#adaptive[@]} -gt 0 ]]; then printf -- '- %s/\n' "${adaptive[@]}"; else echo '- [Add adaptive folders after business discovery]'; fi)

## Projects

See ../projects/ for active project folders.
EOF

cat > "$BRAIN/_schema.md" <<'EOF'
# Company Brain Schema

Use lowercase kebab-case filenames. Every page should have frontmatter:

```markdown
---
title: Page Title
type: business | offer | customer | voice | content | process | person | tool | decision | source | project | industry
created: YYYY-MM-DD
last_updated: YYYY-MM-DD
status: draft | active | archived
related:
  - "[[related-page]]"
tags:
  - tag
---
```

AI agents should read `_index.md` first, then relevant pages, then project briefs.
Do not invent proof, testimonials, metrics, prices, customer facts, or policies.
EOF

IFS=',' read -ra provided_projects <<< "$PROJECTS"
all_projects=()
for p in "${provided_projects[@]}"; do
  s="$(slugify "$p")"
  [[ -n "$s" ]] && all_projects+=("$s")
done
if [[ ${#all_projects[@]} -eq 0 && ${#defaults[@]} -gt 0 ]]; then
  all_projects=("${defaults[@]}")
fi

for project in "${all_projects[@]}"; do
  mkdir -p "$PROJECT_ROOT/$project/assets" "$PROJECT_ROOT/$project/notes" "$PROJECT_ROOT/$project/outputs"
  cat > "$PROJECT_ROOT/$project/brief.md" <<EOF
---
title: ${project//-/ } Brief
status: draft
created: $DATE
related:
  - "../$BRAIN_NAME/business/about.md"
---

# ${project//-/ } Brief

## Goal

[What this project should accomplish.]

## Why it matters

[Business outcome.]

## Inputs

[Links, assets, notes, or sources.]

## Outputs

[What should be produced.]

## Approval rules

[What AI can do on its own vs what needs approval.]
EOF
  cat > "$PROJECT_ROOT/$project/tasks.md" <<EOF
# ${project//-/ } Tasks

## Backlog

- [ ] Define next task

## In progress

## Waiting on owner

## Complete
EOF
done

instruction_file="$ROOT/AGENTS.md"
case "$(slugify "$RUNTIME")" in
  claude-code|clot-code)
    instruction_file="$ROOT/CLAUDE.md"
    ;;
  cursor)
    mkdir -p "$ROOT/.cursor/rules"
    instruction_file="$ROOT/.cursor/rules/company-brain.md"
    ;;
esac

cat > "$instruction_file" <<EOF
# Company Brain Rules

Before making business, marketing, content, sales, or operations recommendations:

1. Read "$BRAIN_NAME/_index.md".
2. Read 2-5 relevant pages from "$BRAIN_NAME/".
3. If working on a project, read the relevant "projects/[project]/brief.md" and "tasks.md".
4. Do not invent customer proof, metrics, testimonials, prices, policies, or facts.
5. If something is missing, ask one focused question or add a clearly marked placeholder.
6. Save durable confirmed decisions back to "$BRAIN_NAME/decisions/decision-log.md".
EOF

echo "Adaptive Company Brain created: $BRAIN"
echo "Projects created: $PROJECT_ROOT"
echo "Instruction file created: $instruction_file"
