#!/usr/bin/env bash
set -euo pipefail

root="${CLAUDE_PROJECT_DIR:-$(cd "$(dirname "$0")/../.." && pwd)}"
cd "$root"

apartments=$(find . -mindepth 1 -maxdepth 1 -type d -not -name '.*' | wc -l)
photos=$(find . -type f -name '*.jpg' | wc -l)

echo "Репозиторий photos: ${apartments} квартир, ${photos} фотографий."
