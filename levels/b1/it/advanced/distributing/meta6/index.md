---
title: Il file META6
translations_gpt: Il file META6
---

{% include menu.html %}

Un singolo file nella directory principale descrive una distribuzione: `META6.json`. È un normale file JSON. Indica agli strumenti il nome e la versione della distribuzione. Dice anche cosa fornisce la distribuzione e da cosa dipende:

```json
{
    "name": "Maths::Simple",
    "version": "0.0.1",
    "description": "Simple maths helpers",
    "authors": [ "Your Name" ],
    "license": "Artistic-2.0",
    "depends": [],
    "provides": {
        "Maths::Simple": "lib/Maths/Simple.rakumod"
    }
}
```

Le due chiavi più importanti sono `provides` e `depends`. `provides` collega ogni nome di modulo al file che contiene il suo codice. `depends` elenca le altre distribuzioni di cui questa ha bisogno.

Il file si trova in cima a una struttura di directory standard:

```
Maths-Simple/
├── META6.json
├── README.md
├── lib/
│   └── Maths/
│       └── Simple.rakumod
└── t/
    └── 01-basic.rakutest
```

Il codice del modulo si trova sotto `lib/`. Il percorso delle directory corrisponde alle parti del nome separate da `::`. Per esempio, `Maths::Simple` va in `lib/Maths/Simple.rakumod`. I test si trovano sotto `t/`. Con questa struttura e un `META6.json` corretto, gli strumenti possono compilarla, testarla e installarla.

{% include nav.html %}
