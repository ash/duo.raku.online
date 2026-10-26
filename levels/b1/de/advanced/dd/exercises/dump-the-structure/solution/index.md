---
title: 'Solution: Die Datenstruktur dumpen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung für die Aufgabe.

## Code

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');

dd @data;
say "Structure: { @data.raku }";
```

🦋 Du findest den Quellcode in der Datei [dump-the-structure.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-the-structure.raku).

## Ausgabe

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Kommentare

1. `dd @data` gibt den Inhalt des Arrays in einer codeähnlichen Form aus. Diese Ausgabe geht auf den Standardfehlerstream.

1. Die Methode `.raku` gibt dieselbe Darstellung als String zurück. Dieser String wird dann in eine normale Nachricht eingefügt, mit Code in geschweiften Klammern. Dann gibt `say` die Nachricht auf der Standardausgabe aus.

1. Die beiden Zeilen sehen hier gleich aus, aber sie gehen durch verschiedene Ausgabeströme. Die erste kommt von `dd` und geht auf die Standardfehlerausgabe. Die zweite kommt von `say` und geht auf die Standardausgabe. Vergleiche Folgendes:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
