---
title: Die Datenstruktur dumpen
---

{% include menu.html %}

## Aufgabe

Hier ist eine verschachtelte Datenstruktur. Sie hat Daten in anderen Daten:

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');
```

Mache zwei Dinge damit:

1. Gib `@data` mit `dd` aus, in einer Form für Programmierer.
2. Gib dieselbe Form als String aus. Setze den Text `Structure: ` davor.

## Beispiel

Das Programm gibt zwei Zeilen aus. Sie sind sehr ähnlich:

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
