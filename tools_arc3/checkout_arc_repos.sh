#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

clone_or_update() {
    local repo_url="$1"
    local directory="$2"

    if [[ -d "$directory/.git" ]]; then
        echo "Updating $directory..."
        git -C "$directory" pull --ff-only
    elif [[ -e "$directory" ]]; then
        echo "ERROR: $directory exists but is not a Git repository." >&2
        return 1
    else
        echo "Cloning $directory..."
        git clone "$repo_url" "$directory"
    fi
}

clone_or_update https://github.com/arcprize/ARC-AGI.git ARC-AGI
clone_or_update https://github.com/arcprize/ARC-AGI-3-Agents.git ARC-AGI-3-Agents
clone_or_update https://github.com/arcprize/arc-agi-3-benchmarking.git arc-agi-3-benchmarking
clone_or_update https://github.com/arcprize/ARC-AGI-3-Kaggle-Starter.git ARC-AGI-3-Kaggle-Starter

echo
echo "ARC Prize repositories are ready in:"
echo "  $SCRIPT_DIR"
