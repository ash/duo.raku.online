---
title: Het META6-bestand
translations_gpt:
---

{% include menu.html %}

Een enkel bestand in de hoofdmap beschrijft een distributie: `META6.json`. Het is gewone JSON. Het vertelt de gereedschappen de naam en de versie van de distributie. Het zegt ook wat de distributie levert en waar ze van afhangt:

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

De twee belangrijkste sleutels zijn `provides` en `depends`. `provides` koppelt elke modulenaam aan het bestand waarin de code staat. `depends` noemt de andere distributies die deze nodig heeft.

Het bestand staat bovenaan in een standaardindeling van mappen:

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

De modulecode staat onder `lib/`. Het pad van de map komt overeen met de delen van de naam tussen de `::`. `Maths::Simple` komt bijvoorbeeld in `lib/Maths/Simple.rakumod`. Tests staan onder `t/`. Met deze structuur en een correct `META6.json` kunnen de gereedschappen de distributie bouwen, testen en installeren.

{% include nav.html %}
