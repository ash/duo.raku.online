---
title: 'Solution: Die Datenstruktur dumpen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `dd @data` gibt aus, was im Array ist. Es zeigt den Inhalt in einer Form wie Code. Diese Ausgabe geht auf den Standardfehlerstream.

1. Die Methode `.raku` gibt dieselbe Form als String zurück. Das Programm setzt diesen String in eine normale Nachricht. Dafür führt es Code im String aus. Dann gibt `say` die Nachricht auf der Standardausgabe aus.

1. Hier sehen die beiden Zeilen gleich aus. Aber sie gehen in verschiedene Ausgabeströme. Die erste Zeile kommt von `dd` und geht auf die Standardfehlerausgabe. Die zweite Zeile kommt von `say` und geht auf die Standardausgabe. Vergleiche diese zwei Programmläufe:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
