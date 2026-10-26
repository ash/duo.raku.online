---
title: 'Solutio: Fasciculus META6'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. `provides` nomen moduli cum archivo eius coniungit. Codex moduli in hoc archivo est. In nomine `::` partes separat. Via directorii his partibus respondet.

1. `depends` alias distributiones enumerat quas haec requirit. Hic unum tantum elementum habet: `"JSON::Fast"`. Fortasse aliquis `Greet::Simple` installat. Tum instrumenta prius `JSON::Fast` installant. Series vacua hoc significat: distributio nullas alias distributiones requirit.

{% include nav.html %}
