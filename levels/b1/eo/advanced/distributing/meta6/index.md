---
title: La dosiero META6
translations_gpt:
---

{% include menu.html %}

Unu sola dosiero en la supra dosierujo priskribas distribuon: `META6.json`. Ĝi estas simpla JSON. Ĝi diras al la iloj la nomon kaj version de la distribuo. Ĝi ankaŭ diras, kion la distribuo provizas kaj de kio ĝi dependas:

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

La du plej gravaj ŝlosiloj estas `provides` kaj `depends`. `provides` ligas ĉiun modulan nomon al la dosiero, kiu enhavas ĝian kodon. `depends` listigas la aliajn distribuojn, kiujn ĉi tiu bezonas.

La dosiero estas ĉe la supro de norma dosieruja aranĝo:

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

La modula kodo loĝas sub `lib/`. La dosieruja vojo kongruas kun la partoj de la nomo inter la `::`. Ekzemple, `Maths::Simple` iras en `lib/Maths/Simple.rakumod`. Testoj loĝas sub `t/`. Kun ĉi tiu strukturo kaj ĝusta `META6.json`, la iloj povas konstrui, testi kaj instali ĝin.

{% include nav.html %}
