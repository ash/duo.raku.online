---
title: Die META6-Datei
---

{% include menu.html %}

Eine einzige Datei im obersten Verzeichnis beschreibt eine Distribution: `META6.json`. Sie enthält einfaches JSON. Sie teilt den Werkzeugen den Namen und die Version der Distribution mit. Sie sagt auch, was die Distribution bereitstellt und wovon sie abhängt:

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

Die zwei wichtigsten Schlüssel sind `provides` und `depends`. `provides` verbindet jeden Modulnamen mit der Datei, die seinen Code enthält. `depends` listet die anderen Distributionen auf, die diese braucht.

Die Datei liegt ganz oben in einem Standard-Verzeichnislayout:

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

Der Modulcode liegt unter `lib/`. Der Verzeichnispfad passt zu den Teilen des Namens zwischen den `::`. Zum Beispiel kommt `Maths::Simple` in die Datei `lib/Maths/Simple.rakumod`. Tests liegen unter `t/`. Mit dieser Struktur und einer korrekten `META6.json` können die Werkzeuge die Distribution bauen, testen und installieren.

{% include nav.html %}
