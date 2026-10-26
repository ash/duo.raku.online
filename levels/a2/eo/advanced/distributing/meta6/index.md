---
title: La dosiero META6
translations_gpt:
---

{% include menu.html %}

Unu dosiero priskribas distribuon. Ĝia nomo estas `META6.json`, kaj ĝi estas en la supra dosierujo. Ĝi estas simpla JSON-dosiero. Ĝi diras al la iloj la nomon kaj la version de la distribuo. Ĝi ankaŭ diras, kion la distribuo provizas kaj de kio ĝi dependas:

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

La du plej gravaj ŝlosiloj estas `provides` kaj `depends`. `provides` ligas ĉiun modulan nomon al ĝia dosiero. La kodo de la modulo estas en ĉi tiu dosiero. `depends` listigas la aliajn distribuojn, kiujn ĉi tiu bezonas.

La dosiero estas en la supra dosierujo. Jen la norma aranĝo:

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

La kodo de la modulo estas sub `lib/`. La dosieruja vojo kongruas kun la partoj de la nomo. En la nomo, `::` apartigas la partojn. Ekzemple, la modulo `Maths::Simple` estas en `lib/Maths/Simple.rakumod`. La testoj estas sub `t/`. Vi bezonas ĉi tiun strukturon kaj ĝustan `META6.json`. Tiam la iloj povas konstrui, testi kaj instali la distribuon.

{% include nav.html %}
