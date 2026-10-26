---
title: 'Solution: Ein Roh-String'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
say Q{$x and \n};
```

🦋 Du findest den Quellcode in der Datei [raw-string.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/raw-string.raku).

## Ausgabe

```
$x and \n
```

## Kommentare

1. `Q` ist die wörtlichste Quoting-Form. Sie interpoliert nichts. Sie verarbeitet auch keine Escape-Sequenzen.

1. Deshalb bleibt `$x` einfach Text. Und `\n` bleibt zwei Zeichen: ein Backslash und ein `n`.

{% include nav.html %}
