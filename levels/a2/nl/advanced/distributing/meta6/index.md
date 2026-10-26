---
title: Het META6-bestand
translations_gpt:
---

{% include menu.html %}

Eén bestand beschrijft een distributie. Het heet `META6.json` en het staat in de hoofdmap. Het is een eenvoudig JSON-bestand. Het vertelt de gereedschappen de naam en de versie van de distributie. Het vertelt ook wat de distributie levert en waar ze van afhangt:

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

De twee belangrijkste sleutels zijn `provides` en `depends`. `provides` koppelt elke modulenaam aan zijn bestand. De code van de module staat in dit bestand. `depends` noemt de andere distributies die deze distributie nodig heeft.

Het bestand staat in de hoofdmap. Hier is de standaardindeling:

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

De code van de module staat onder `lib/`. Het pad van de map komt overeen met de delen van de naam. In de naam scheidt `::` de delen. De module `Maths::Simple` staat bijvoorbeeld in `lib/Maths/Simple.rakumod`. De tests staan onder `t/`. Je hebt deze structuur en een correct `META6.json` nodig. Dan kunnen de gereedschappen de distributie bouwen, testen en installeren.

{% include nav.html %}
