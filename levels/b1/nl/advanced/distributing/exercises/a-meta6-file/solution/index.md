---
title: 'Oplossing: Een META6-bestand'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `provides` koppelt de modulenaam aan het bestand waarin de code van de module staat. Het pad van de map komt overeen met de delen van de naam tussen de `::`.

1. `depends` noemt de andere distributies die deze nodig heeft. Hier is er maar één item, `"JSON::Fast"`. Als iemand `Greet::Simple` installeert, halen de tools eerst `JSON::Fast` op. Een lege array zou betekenen dat er geen afhankelijkheden zijn.

{% include nav.html %}
