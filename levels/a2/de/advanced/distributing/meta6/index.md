---
title: Die META6-Datei
---

{% include menu.html %}

Eine Datei beschreibt eine Distribution. Sie heißt `META6.json` und ist im obersten Verzeichnis. Sie ist eine einfache JSON-Datei. Sie sagt den Werkzeugen den Namen und die Version der Distribution. Sie sagt auch, was die Distribution liefert und wovon sie abhängt:

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

Die zwei wichtigsten Schlüssel sind `provides` und `depends`. `provides` verbindet jeden Modulnamen mit seiner Datei. In dieser Datei ist der Code des Moduls. `depends` listet die anderen Distributionen auf, die diese braucht.

Die Datei ist im obersten Verzeichnis. Hier ist das Standard-Layout:

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

Der Code des Moduls ist unter `lib/`. Der Verzeichnispfad passt zu den Teilen des Namens. Im Namen trennt `::` die Teile. Zum Beispiel ist das Modul `Maths::Simple` in `lib/Maths/Simple.rakumod`. Die Tests sind unter `t/`. Du brauchst diese Struktur und eine korrekte `META6.json`. Dann können die Werkzeuge die Distribution bauen, testen und installieren.

{% include nav.html %}
