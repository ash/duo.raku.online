---
title: 'Oplossing: Een META6-bestand'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

`META6.json`:

```json
{
    "name": "Greet::Simple",
    "version": "0.0.1",
    "description": "A simple greeting module",
    "authors": [ "Your Name" ],
    "license": "Artistic-2.0",
    "depends": [ "JSON::Fast" ],
    "provides": {
        "Greet::Simple": "lib/Greet/Simple.rakumod"
    }
}
```

🦋 Je kunt de broncode vinden in het bestand [META6.json](https://github.com/ash/raku-course/blob/master/exercises/advanced/distributing/a-meta6-file/META6.json).

## Opmerkingen

1. `provides` koppelt de naam van de module aan zijn bestand. De code van de module staat in dit bestand. In de naam scheidt `::` de delen. Het pad van de map komt overeen met deze delen.

1. `depends` noemt de andere distributies die deze distributie nodig heeft. Hier heeft het maar één item: `"JSON::Fast"`. Misschien installeert iemand `Greet::Simple`. Dan installeren de tools eerst `JSON::Fast`. Een lege array betekent dat de distributie geen andere distributies nodig heeft.

{% include nav.html %}
