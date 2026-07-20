# ARC-AGI-3 Tools and External Repositories

This directory contains tools and examples for working with ARC-AGI-3.

Several official ARC Prize repositories are used by this project, but they are intentionally **not included as Git submodules** and are not committed into this repository.

After cloning this repository, run:

```bash
./tools_arc3/checkout_arc_repos.sh
```

The script will clone or update:

```text
tools_arc3/
├── ARC-AGI/
├── ARC-AGI-3-Agents/
├── arc-agi-3-benchmarking/
└── ARC-AGI-3-Kaggle-Starter/
```

## Initial setup

From the repository root:

```bash
chmod +x tools_arc3/checkout_arc_repos.sh
./tools_arc3/checkout_arc_repos.sh
```

You can run the same script again later to update the repositories with `git pull --ff-only`.

## Important

Do not add these downloaded repositories to the parent repository.

They are excluded through `.gitignore` because each directory is an independent Git repository maintained by the ARC Prize team.

This avoids:

- Git submodules
- Nested-repository warnings
- Accidentally committing external repository contents
- Pinning users to one external commit

## Manual checkout

```bash
cd tools_arc3

git clone https://github.com/arcprize/ARC-AGI.git
git clone https://github.com/arcprize/ARC-AGI-3-Agents.git
git clone https://github.com/arcprize/arc-agi-3-benchmarking.git
git clone https://github.com/arcprize/ARC-AGI-3-Kaggle-Starter.git
```
