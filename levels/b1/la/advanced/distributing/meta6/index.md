---
title: Fasciculus META6
translations_gpt:
---

{% include menu.html %}

Unum archivum in summo directorio distributionem describit: `META6.json`. Est JSON simplex. Instrumentis nomen et versionem distributionis indicat. Etiam dicit quid distributio praebeat et a quibus pendeat:

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

Duae claves maximi momenti sunt `provides` et `depends`. `provides` quodque nomen moduli cum archivo coniungit quod codicem eius continet. `depends` alias distributiones enumerat quas haec requirit.

Archivum in summo dispositionis normalis directorii est:

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

Codex moduli sub `lib/` habitat. Via directorii partibus nominis inter `::` respondet. Exempli gratia, `Maths::Simple` in `lib/Maths/Simple.rakumod` collocatur. Probationes sub `t/` habitant. Hac structura et `META6.json` recto instrumenta eam aedificare, probare et installare possunt.

{% include nav.html %}
