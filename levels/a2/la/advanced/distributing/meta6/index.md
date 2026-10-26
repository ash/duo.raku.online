---
title: Fasciculus META6
translations_gpt:
---

{% include menu.html %}

Unum archivum distributionem describit. Nomen eius est `META6.json`, et in summo directorio est. Est simplex archivum JSON. Instrumentis nomen et versionem distributionis dicit. Etiam dicit quid distributio praebeat et a quibus pendeat:

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

Duae claves maximi momenti sunt `provides` et `depends`. `provides` quodque nomen moduli cum archivo eius coniungit. Codex moduli in hoc archivo est. `depends` alias distributiones enumerat quas haec requirit.

Archivum in summo directorio est. Ecce dispositio normalis:

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

Codex moduli sub `lib/` est. Via directorii partibus nominis respondet. In nomine `::` partes separat. Exempli gratia, modulus `Maths::Simple` in `lib/Maths/Simple.rakumod` est. Probationes sub `t/` sunt. Hanc structuram et `META6.json` rectum requiris. Tum instrumenta distributionem aedificare, probare et installare possunt.

{% include nav.html %}
