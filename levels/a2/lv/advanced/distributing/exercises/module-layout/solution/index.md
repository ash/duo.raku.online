---
title: 'Risinājums: Moduļa izkārtojums'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `META6.json` ir pašā augšā. Moduļa pirmkods atrodas zem `lib/`. Tā direktoriju ceļš atbilst nosaukuma daļām. Nosaukumā `::` atdala šīs daļas.

1. Testi ir direktorijā `t/`. Izmantojiet šo izkārtojumu. Tad `zef test .` un `zef install .` darbojas augšējā direktorijā.

{% include nav.html %}
