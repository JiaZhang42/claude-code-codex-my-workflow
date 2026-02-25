#!/usr/bin/env bash
# Render Quarto seminar decks and sync presentation artifacts.
#
# Usage:
#   ./scripts/sync_presentations.sh                # render/sync all decks
#   ./scripts/sync_presentations.sh DeckPrefix     # render/sync matching deck

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
QUARTO_DIR="$REPO_ROOT/presentations/quarto"
BEAMER_DIR="$REPO_ROOT/presentations/beamer"
FIGURES_DIR="$REPO_ROOT/assets/figures"
PUBLISH_DIR="$REPO_ROOT/presentations/published"

mkdir -p "$PUBLISH_DIR/slides" "$PUBLISH_DIR/figures" "$PUBLISH_DIR/code"

cd "$QUARTO_DIR"

if [ "${1:-}" != "" ]; then
  deck="$1"
  matched_qmd=$(ls "${deck}"*.qmd 2>/dev/null | head -1 || true)
  if [ -z "$matched_qmd" ]; then
    echo "No Quarto deck found matching: $deck"
    exit 1
  fi
  quarto render "$matched_qmd"
else
  for qmd in *.qmd; do
    [ -f "$qmd" ] || continue
    [[ "$qmd" == *"_backup"* ]] && continue
    quarto render "$qmd" || echo "Warning: failed to render $qmd"
  done
fi

for html in *.html; do
  [ -f "$html" ] || continue
  cp "$html" "$PUBLISH_DIR/slides/"
  files_dir="${html%.html}_files"
  if [ -d "$files_dir" ]; then
    rm -rf "$PUBLISH_DIR/slides/$files_dir"
    cp -r "$files_dir" "$PUBLISH_DIR/slides/"
  fi
done

for pdf in "$BEAMER_DIR"/*.pdf; do
  [ -f "$pdf" ] || continue
  cp "$pdf" "$PUBLISH_DIR/slides/"
done

for rscript in "$REPO_ROOT/scripts/R"/*.R; do
  [ -f "$rscript" ] || continue
  cp "$rscript" "$PUBLISH_DIR/code/"
done

if command -v rsync >/dev/null 2>&1; then
  rsync -av --delete "$FIGURES_DIR/" "$PUBLISH_DIR/figures/"
else
  rm -rf "$PUBLISH_DIR/figures"
  cp -r "$FIGURES_DIR" "$PUBLISH_DIR/figures"
fi

echo "Presentation sync complete: $PUBLISH_DIR"
