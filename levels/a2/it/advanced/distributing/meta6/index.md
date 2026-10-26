---
title: Il file META6
translations_gpt: Il file META6
---

{% include menu.html %}

Un solo file descrive una distribuzione. Il suo nome è `META6.json`, e sta nella directory principale. È un semplice file JSON. Dice agli strumenti il nome e la versione della distribuzione. Dice anche cosa fornisce la distribuzione e da cosa dipende:

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

Le due chiavi più importanti sono `provides` e `depends`. `provides` collega ogni nome di modulo al suo file. Il codice del modulo è in questo file. `depends` elenca le altre distribuzioni che servono a questa.

Il file sta nella directory principale. Ecco la struttura standard:

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

Il codice del modulo è sotto `lib/`. Il percorso delle directory corrisponde alle parti del nome. Nel nome, `::` separa le parti. Per esempio, il modulo `Maths::Simple` è in `lib/Maths/Simple.rakumod`. I test sono sotto `t/`. Ti servono questa struttura e un `META6.json` corretto. Allora gli strumenti possono compilare, testare e installare la distribuzione.

{% include nav.html %}
