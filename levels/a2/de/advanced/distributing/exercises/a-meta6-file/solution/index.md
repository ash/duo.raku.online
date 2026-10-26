---
title: 'Solution: Eine META6-Datei'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `provides` verbindet den Namen des Moduls mit seiner Datei. In dieser Datei ist der Code des Moduls. Im Namen trennt `::` die Teile. Der Verzeichnispfad passt zu diesen Teilen.

1. `depends` listet die anderen Distributionen auf, die diese Distribution braucht. Hier gibt es nur einen Eintrag: `"JSON::Fast"`. Vielleicht installiert jemand `Greet::Simple`. Dann installieren die Werkzeuge zuerst `JSON::Fast`. Ein leeres Array bedeutet: Die Distribution braucht keine anderen Distributionen.

{% include nav.html %}
