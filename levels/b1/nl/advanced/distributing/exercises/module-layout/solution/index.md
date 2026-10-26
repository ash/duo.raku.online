---
title: 'Oplossing: De indeling van een module'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Indeling

```
Greet-Simple/
├── META6.json
├── README.md
├── lib/
│   └── Greet/
│       └── Simple.rakumod
└── t/
    └── 01-basic.rakutest
```

## Opmerkingen

1. De `META6.json` staat bovenaan. De broncode van de module komt onder `lib/`. Het pad van de map komt overeen met de delen van de naam tussen de `::`.

1. De tests staan onder `t/`. Met deze indeling werken `zef test .` en `zef install .` in de bovenste map.

{% include nav.html %}
