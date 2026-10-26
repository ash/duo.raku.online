---
title: 'Solvo: La modula aranĝo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Aranĝo

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

## Komentoj

1. La `META6.json` estas supre. La fontkodo de la modulo iras sub `lib/`. Ĝia dosieruja vojo kongruas kun la partoj de la nomo. En la nomo, `::` apartigas ĉi tiujn partojn.

1. La testoj estas en `t/`. Uzu ĉi tiun aranĝon. Tiam `zef test .` kaj `zef install .` funkcias en la supra dosierujo.

{% include nav.html %}
