---
title: 'Solutio: Dispositio moduli'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. `META6.json` in summo est. Fons moduli sub `lib/` est. Via directorii eius partibus nominis respondet. In nomine `::` has partes separat.

1. Probationes in `t/` sunt. Hanc dispositionem adhibe. Tum `zef test .` et `zef install .` in summo directorio operantur.

{% include nav.html %}
