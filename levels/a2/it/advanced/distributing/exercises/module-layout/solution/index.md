---
title: 'Solution: Il layout del modulo'
translations_gpt: La soluzione di 'La struttura del modulo'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Struttura

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

## Commenti

1. Il `META6.json` sta in cima. Il codice sorgente del modulo va sotto `lib/`. Il percorso delle sue directory corrisponde alle parti del nome. Nel nome, `::` separa queste parti.

1. I test sono in `t/`. Usa questa struttura. Allora `zef test .` e `zef install .` funzionano nella directory principale.

{% include nav.html %}
