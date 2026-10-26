---
title: 'Solutio: Dispositio moduli'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Dispositio

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

## Commentarii

1. `META6.json` in summo est. Fons moduli sub `lib/` collocatur. Via directorii eius partibus nominis inter `::` respondet.

1. Probationes sub `t/` sunt. Hac dispositione `zef test .` et `zef install .` in summo directorio operantur.

{% include nav.html %}
