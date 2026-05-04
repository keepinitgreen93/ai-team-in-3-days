#!/usr/bin/env bash
# AI Team in 3 Days — template installer
# Usage: ./install.sh chief-of-staff [target-dir]

set -e
TEMPLATE="${1:-help}"
TARGET="${2:-$PWD}"

case "$TEMPLATE" in
  chief-of-staff)
    echo "Installing chief-of-staff/ template into $TARGET ..."
    cp -r "$(dirname "$0")/templates/chief-of-staff" "$TARGET/"
    echo "Done. Open $TARGET/chief-of-staff in Claude Code."
    ;;
  digital-employee-template)
    echo "Installing digital-employee-template/ into $TARGET ..."
    cp -r "$(dirname "$0")/templates/digital-employee-template" "$TARGET/"
    echo "Done."
    ;;
  agent-map-template)
    echo "Copying agent-map.excalidraw to $TARGET ..."
    cp "$(dirname "$0")/templates/agent-map-template/agent-map.excalidraw" "$TARGET/"
    echo "Done. Open the file at https://excalidraw.com (no install needed)."
    ;;
  help|*)
    echo "Usage: ./install.sh <template> [target-dir]"
    echo ""
    echo "Templates:"
    echo "  chief-of-staff           — Chief of Staff Employee folder (Day 1 Lesson 3)"
    echo "  digital-employee-template — Universal AI Employee starter"
    echo "  agent-map-template        — Pre-built .excalidraw template (Day 3 Lesson 3)"
    echo ""
    echo "For skills (Brain Builder etc), use the Claude Code marketplace:"
    echo "  claude plugin marketplace add keepinitgreen93/ai-team-in-3-days"
    echo "  claude plugin install brain-builder@ai-team-in-3-days"
    ;;
esac
