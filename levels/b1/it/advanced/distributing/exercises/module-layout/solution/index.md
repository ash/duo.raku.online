---
title: 'Solution: Il layout del modulo'
translations_gpt: La soluzione di 'La struttura del modulo'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il `META6.json` si trova in cima. Il codice sorgente del modulo va sotto `lib/`. Il percorso delle sue directory corrisponde alle parti del nome separate da `::`.

1. I test stanno sotto `t/`. Con questa struttura, `zef test .` e `zef install .` funzionano nella directory principale.

{% include nav.html %}
