---
title: 'Oplossing: De indeling van een module'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. De `META6.json` staat bovenaan. De broncode van de module komt onder `lib/`. Het pad van de map komt overeen met de delen van de naam. In de naam scheidt `::` deze delen.

1. De tests staan in `t/`. Gebruik deze indeling. Dan werken `zef test .` en `zef install .` in de bovenste map.

{% include nav.html %}
