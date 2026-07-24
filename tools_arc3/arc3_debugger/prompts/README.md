# ARC3 debugger prompts

- `gpt_prompts.json` contains the editable prompt definitions used by GPT analysis.
- Generated game data does not belong here; it remains under `action_trees/<game>/level_<n>/`.
- Override this directory with `ARC3_PROMPTS_ROOT` when necessary.

## Git-friendly multiline format

Prompts in `gpt_prompts.json` are stored as arrays of physical lines:

```json
{
  "combined": [
    "Analyze the current ARC3 state.",
    "",
    "Return exactly one strict JSON object."
  ]
}
```

This makes GitHub diffs line-oriented. The Python loader joins the array with
newline characters before sending it to the model. Legacy single-string prompt
values remain supported and line endings/trailing whitespace are normalized on
load.

