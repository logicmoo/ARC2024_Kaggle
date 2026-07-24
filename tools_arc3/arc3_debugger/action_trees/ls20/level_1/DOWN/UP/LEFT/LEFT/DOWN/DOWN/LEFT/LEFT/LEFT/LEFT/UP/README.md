# `ls20` level `1` — DOWN / UP / LEFT / LEFT / DOWN / DOWN / LEFT / LEFT / LEFT / LEFT / UP

## Navigation

[Level start](../../../../../../../../../../../README.md) · [Parent](../README.md)

### Actions

[`UP`](UP/README.md)

---

- **Full game ID:** `ls20`
- **State:** `NOT_FINISHED`
- **Image hash:** `28857730382b368b`
- **Incoming action:** `ACTION1`

## Image

![ARC3 state](image.png)

## Files

- [image.png](image.png)
- [state.json](state.json)
- [object_registry.pl](../../../../../../../../../../../object_registry.pl) — shared level registry (24 canonical identities)

## Embedded files

*Canonical identities are shared through [`object_registry.pl`](../../../../../../../../../../../object_registry.pl) and are not repeated in every node.*

<details>
<summary><code>state.json</code></summary>

````json
{
  "state": "NOT_FINISHED",
  "level": "1",
  "level_source": "default",
  "next_level_expected": null,
  "observation": {
    "game_id": "ls20-9607627b",
    "state": "NOT_FINISHED",
    "levels_completed": 0,
    "win_levels": 7,
    "action_input": {
      "id": "ACTION1",
      "data": {},
      "reasoning": null
    },
    "guid": "0d3344cb-1e3f-402f-8f0e-a937582f5f1a",
    "full_reset": false,
    "available_actions": [
      1,
      2,
      3,
      4
    ]
  },
  "step_count": 10,
  "game_id": "ls20",
  "game_directory": "ls20",
  "image_hash": "28857730382b368b",
  "incoming_action": "ACTION1",
  "action_directory": "UP",
  "action_data": {},
  "parent_node": "..",
  "action_path": [
    "DOWN",
    "UP",
    "LEFT",
    "LEFT",
    "DOWN",
    "DOWN",
    "LEFT",
    "LEFT",
    "LEFT",
    "LEFT",
    "UP"
  ]
}
````

[Open `state.json`](state.json)

</details>
