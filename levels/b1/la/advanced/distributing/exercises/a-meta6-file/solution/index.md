---
title: 'Solutio: Fasciculus META6'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

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

🦋 Inveni codicem fontem in archivo [META6.json](https://github.com/ash/raku-course/blob/master/exercises/advanced/distributing/a-meta6-file/META6.json).

## Commentarii

1. `provides` nomen moduli cum archivo coniungit quod codicem eius continet. Via directorii partibus nominis inter `::` respondet.

1. `depends` alias distributiones enumerat quas haec requirit. Hic una tantum notatio est, `"JSON::Fast"`. Cum aliquis `Greet::Simple` installat, instrumenta prius `JSON::Fast` accipient. Series vacua significaret nullas dependentias esse.

{% include nav.html %}
