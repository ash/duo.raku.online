---
title: 'Solution: Das Modul-Layout'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Die `META6.json` liegt ganz oben. Der Modulquellcode kommt unter `lib/`. Sein Verzeichnispfad passt zu den Teilen des Namens zwischen den `::`.

1. Die Tests liegen unter `t/`. Mit diesem Layout funktionieren `zef test .` und `zef install .` im obersten Verzeichnis.

{% include nav.html %}
