---
title: 'Solution: Das Modul-Layout'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Layout

```
Greet-Simple/
├── META6.json
├── README.md
├── lib/
│   └── Greet/
│       └── Simple.rakumod
└── t/
    └── 01-basic.rakutest
```

## Kommentare

1. Die `META6.json` ist ganz oben. Der Quellcode des Moduls kommt unter `lib/`. Sein Verzeichnispfad passt zu den Teilen des Namens. Im Namen trennt `::` diese Teile.

1. Die Tests sind in `t/`. Benutze dieses Layout. Dann funktionieren `zef test .` und `zef install .` im obersten Verzeichnis.

{% include nav.html %}
