---
title: 'Lösung: Zählen Sie die Zeichen'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
spurt 'data.txt', 'Raku';

say slurp('data.txt').chars;
```

🦋 Du findest den Quellcode in der Datei [count-characters.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/count-characters.raku).

## Ausgabe

```
4
```

## Kommentare

1. `spurt` schreibt die Zeichenkette `Raku` in die Datei.

1. `slurp` liest die Datei als Zeichenkette. `.chars` zählt die Zeichen darin. Es sind vier.

1. Sehen Sie sich die Datei an. Sie sehen nur diese vier Zeichen. Am Ende steht kein Zeilenumbruch.

{% include nav.html %}
