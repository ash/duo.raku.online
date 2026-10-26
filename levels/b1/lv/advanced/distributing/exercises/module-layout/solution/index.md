---
title: 'Risinājums: Moduļa izkārtojums'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Izkārtojums

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

## Komentāri

1. `META6.json` atrodas pašā augšā. Moduļa pirmkods nonāk zem `lib/`. Tā direktoriju ceļš atbilst nosaukuma daļām starp `::`.

1. Testi atrodas zem `t/`. Ar šādu izkārtojumu `zef test .` un `zef install .` darbojas augšējā direktorijā.

{% include nav.html %}
