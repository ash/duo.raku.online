---
title: 'Solution: Eine META6-Datei'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

`META6.json`:

```json
{
    "name": "Greet::Simple",
    "version": "0.0.1",
    "description": "A simple greeting module",
    "authors": [ "Your Name" ],
    "license": "Artistic-2.0",
    "depends": [ "JSON::Fast" ],
    "provides": {
        "Greet::Simple": "lib/Greet/Simple.rakumod"
    }
}
```

🦋 Du findest den Quellcode in der Datei [META6.json](https://github.com/ash/raku-course/blob/master/exercises/advanced/distributing/a-meta6-file/META6.json).

## Kommentare

1. `provides` verbindet den Modulnamen mit der Datei, die seinen Code enthält. Der Verzeichnispfad passt zu den Teilen des Namens zwischen den `::`.

1. `depends` listet die anderen Distributionen auf, die diese braucht. Hier gibt es nur einen Eintrag, `"JSON::Fast"`. Wenn jemand `Greet::Simple` installiert, holen die Werkzeuge zuerst `JSON::Fast`. Ein leeres Array würde bedeuten, dass es keine Abhängigkeiten gibt.

{% include nav.html %}
